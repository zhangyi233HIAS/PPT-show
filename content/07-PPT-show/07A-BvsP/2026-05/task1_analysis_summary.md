# Task 1: Tn-seq 数据分析总结报告

## 1. 文件夹结构分析

### 1.1 原始数据与结果目录

```
09-tnseq/
├── result/
│   ├── 00.RefGenome/      # 参考基因组数据
│   ├── 01.Adaptor/        # 接头处理统计
│   ├── 02.Align/          # 比对结果统计
│   ├── 03.GeneInsertion/  # 基因插入统计
│   ├── 04.DiffExp/        # 差异表达分析（RPKM方法）
│   ├── 05.Enrich/         # 富集分析
│   └── 06.Essential/      # 必需基因分析（TSAS结果）
├── 文档文件（多个.md和.txt文件）
└── 分析报告（.doc文件）
```

### 1.2 关键数据文件

- **必需基因分析结果**：`*.Essential_genes.xls`（10列，4336个基因）
- **条件必需性分析结果**：`*_vs_K1.Conditional_essentiality.xls`（22列，4336个基因）
- **差异表达分析结果**：`*_vs_K1.Diff.xls`和`*_vs_K1.all.exp.xls`

## 2. 分析方法识别

### 2.1 使用的软件：TSAS 2.0

- **GitHub地址**：https://github.com/srimam/TSAS
- **分析类型**：
  - **单样本分析（-a 1）**：计算每个样本内部的基因必需性（FWER）
  - **双样本分析（-a 2）**：比较处理组与对照组的FC和p值

### 2.2 关键参数（根据文档推测）

- **转座子类型**：Mariner（靶序列为TA）
- **参数设置**：
  - `-seq TA`：校正TA位点偏好性
  - `-cl 10`：裁剪基因首尾10%
  - `-mh 1`：最小插入位点阈值
  - `-cap`：capping选项（可能为1或3）
  - `-w`：加权选项（可能为1）

### 2.3 输出数据结构

#### 单样本分析（Essential_genes.xls）：

| 列名                              | 含义               |
| ------------------------------- | ---------------- |
| Gene ID                         | 基因ID             |
| Annotation                      | 基因注释             |
| Gene length (bp)                | 基因长度             |
| No. of Unique hits              | 独特插入位点数          |
| Normalize Unique hits (hits/bp) | 标准化插入密度          |
| Mean Total number of reads      | 平均总reads数        |
| Adj. Pvalue (Essential)         | 校正后p值（必需性）       |
| FWER (Essential)                | 家族wise错误率（必需性）   |
| Adj. Pvalue (Improved fitness)  | 校正后p值（适应性增强）     |
| FWER (Improved fitness)         | 家族wise错误率（适应性增强） |

#### 双样本分析（Conditional_essentiality.xls）：

| 列名                                   | 含义                   |
| ------------------------------------ | -------------------- |
| Gene ID                              | 基因ID                 |
| Annotation                           | 基因注释                 |
| AveUnique hits (treatment)           | 处理组平均独特插入位点数         |
| Ave. Unique hits (control)           | 对照组平均独特插入位点数         |
| Ave. Raw Reads(treatment)            | 处理组平均原始reads数        |
| Ave. Raw Read (control)              | 对照组平均原始reads数        |
| Ave. Capped_reads(treatment)         | 处理组平均capped reads数   |
| Ave. Capped reads (control)          | 对照组平均capped reads数   |
| Ave. Weighted reads(treatment)       | 处理组平均加权reads数        |
| Ave. Weighted reads (control)        | 对照组平均加权reads数        |
| Ratio_Insertions (Treatment/control) | 插入位点数比值              |
| Log-fold Change (Insertions)         | 插入位点数log2FC          |
| Ratio_reads (Treatment/control)      | reads数比值             |
| Log-fold Change (Reads)              | reads数log2FC         |
| pvalue (proportions_insertions)      | 比例检验p值（插入位点）         |
| Adj. pvalue (proportions_insertions) | 校正后比例检验p值（插入位点）      |
| pvalue (proportions_reads)           | 比例检验p值（reads）        |
| Adj. pvalue (proportions_reads)      | 校正后比例检验p值（reads）     |
| pvalue (Fisher_insertions)           | Fisher检验p值（插入位点）     |
| Adj. pvalue (Fisher_insertions)      | 校正后Fisher检验p值（插入位点）  |
| pvalue (Fisher_reads)                | Fisher检验p值（reads）    |
| Adj. pvalue (Fisher_reads)           | 校正后Fisher检验p值（reads） |

## 3. 核心问题识别

### 3.1 实验设计问题

- **没有生物学重复**：每个条件只有n=1（1个LB对照 + 6个组织样本）
- **样本混合**：相同组织的3个样本混合测序，相当于"平均化"生物学差异
- **无法估算组内方差**：导致p值无统计学意义

### 3.2 分析方法问题

- **公司使用TSAS软件但参数不明确**：导师质疑"黑盒"操作
- **p值计算问题**：n=1时，Fisher检验等p值无法区分生物学差异和随机噪音
- **FC计算方法**：使用插入密度比值（考虑基因长度和TA位点校正）

### 3.3 导师的核心疑问

1. **可重复性**：别人能否复现分析结果？
2. **透明度**：公司使用的具体公式和代码是什么？
3. **参数设置**：TSAS软件的参数是否都是默认？
4. **数据可用性**：在当前设计下，数据还能用吗？

## 4. 数据质量评估

### 4.1 优点

- 使用TSAS 2.0专业软件，生物学上正确
- 考虑了TA位点偏好性（-seq TA参数）
- 提供了多种统计检验方法（比例检验、Fisher检验）
- 使用FWER（Bonferroni校正）严格控制假阳性

### 4.2 局限性

- **n=1设计**：无法估算生物学变异
- **p值不可靠**：组间比较的p值没有统计学意义
- **参数不透明**：公司未提供完整的运行参数记录

## 5. 建议的后续步骤

### 5.1 立即行动

1. **联系公司**：要求提供完整的TSAS运行日志和参数记录
2. **验证分析**：使用相同参数重新运行TSAS分析
3. **文档整理**：整理所有分析参数和代码

### 5.2 分析策略调整

1. **放弃组间比较p值**：不使用Conditional_essentiality.xls中的p值
2. **采用单样本分析**：使用Essential_genes.xls中的FWER≤0.01定义必需基因
3. **描述性比较**：通过韦恩图等方法比较不同条件的必需基因列表

### 5.3 长期规划

1. **补充生物学重复**：如果可能，增加n=2或n=3的重复
2. **标准化流程**：建立可重复的分析流程文档
3. **方法验证**：通过实验验证关键候选基因

## 6. 结论

### 6.1 数据可用性

**数据仍然有价值**，但需要改变分析策略：

- ✅ 可用于**探索性分析**和**候选基因筛选**
- ❌ 不可用于**统计显著性检验**（p值不可靠）
- ✅ 可用于**描述性比较**和**趋势分析**

### 6.2 回应导师的策略

1. **承认问题**：n=1设计确实限制了统计推断
2. **展示解决方案**：采用单样本分析+集合比较的方法
3. **提供透明度**：要求公司提供完整参数记录
4. **强调价值**：数据仍能提供有价值的候选基因列表

### 6.3 发表策略

- **方法描述**：明确说明n=1设计和分析局限性
- **结果呈现**：使用描述性语言，避免统计显著性声明
- **验证计划**：提出后续实验验证方案