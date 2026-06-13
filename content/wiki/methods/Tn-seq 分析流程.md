# Tn-seq 分析流程

> [!info] 概述
> 本文档详细描述 [[Tn-seq]] 数据的生物信息学分析流程，包括数据预处理、比对、定量和统计分析。

---

## 1. 分析流程概述

```
原始测序数据 (FASTQ)
        ↓
质量控制 (FastQC, Trimmomatic)
        ↓
比对到参考基因组 (Bowtie2, BWA)
        ↓
插入位点鉴定 (自定义脚本)
        ↓
基因水平定量 (每个基因的插入数)
        ↓
标准化 (TMM, DESeq2)
        ↓
适应度计算 (FC = log2[实验/对照])
        ↓
统计检验 (负二项分布, FWER/FDR)
        ↓
功能注释 (KEGG, COG, GO)
        ↓
通路富集分析 (clusterProfiler)
```

---

## 2. 数据预处理

### 2.1 质量控制

**工具**: [[FastQC]]

**步骤**:
1. 运行 FastQC:
   ```bash
   fastqc -o fastqc_results/ sample_R1.fastq.gz
   ```

2. 检查质量指标:
   - 每个位置的质量分数
   - GC含量分布
   - 序列重复水平
   - 接头污染

**质量标准**:
| 指标 | 标准 | 处理 |
|-----|------|------|
| Q20 > 90% | 通过 | 继续分析 |
| Q20 < 90% | 警告 | 考虑修剪 |
| Q30 > 80% | 通过 | 继续分析 |
| Q30 < 80% | 警告 | 考虑修剪 |

### 2.2 序列修剪

**工具**: [[Trimmomatic]]

**步骤**:
1. 去除接头:
   ```bash
   trimmomatic SE -phred33 input.fastq output.fastq \
     ILLUMINACLIP:adapters.fa:2:30:10
   ```

2. 质量修剪:
   ```bash
   trimmomatic SE -phred33 input.fastq output.fastq \
     LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
   ```

**参数说明**:
| 参数 | 含义 | 建议值 |
|-----|------|-------|
| LEADING | 去除5'端低质量碱基 | 3 |
| TRAILING | 去除3'端低质量碱基 | 3 |
| SLIDINGWINDOW | 滑动窗口修剪 | 4:15 |
| MINLEN | 最小读长 | 36 |

---

## 3. 序列比对

### 3.1 参考基因组准备

**工具**: [[Bowtie2]]

**步骤**:
1. 下载参考基因组:
   ```bash
   wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/xxx/GCF_xxx_genomic.fna.gz
   ```

2. 建立索引:
   ```bash
   bowtie2-build reference.fasta reference_index
   ```

### 3.2 比对

**步骤**:
1. 运行比对:
   ```bash
   bowtie2 -x reference_index -U sample.fastq -S sample.sam \
     --very-sensitive --no-unal
   ```

2. 转换格式:
   ```bash
   samtools view -bS sample.sam | samtools sort -o sample_sorted.bam
   samtools index sample_sorted.bam
   ```

**参数说明**:
| 参数 | 含义 | 建议值 |
|-----|------|-------|
| --very-sensitive | 高灵敏度模式 | 推荐 |
| --no-unal | 不输出未比对 reads | 推荐 |
| -q | 仅输出比对 reads | 可选 |

### 3.3 比对质量控制

**工具**: [[Samtools]], [[Picard]]

**检测项目**:
| 指标 | 标准 | 工具 |
|-----|------|------|
| 比对率 | >80% | samtools flagstat |
| 唯一比对率 | >70% | samtools flagstat |
| 覆盖均匀性 | 均匀 | samtools depth |
| PCR重复率 | <20% | Picard MarkDuplicates |

---

## 4. 插入位点鉴定

### 4.1 方法

**原理**: 识别转座子插入的位置

**步骤**:
1. 提取比对到转座子序列的 reads
2. 定位插入位点
3. 过滤低质量插入位点

**自定义脚本示例**:
```python
#!/usr/bin/env python3
import pysam
from collections import Counter

def identify_insertion_sites(bam_file, min_reads=5):
    """鉴定插入位点"""
    samfile = pysam.AlignmentFile(bam_file, "rb")
    insertions = Counter()
    
    for read in samfile.fetch():
        if not read.is_unmapped:
            # 提取插入位点
            pos = read.reference_start
            insertions[pos] += 1
    
    # 过滤低质量位点
    filtered = {pos: count for pos, count in insertions.items() 
                if count >= min_reads}
    
    return filtered

if __name__ == "__main__":
    sites = identify_insertion_sites("sample.bam")
    for pos, count in sorted(sites.items()):
        print(f"{pos}\t{count}")
```

### 4.2 质量控制

| 指标 | 标准 | 意义 |
|-----|------|------|
| 插入位点数 | >100,000 | 饱和文库 |
| 基因覆盖度 | >90% | 全基因组覆盖 |
| 插入密度 | 每基因 5-10 个 | 充分覆盖 |

---

## 5. 基因水平定量

### 5.1 方法

**原理**: 统计每个基因内的插入 reads 数

**步骤**:
1. 获取基因注释文件 (GFF/GTF)
2. 统计每个基因内的 reads 数
3. 计算每个基因的插入 reads 总数

**自定义脚本示例**:
```python
#!/usr/bin/env python3
import pysam
from collections import defaultdict

def quantify_genes(bam_file, gff_file):
    """基因水平定量"""
    samfile = pysam.AlignmentFile(bam_file, "rb")
    gene_counts = defaultdict(int)
    
    # 读取基因注释
    genes = parse_gff(gff_file)
    
    # 统计每个基因的 reads
    for gene in genes:
        for read in samfile.fetch(gene['chr'], gene['start'], gene['end']):
            if not read.is_unmapped:
                gene_counts[gene['name']] += 1
    
    return gene_counts

def parse_gff(gff_file):
    """解析 GFF 文件"""
    genes = []
    with open(gff_file) as f:
        for line in f:
            if not line.startswith('#'):
                fields = line.strip().split('\t')
                if fields[2] == 'gene':
                    genes.append({
                        'chr': fields[0],
                        'start': int(fields[3]),
                        'end': int(fields[4]),
                        'name': fields[8].split('ID=')[1].split(';')[0]
                    })
    return genes
```

### 5.2 输出格式

| 基因 | 插入 reads | 基因长度 | RPKM |
|-----|-----------|---------|------|
| geneA | 150 | 1000 | 15.0 |
| geneB | 50 | 500 | 10.0 |
| geneC | 0 | 800 | 0.0 |

---

## 6. 标准化

### 6.1 标准化方法

| 方法 | 原理 | 优点 | 缺点 |
|-----|------|------|------|
| **TMM** | 加权修剪均值 | 考虑文库大小 | 假设多数基因不变 |
| **DESeq2** | 负二项分布 | 考虑离散度 | 计算复杂 |
| **RPKM/FPKM** | 考虑长度和测序深度 | 简单 | 不考虑组成偏差 |

### 6.2 TMM 标准化

**原理**: 假设大多数基因的丰度不变，计算标准化因子

**步骤**:
1. 计算每个基因的 log2 比值
2. 选择参考样本
3. 计算加权修剪均值
4. 计算标准化因子

**公式**:
```
标准化因子 = (文库大小 × TMM因子) / 10^6
```

### 6.3 DESeq2 标准化

**原理**: 基于负二项分布的标准化

**步骤**:
1. 计算几何均值
2. 计算大小因子
3. 标准化计数

**R 代码**:
```r
library(DESeq2)

# 创建 DESeq 数据集
dds <- DESeqDataSetFromMatrix(countData = counts,
                               colData = coldata,
                               design = ~ condition)

# 标准化
dds <- estimateSizeFactors(dds)
normalized_counts <- counts(dds, normalized = TRUE)
```

---

## 7. 适应度计算

### 7.1 Fold Change 计算

**公式**:
```
FC = log2(实验组丰度 / 对照组丰度)
```

**示例**:
| 基因 | 对照组 | 实验组 | FC |
|-----|-------|-------|-----|
| geneA | 100 | 50 | -1.0 |
| geneB | 100 | 100 | 0.0 |
| geneC | 100 | 200 | 1.0 |

### 7.2 解释

| FC 值 | 含义 | 解释 |
|-------|------|------|
| FC < 0 | 适应度降低 | 基因**必需**或**适应** |
| FC ≈ 0 | 适应度不变 | 基因非必需 |
| FC > 0 | 适应度增加 | 基因**不适应** |

---

## 8. 统计检验

### 8.1 统计方法

| 方法 | 原理 | 适用场景 | 软件 |
|-----|------|---------|------|
| **负二项分布** | 考虑生物学变异 | 多重复 | DESeq2, edgeR |
| **t-检验** | 正态分布假设 | 2组比较 | scipy.stats |
| **Gumbel** | 极值分布 | 必需基因鉴定 | TRANSIT |
| **Hidden Markov** | 连续区域 | 基因组区域 | TRANSIT |

### 8.2 负二项分布检验

**R 代码** (DESeq2):
```r
# 差异分析
dds <- DESeq(dds)
res <- results(dds)

# 查看结果
summary(res)
```

**Python 代码** (scipy):
```python
from scipy import stats

# t-检验
t_stat, p_value = stats.ttest_ind(group1, group2)
```

### 8.3 多重检验校正

| 方法 | 控制目标 | 严格度 | 适用场景 |
|-----|---------|-------|---------|
| **FDR** | 错误发现率 | 较宽松 | 探索性分析 |
| **FWER** | 家族错误率 | 较严格 | 验证性分析 |
| **Bonferroni** | FWER | 最严格 | 严格控制 |
| **Benjamini-Hochberg** | FDR | 常用 | 一般使用 |

**Python 代码**:
```python
from statsmodels.stats.multitest import multipletests

# Benjamini-Hochberg 校正
reject, q_values, _, _ = multipletests(p_values, method='fdr_bh')
```

---

## 9. 功能注释

### 9.1 基因本体 (GO)

**工具**: [[goatools]]

**步骤**:
1. 获取 GO 注释
2. 富集分析
3. 可视化

### 9.2 KEGG 通路

**工具**: [[clusterProfiler]]

**R 代码**:
```r
library(clusterProfiler)

# KEGG 富集
ekk <- enrichKEGG(gene = gene_list,
                   organism = 'stm',
                   pvalueCutoff = 0.05)

# 可视化
dotplot(ekk)
```

### 9.3 COG 分类

**工具**: [[eggNOG-mapper]]

**步骤**:
1. 运行 eggNOG-mapper
2. 提取 COG 分类
3. 统计分析

---

## 10. 结果可视化

### 10.1 火山图

**工具**: [[matplotlib]], [[ggplot2]]

**Python 代码**:
```python
import matplotlib.pyplot as plt
import numpy as np

# 数据
fc = results['log2FoldChange']
pval = -np.log10(results['pvalue'])

# 绘图
plt.scatter(fc, pval, c='grey', alpha=0.5)
plt.xlabel('Log2 Fold Change')
plt.ylabel('-Log10 P-value')
plt.title('Volcano Plot')
plt.axvline(x=0, color='black', linestyle='--')
plt.axhline(y=-np.log10(0.05), color='red', linestyle='--')
plt.show()
```

### 10.2 热图

**工具**: [[seaborn]], [[pheatmap]]

**Python 代码**:
```python
import seaborn as sns
import pandas as pd

# 数据
data = pd.DataFrame(gene_counts)

# 绘图
sns.clustermap(data, cmap='RdBu_r', center=0)
plt.title('Heatmap of Gene Fitness')
plt.show()
```

### 10.3 通路富集图

**工具**: [[clusterProfiler]]

**R 代码**:
```r
# 条形图
barplot(ekk, showCategory=20)

# 气泡图
dotplot(ekk, showCategory=20)
```

---

## 11. 常用软件

### 11.1 软件列表

| 软件 | 功能 | 安装 |
|-----|------|------|
| [[FastQC]] | 质量控制 | conda install -c bioconda fastqc |
| [[Trimmomatic]] | 序列修剪 | conda install -c bioconda trimmomatic |
| [[Bowtie2]] | 序列比对 | conda install -c bioconda bowtie2 |
| [[Samtools]] | BAM处理 | conda install -c bioconda samtools |
| [[TRANSIT]] | 全流程分析 | pip install tnseq-transit |
| [[DESeq2]] | 差异分析 | BiocManager::install("DESeq2") |
| [[clusterProfiler]] | 通路富集 | BiocManager::install("clusterProfiler") |

### 11.2 环境配置

```bash
# 创建 conda 环境
conda create -n tnseq python=3.8
conda activate tnseq

# 安装软件
conda install -c bioconda fastqc trimmomatic bowtie2 samtools
pip install tnseq-transit pysam pandas numpy matplotlib seaborn

# R 包
Rscript -e 'BiocManager::install(c("DESeq2", "clusterProfiler"))'
```

---

## 12. 相关笔记

### 12.1 概念笔记
- [[Tn-seq]] — Tn-seq 技术概述
- [[Essential Gene]] — 必需基因
- [[Fitness Analysis]] — 适应度分析

### 12.2 方法笔记
- [[Tn-seq 实验流程]] — 实验操作步骤
- [[TRANSIT 使用指南]] — 软件使用
- [[R 语言分析]] — R 语言分析

### 12.3 项目笔记
- [[041-host-bvspoke-R51反应]] — R51 菌株分析
- [[042-巨噬细胞-沙门氏菌-互作]] — 巨噬细胞感染

---

## 13. 参考文献

1. van Opijnen T, et al. (2009). Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms. *Nat Methods*.
2. DeJesus MA, et al. (2013). TRANSIT: A software tool for essentiality analysis. *Bioinformatics*.
3. Love MI, et al. (2014). Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. *Genome Biol*.

---

*创建时间: 2026-06-08*
*分类: [[生物信息学]] > [[功能基因组学]] > [[Tn-seq]]*
*标签: #Tn-seq #生物信息学 #分析流程 #功能基因组学*
