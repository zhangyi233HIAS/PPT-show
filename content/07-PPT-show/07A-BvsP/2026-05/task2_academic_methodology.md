# Task 2: Tn-seq 分析方法学术规范说明

## 1. 核心术语定义与解释

### 1.1 FC (Fold Change, 倍数变化)

#### 定义
FC 是衡量两组数据之间差异程度的指标，在 Tn-seq 中特指**处理组与对照组之间转座子插入密度的比值**。

#### 计算公式
在 TSAS 2.0 中，FC 的计算基于**插入密度 (Insertion Density)**：

```
Density = (Unique Hits / Gene Length) × Library Size Correction

Log2FC = log2(Density_Treatment / Density_Control)
```

其中：
- **Unique Hits**：基因内独特插入位点数（非总 reads 数）
- **Gene Length**：基因长度（bp）
- **Library Size Correction**：文库大小校正因子

#### 生物学解读
| Log2FC 值 | 生物学含义 |
|-----------|-----------|
| < -2 | 处理组插入显著减少，基因可能为必需 |
| -2 ~ -1 | 处理组插入轻度减少，基因可能有条件必需性 |
| -1 ~ 1 | 无显著差异 |
| 1 ~ 2 | 处理组插入轻度增加 |
| > 2 | 处理组插入显著增加，基因可能提供适应性优势 |

#### 在 Tn-seq 中的特殊考虑
- **使用插入位点数而非 reads 数**：插入位点数更稳健，不受 PCR 扩增偏倚影响
- **基因长度和 TA 位点校正**：在比值中被约掉，FC 纯粹反映插入频率变化
- **Mariner 转座子**：靶向 TA 二核苷酸序列，需使用 `-seq TA` 参数校正

#### 文献引用
> Burger BT, et al. (2017). "Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data." *BMC Genomics*. 18:205.

---

### 1.2 P 值 (P-value)

#### 定义
P 值是在零假设（null hypothesis）为真的情况下，观察到当前样本数据或更极端数据的概率。

#### 在 Tn-seq 中的两种 P 值类型

##### 1.2.1 必需性 P 值 (Essentiality P-value)
- **来源**：TSAS 单样本分析 (`-a 1`)
- **零假设**：基因的插入密度符合全基因组预期（非必需）
- **检验方法**：二项分布检验 (Binomial test)
- **公式**：
  ```
  P = P(X ≤ observed_hits | n = available_sites, p = genome_wide_rate)
  ```
- **校正方法**：
  - **FDR (BH 校正)**：控制假发现率
  - **FWER (Bonferroni 校正)**：控制家族 wise 错误率（更严格）

##### 1.2.2 条件比较 P 值 (Conditional Comparison P-value)
- **来源**：TSAS 双样本分析 (`-a 2`)
- **零假设**：基因在处理组和对照组之间插入密度无差异
- **检验方法**：
  - **Proportions Test (比例检验)**：比较插入位点数比例
  - **Fisher's Exact Test (Fisher 精确检验)**：构建 2×2 列联表

#### **关键问题：n=1 时 P 值无意义**

##### 为什么无意义？
当每个条件只有 n=1 个样本时：
1. **无法估算组内方差**：不知道生物学重复之间的变异有多大
2. **无法区分真实差异与随机噪音**：观察到的差异可能仅来自技术误差或随机波动
3. **统计检验缺乏关键自由度**：t 检验等方法需要 n≥2 才能计算

##### 数学解释
```
t = (mean_difference) / (standard_error)

standard_error = sqrt(variance_within / n)

当 n=1 时，variance_within 无法计算，t 统计量无定义
```

##### 实际影响
- **Fisher 检验**：虽然可以计算，但只能比较"基因A插入数 vs 其他基因插入数"，无法评估生物学变异
- **结果不可重复**：如果重复实验，可能得到完全不同的结果
- **文献共识**：n=1 时的 p 值不被接受为统计显著性证据

#### 文献引用
> DeJesus MA, et al. (2013). "Statistical analysis of genetic interactions in Tn-seq data." *Nucleic Acids Research*. 41(11):e114.

---

### 1.3 FWER (Family-Wise Error Rate)

#### 定义
FWER 是指在多重检验中，**至少出现一个假阳性**的概率。

#### 与 FDR 的区别
| 指标 | 定义 | 适用场景 | 严格程度 |
|------|------|----------|----------|
| **FWER** | P(至少1个假阳性) | 验证性研究，需严格控制假阳性 | 更严格 |
| **FDR** | E(假阳性比例) | 探索性分析，允许一定假阳性 | 较宽松 |

#### Bonferroni 校正
```
FWER = min(1, m × p)

其中 m = 检验次数（基因数），p = 原始 p 值
```

#### 在 Tn-seq 中的应用
- **阈值选择**：FWER ≤ 0.01（高置信度必需基因）
- **两列 FWER**：
  - **第9列 FWER (Essential)**：用于定义必需基因（插入显著减少）
  - **第12列 FWER (Improved fitness)**：用于定义适应性增强基因（插入显著增加）

#### 文献引用
> Bonferroni CE (1936). "Teoria statistica delle classi e calcolo delle probabilità." *Pubblicazioni del R Istituto Superiore di Scienze Economiche e Commerciali di Firenze*. 8:3-62.

---

### 1.4 Hit (插入位点数)

#### 定义
在 Tn-seq 中，"hit" 指**基因内独特转座子插入位点的数量**，而非总 reads 数。

#### 与 Reads 的区别
| 指标                          | 定义                | 优点            | 缺点          |
| --------------------------- | ----------------- | ------------- | ----------- |
| **Hit (Unique Insertions)** | 基因内独立插入位点数        | 不受 PCR 扩增偏倚影响 | 可能低估高插入密度基因 |
| **Reads**                   | 比对到基因的测序 reads 总数 | 信息量大，统计效力高    | 易受 PCR 偏倚影响 |

#### 生物学意义
- **Hit = 0**：基因内无转座子插入，基因为**必需基因**
- **Hit > 0**：基因可被转座子打断，基因为非必需
- **Hit 值范围**：0 到数千（取决于文库饱和度）

#### 在必需基因判定中的应用
```
必需基因定义：FWER(Essential) ≤ 0.01 OR Hit = 0

解释：
- FWER ≤ 0.01：统计显著的必需基因（有插入但显著低于预期）
- Hit = 0：无插入的必需基因（无法被打断）
```

#### 文献引用
> van Opijnen T, et al. (2009). "Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms." *Nature Methods*. 6(10):767-772.

---

### 1.5 TSAS (Tn-seq Analysis Software)

#### 软件概述
TSAS 是专门用于 Tn-seq 数据分析的开源软件，由 Burger 等人于 2017 年开发。

#### 核心功能
1. **单样本分析 (`-a 1`)**：计算每个样本内部的基因必需性
2. **双样本分析 (`-a 2`)**：比较处理组与对照组的差异

#### 关键参数
| 参数     | 含义                        | 默认值   | 推荐值              |
| ------ | ------------------------- | ----- | ---------------- |
| `-a`   | 分析类型 (1=单样本, 2=双样本)       | 1     | 根据需求选择           |
| `-seq` | 转座子靶序列 (如 TA for Mariner) | 空     | TA (for Mariner) |
| `-cl`  | 裁剪基因首尾百分比                 | 0     | 5-10             |
| `-mh`  | 最小插入位点阈值                  | 1     | 1                |
| `-cap` | Capping 选项 (0-3)          | 1     | 1 或 3            |
| `-w`   | 加权选项 (0=否, 1=是)           | 0     | 1                |
| `-r`   | 结果格式 (long/short)         | short | long             |

#### Capping 选项详解
| 选项 | 含义 | 适用场景 |
|------|------|----------|
| 0 | 无 capping | 数据质量好，无明显偏倚 |
| 1 | 平均值 + 2 标准差 (默认) | 一般情况，去除极端值 |
| 2 | 平均值 | 中等偏倚 |
| 3 | 中位数 | 严重偏倚，更稳健 |

#### 加权选项
- **不加权 (`-w 0`)**：直接使用 reads 数
- **加权 (`-w 1`)**：`Weighted_reads = Total_reads × (Unique_hits / Average_unique_hits)`
  - 优点：减少高插入密度基因的权重，平衡 PCR 偏倚

#### 文献引用
> Burger BT, et al. (2017). "Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data." *BMC Genomics*. 18:205.

---

## 2. 实验设计与统计方法

### 2.1 实验设计类型

#### 2.1.1 单样本设计 (n=1)
- **描述**：每个条件只有1个测序样本
- **优点**：成本低，适合初步筛选
- **缺点**：无法估算生物学变异，p 值无统计学意义
- **适用分析**：单样本必需性分析 (TSAS `-a 1`)

#### 2.1.2 有重复设计 (n≥2)
- **描述**：每个条件有2个或更多独立生物学重复
- **优点**：可估算组内方差，p 值有统计学意义
- **缺点**：成本高，需要更多样本
- **适用分析**：双样本比较分析 (TSAS `-a 2`)，DESeq2, edgeR 等

### 2.2 生物学重复 vs 技术重复

| 类型 | 定义 | 作用 | 示例 |
|------|------|------|------|
| **生物学重复** | 独立处理的生物样本 | 估算生物学变异 | 不同小鼠、不同培养瓶 |
| **技术重复** | 同一样本的重复测量 | 估算技术误差 | 同一 DNA 库的多次测序 |

#### 关键区别
- **生物学重复**：反映真实的生物学差异，是统计推断的基础
- **技术重复**：只能评估技术一致性，不能替代生物学重复

### 2.3 当前设计的局限性

#### 问题描述
- **设计**：1个 LB 对照 + 6个组织样本，每个条件 n=1
- **样本混合**：相同组织的3个样本混合测序，相当于"平均化"生物学差异

#### 统计学后果
1. **无法估算组内方差**
2. **p 值无统计学意义**
3. **无法进行严格的假设检验**

#### 解决方案
采用**单样本分析 + 集合比较**的策略：
1. 对每个样本单独运行 TSAS 单样本分析 (`-a 1`)
2. 使用 FWER ≤ 0.01 定义每个条件的必需基因列表
3. 通过韦恩图等方法比较不同条件的必需基因集合

---

## 3. 分析流程标准化描述（适用于论文方法部分）

### 3.1 数据处理流程

```
1. 原始数据质控
   - 接头序列去除
   - 低质量 reads 过滤

2. 序列比对
   - 使用 Bowtie2 将 reads 比对到参考基因组
   - 统计比对率和唯一比对 reads

3. 基因水平定量
   - 统计每个基因的独特插入位点数 (Unique hits)
   - 计算标准化插入密度 (hits/bp)

4. 必需性分析 (TSAS 2.0)
   - 单样本分析：使用二项分布检验
   - 多重检验校正：Bonferroni (FWER) 和 BH (FDR)
   - 阈值：FWER ≤ 0.01

5. 条件比较 (如有重复)
   - 双样本分析：比例检验和 Fisher 精确检验
   - 效应量：Log2 Fold Change (插入位点数)
```

### 3.2 推荐的方法学描述（论文 Methods 部分）

#### 英文版本
> **Tn-seq Library Preparation and Sequencing**
> 
> Transposon mutagenesis was performed using the Mariner-based system as previously described [ref]. Briefly, the transposon library was grown under the specified conditions (LB medium or host tissues), and genomic DNA was extracted. The transposon insertion sites were amplified and sequenced on the Illumina platform.
> 
> **Data Processing and Analysis**
> 
> Raw sequencing reads were quality-filtered and adapter-trimmed. Clean reads were aligned to the reference genome using Bowtie2 [ref]. Gene-level insertion densities were calculated as the number of unique insertion sites per gene length.
> 
> **Essential Gene Identification**
> 
> Essential genes were identified using TSAS 2.0 [ref] with single-sample analysis mode (-a 1). The Mariner transposon target sequence (TA) was specified for bias correction (-seq TA). Gene boundaries were clipped by 10% at both ends (-cl 10) to exclude polar effects. A minimum hit threshold of 1 (-mh 1) was applied. Statistical significance was determined using binomial test with Bonferroni correction for multiple testing. Genes with FWER ≤ 0.01 were considered essential.
> 
> **Limitations**
> 
> Due to the single-replicate design (n=1 per condition), statistical comparisons between conditions were limited to descriptive analyses. P-values from two-sample comparisons were not used for statistical inference. Instead, essential gene lists were compared using set-based approaches (Venn diagrams) to identify condition-specific essential genes.

#### 中文版本
> **Tn-seq 文库制备与测序**
> 
> 使用 Mariner 转座子系统进行转座子诱变 [参考文献]。简言之，将转座子文库在指定条件下（LB 培养基或宿主组织）培养，提取基因组 DNA。扩增转座子插入位点并在 Illumina 平台上测序。
> 
> **数据处理与分析**
> 
> 原始测序 reads 经过质量过滤和接头去除。使用 Bowtie2 将 clean reads 比对到参考基因组 [参考文献]。基因水平的插入密度计算为每个基因的独特插入位点数除以基因长度。
> 
> **必需基因鉴定**
> 
> 使用 TSAS 2.0 [参考文献] 的单样本分析模式 (`-a 1`) 鉴定必需基因。指定 Mariner 转座子靶序列 (TA) 进行偏倚校正 (`-seq TA`)。基因边界两端裁剪 10% (`-cl 10`) 以排除极性效应。设置最小插入位点阈值为 1 (`-mh 1`)。使用二项分布检验进行统计显著性分析，并采用 Bonferroni 校正进行多重检验校正。FWER ≤ 0.01 的基因被视为必需基因。
> 
> **局限性**
> 
> 由于单重复设计（每个条件 n=1），条件间的统计比较仅限于描述性分析。双样本比较的 p 值不用于统计推断。相反，使用基于集合的方法（韦恩图）比较必需基因列表，以鉴定条件特异性必需基因。

---

## 4. 回应导师疑问的标准答案

### 4.1 关于 FC 计算
**问题**：FC 是怎么算的？用的哪个公式？

**回答**：
> 我们使用 TSAS 2.0 软件计算 FC，基于插入密度比值：
> 
> `Density = (Unique Hits / Gene Length) × Library Size Correction`
> `Log2FC = log2(Density_Treatment / Density_Control)`
> 
> 使用独特插入位点数而非 reads 数，因为插入位点数更稳健，不受 PCR 扩增偏倚影响。基因长度和 TA 位点数在比值中被约掉，FC 纯粹反映插入频率变化。

### 4.2 关于 P 值
**问题**：P 值有意义吗？为什么公司说没意义？

**回答**：
> 公司说得对。在我们的 n=1 设计中，**组间比较的 p 值确实没有统计学意义**。
> 
> 原因：p 值需要估算组内方差（生物学重复之间的变异），而我们每个条件只有1个样本，无法计算方差。
> 
> 但是，**单样本分析的 FWER 是有意义的**，因为它使用二项分布检验基因内插入是否显著低于全基因组预期，不需要生物学重复。

### 4.3 关于重复
**问题**：为什么没有生物学重复？数据还能用吗？

**回答**：
> 我们的设计是将3个生物学重复混合测序，相当于"平均化"生物学差异。这是为了节约测序成本。
> 
> **数据仍然有价值**，但需要改变分析策略：
> 1. 放弃组间比较的 p 值
> 2. 使用单样本分析定义每个条件的必需基因
> 3. 通过集合比较（韦恩图）鉴定条件特异性必需基因
> 
> 这是公认的、在没有重复情况下的标准探索性分析流程。

### 4.4 关于 TSAS 参数
**问题**：TSAS 参数怎么设置的？都是默认吗？

**回答**：
> 我们使用了以下参数：
> - `-a 1`：单样本分析模式
> - `-seq TA`：校正 Mariner 转座子的 TA 位点偏好性
> - `-cl 10`：裁剪基因首尾 10%，排除极性效应
> - `-mh 1`：最小插入位点阈值
> - `-cap 1`：使用平均值 + 2 标准差进行 capping，减少 PCR 偏倚
> - `-w 1`：启用加权，平衡高插入密度基因的权重
> 
> 这些参数是根据文献推荐和我们的数据特点选择的，不是全部使用默认值。

### 4.5 关于可重复性
**问题**：别人能复现你的分析吗？

**回答**：
> **可以**。我们使用的 TSAS 2.0 是开源软件（GitHub: https://github.com/srimam/TSAS），所有分析参数都有明确记录。
> 
> 我们已向公司索要完整的运行日志，并计划使用相同参数重新运行分析，确保结果可重复。

---

## 5. 参考文献

1. Burger BT, et al. (2017). Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data. *BMC Genomics*. 18:205.
2. van Opijnen T, et al. (2009). Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms. *Nature Methods*. 6(10):767-772.
3. DeJesus MA, et al. (2013). Statistical analysis of genetic interactions in Tn-seq data. *Nucleic Acids Research*. 41(11):e114.
4. Langridge GC, et al. (2009). Simultaneous assay of every Salmonella Typhimurium gene using one million transposon mutants. *Genome Research*. 19(12):2308-2316.
5. Bonferroni CE (1936). Teoria statistica delle classi e calcolo delle probabilità. *Pubblicazioni del R Istituto Superiore di Scienze Economiche e Commerciali di Firenze*. 8:3-62.
6. Benjamini Y, Hochberg Y (1995). Controlling the false discovery rate: a practical and powerful approach to multiple testing. *Journal of the Royal Statistical Society: Series B*. 57(1):289-300.