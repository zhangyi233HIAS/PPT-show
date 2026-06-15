# Task 4: 数据质量与测序假阳性分析报告 (修正版)

**创建时间**：2026-05-28 09:45:00  
**更新时间**：2026-05-28 11:15:00  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\06.Essential\`  
**核心修正**：明确标注 n=1 设计下 p 值和 FDR 无意义

---

## 一、数据来源与引用说明

### 1.1 原始数据文件

| 文件路径                                                        | 引用标识                   | 数据维度    | 说明                |
| ----------------------------------------------------------- | ---------------------- | ------- | ----------------- |
| `result/06.Essential/K1.Essential_genes.xls`                | **[result-K1]**        | 4336×10 | LB对照组必需基因分析结果     |
| `result/06.Essential/B6_vs_K1.Conditional_essentiality.xls` | **[result-B6]**        | 4336×22 | 卵巢 vs LB条件必需性分析结果 |
| `result/02.Align/*.bn-seq.stat.xls`                         | **[result-Align]**     | -       | 比对统计结果            |
| `result/03.GeneInsertion/*.bn-seq.MappedGene.stat.xls`      | **[result-Insertion]** | -       | 基因插入统计            |

### 1.2 文档文件

| 文件路径                                            | 引用标识           | 说明             |
| ----------------------------------------------- | -------------- | -------------- |
| `BZ2024052319314-黄莉娟-康潇蔓-2sam-Tn-seq项目分析报告.doc` | **[结题报告]**     | 公司提供的分析报告      |
| `TSAS-的处理方法.txt`                                | **[TSAS文档]**   | TSAS软件参数详解     |
| `tnseq-tsas.txt`                                | **[TSAS官方文档]** | TSAS 2.0官方使用说明 |
| `FWER-all.md`                                   | **[FWER解释]**   | FWER计算原理与代码分析  |
| `P值为何无意义.md`                                    | **[P值分析]**     | n=1设计下P值的统计学问题 |

---

## 二、⚠️ 重要统计学澄清

### 2.1 n=1 设计下统计指标的意义

**关键结论**：由于 n=1 设计，**双样本分析的 p 值和 FDR 无意义**！

| 统计指标         | 数据来源       | 统计方法      | n=1 时意义   | 说明         |
| ------------ | ---------- | --------- | --------- | ---------- |
| **双样本 p 值**  | 处理组 vs 对照组 | Fisher 检验 | ❌ **无意义** | 无法估算组内方差   |
| **FDR**      | 基于 p 值     | BH 校正     | ❌ **无意义** | 基于无意义的 p 值 |
| **IQR**      | 数据分布       | 四分位距      | ❌ **无意义** | n=1，无法估算变异 |
| **单样本 FWER** | 基因内插入分布    | 二项分布      | ✅ **有意义** | 不需要生物学重复   |

### 2.2 为什么 p 值和 FDR 无意义？

**根本原因**（基于 **[P值分析]**）：

> 没有生物学重复，直接进行组间比较（你描述的6.2分析）所产生的p值是没有统计学意义的。

**具体解释**：

1. **无法估算组内方差**：n=1，不知道生物学重复之间的变异有多大
2. **无法区分真实差异与随机噪音**：观察到的差异可能仅来自技术误差
3. **结果不可重复**：如果重复实验，可能得到完全不同的结果

**结论**：

- **p 值**（Fisher）：❌ 无意义
- **FDR**：❌ 无意义（基于无意义的 p 值）
- **假阳性率**：❌ 无意义（基于无意义的 p 值）

### 2.3 为什么单样本 FWER 有意义？

**关键区别**：

- **双样本分析**（-a 2）：比较两组样本，需要生物学重复
- **单样本分析**（-a 1）：判断基因内插入是否异常，使用二项分布检验，不需要生物学重复

**TSAS 单样本分析的统计方法**（基于 **[TSAS官方文档]**）：

```python
# 二项分布检验
from scipy import stats

# 对每个基因
pvalue = stats.binom.sf(observed_hits, available_sites, genome_wide_rate)
essentiality_pvalue = 1 - pvalue

# Bonferroni 校正（FWER）
fwer = min(1, m * essentiality_pvalue)  # m = 基因总数
```

**结论**：单样本 FWER **✅ 有意义**，因为使用二项分布检验，不需要生物学重复

---

## 三、数据质量详细分析（修正版）

### 3.1 必需基因鉴定质量（基于 **[result-K1]**）

#### 3.1.1 基本统计

```python
# 数据来源: result/06.Essential/K1.Essential_genes.xls
# 引用标识: [result-K1]

import pandas as pd
df = pd.read_csv("result/06.Essential/K1.Essential_genes.xls", sep='\t')

# 基本统计
total_genes = len(df)  # 4336
essential_genes = (df['FWER (Essential)'] <= 0.01).sum()  # 523
hit_zero_genes = (df['No. of Unique hits'] == 0).sum()  # 8
hit_zero_fwer_sig = ((df['No. of Unique hits'] == 0) & (df['FWER (Essential)'] <= 0.01)).sum()  # 7
hit_zero_fwer_ns = ((df['No. of Unique hits'] == 0) & (df['FWER (Essential)'] > 0.01)).sum()  # 1
```

**统计结果**：

| 指标                      | 值       | 比例        | 意义        | 说明          |
| ----------------------- | ------- | --------- | --------- | ----------- |
| 总基因数                    | 4336    | 100%      | ✅ 有意义     | 参考基因组注释基因数  |
| **FWER ≤ 0.01 的必需基因**   | **523** | **12.1%** | ✅ **有意义** | **单样本分析结果** |
| Hit=0 的基因               | 8       | 0.18%     | ✅ 有意义     | 无转座子插入的基因   |
| Hit=0 且 FWER ≤ 0.01     | 7       | 0.16%     | ✅ 有意义     | 无插入且统计显著    |
| **Hit=0 但 FWER > 0.01** | **1**   | **0.02%** | ✅ 有意义     | **关键问题基因**  |

#### 3.1.2 关键问题：Hit=0 但 FWER > 0.01 的基因

**基因详情**（基于 **[result-K1]**）：

| 基因ID        | 基因长度  | Unique hits | FWER | 标准化插入密度  | 问题诊断               |
| ----------- | ----- | ----------- | ---- | -------- | ------------------ |
| JI728_23810 | 78 bp | 0           | 1.0  | 0.000000 | **TA位点过少，统计显著性不足** |

**问题分析**：

1. **基因长度极短**：78 bp（全基因组平均 909.8 bp）
2. **TA位点数极少**：短基因内TA二核苷酸数量有限
3. **统计效力不足**：即使无插入，二项分布检验p值也不够小

**TSAS 计算过程**（基于 **[TSAS官方文档]**）：

```python
# TSAS 使用二项分布检验
from scipy import stats

# 假设参数
available_sites = 3  # 估计TA位点数（78bp基因，TA密度约0.038/bp）
observed_hits = 0    # 无插入
genome_wide_rate = 0.092  # 全基因组平均插入密度 [result-K1]

# 二项分布检验
pvalue = stats.binom.sf(observed_hits, available_sites, genome_wide_rate)
# pvalue = P(X ≤ 0 | n=3, p=0.092) = (1-0.092)^3 ≈ 0.747

# 必需性 p 值
essentiality_pvalue = 1 - pvalue  # ≈ 0.253

# Bonferroni 校正（m=4336）
fwer = min(1, 4336 * essentiality_pvalue)  # = 1 (不显著)
```

**结论**：JI728_23810 虽然 Hit=0，但由于基因长度过短（78bp），TA位点数不足，导致统计显著性不足，FWER=1.0，不能判定为必需基因。

---

### 3.2 条件比较质量（基于 **[result-B6]**）- ⚠️ n=1 设计，p 值/FDR 无意义

#### 3.2.1 Capping 和 Weighting 验证

```python
# 数据来源: result/06.Essential/B6_vs_K1.Conditional_essentiality.xls
# 引用标识: [result-B6]

df_cond = pd.read_csv("result/06.Essential/B6_vs_K1.Conditional_essentiality.xls", sep='\t')

# 验证 capping 和 weighting
raw_reads = df_cond['Ave. Raw Reads(treatment)'].mean()  # 651.59
capped_reads = df_cond['Ave. Capped_reads(treatment)'].mean()  # 566.48
weighted_reads = df_cond['Ave. Weighted reads(treatment)'].mean()  # 566.48

capped_ratio = capped_reads / raw_reads  # 0.8694
weighted_ratio = weighted_reads / raw_reads  # 0.8694
```

**验证结果**：

| 指标                            | 值          | 说明                |
| ----------------------------- | ---------- | ----------------- |
| 平均 Raw Reads (treatment)      | 651.59     | 原始reads数          |
| 平均 Capped Reads (treatment)   | 566.48     | Capping后reads数    |
| 平均 Weighted Reads (treatment) | 566.48     | 加权后reads数         |
| **Capped/Raw 比例**             | **0.8694** | **确认使用了 capping** |
| **Weighted/Raw 比例**           | **0.8694** | **确认使用了加权**       |

**结论**：从数据特征确认使用了 `-cap` 和 `-w` 参数，Capped reads < Raw reads，说明进行了PCR偏倚校正。

#### 3.2.2 ❌ p 值和 FDR 分析（n=1 设计，无意义）

**⚠️ 重要说明**：以下统计指标 **❌ 无意义**，因为 n=1 设计下 p 值不可靠！

```python
# ❌ 以下统计指标无意义（n=1 设计）
pvalue_fisher = df_cond['pvalue (Fisher_insertions)'].dropna()
adj_pvalue_fisher = df_cond['Adj. pvalue (Fisher_insertions)'].dropna()

# ❌ 无意义的统计
fisher_p_lt_005 = (pvalue_fisher < 0.05).sum()  # 950 - ❌ 无意义
adj_p_lt_005 = (adj_pvalue_fisher < 0.05).sum()  # 391 - ❌ 无意义
expected_fp = 0.05 * len(df_cond)  # 217 - ❌ 无意义
fp_rate = expected_fp / fisher_p_lt_005 * 100  # 22.8% - ❌ 无意义
```

**❌ 无意义的统计结果**（n=1 设计）：

| 指标                   | 值         | 意义        | 说明             |
| -------------------- | --------- | --------- | -------------- |
| Fisher p < 0.05 的基因数 | 950       | ❌ **无意义** | n=1，p 值不可靠     |
| Adj. p < 0.05 的基因数   | 391       | ❌ **无意义** | n=1，FDR 不可靠    |
| 预期假阳性数 (α=0.05)      | 217       | ❌ **无意义** | 基于无意义的 p 值     |
| **假阳性率（预期）**         | **22.8%** | ❌ **无意义** | **基于无意义的 p 值** |

**为什么无意义？**

1. **无法估算组内方差**：n=1，不知道生物学重复之间的变异有多大
2. **无法区分真实差异与随机噪音**：观察到的差异可能仅来自技术误差
3. **结果不可重复**：如果重复实验，可能得到完全不同的结果

#### 3.2.3 ✅ 有意义的统计（Log2FC 描述性分析）

**⚠️ 注意**：Log2FC 仅用于 **描述性分析**，**不用于统计推断**！

```python
# ✅ Log2FC 仅用于描述性分析
lfc = df_cond['Log-fold Change (Insertions)'].dropna()
print(f"Log2FC 范围: {lfc.min():.2f} 到 {lfc.max():.2f}")  # -7.96 到 5.83
print(f"Log2FC 均值: {lfc.mean():.2f}")  # -0.54
print(f"Log2FC 标准差: {lfc.std():.2f}")  # 1.52
print(f"Log2FC < -2 的基因数: {(lfc < -2).sum()}")  # 508
print(f"Log2FC > 2 的基因数: {(lfc > 2).sum()}")  # 11
```

**✅ 有意义的描述性统计**（仅用于排序，不用于统计推断）：

| 指标               | 值            | 意义    | 说明     |
| ---------------- | ------------ | ----- | ------ |
| Log2FC 范围        | -7.96 到 5.83 | ✅ 描述性 | 全范围    |
| Log2FC 均值        | -0.54        | ✅ 描述性 | 整体偏向下调 |
| Log2FC 标准差       | 1.52         | ✅ 描述性 | 变异较大   |
| Log2FC < -2 的基因数 | 508          | ✅ 描述性 | 大幅下调基因 |
| Log2FC > 2 的基因数  | 11           | ✅ 描述性 | 大幅上调基因 |

**使用建议**：

- ✅ 可用于 **候选基因排序**（FC 越负，越可能是必需基因）
- ✅ 可用于 **功能富集分析**（GSEA）
- ❌ **不用于统计显著性检验**

---

## 四、数据质量评级（修正版）

### 4.1 质量评估维度

#### 4.1.1 ✅ 有意义的指标

| 评估项                     | 评级    | 证据                             | 说明          |
| ----------------------- | ----- | ------------------------------ | ----------- |
| **必需基因鉴定（FWER）**        | ✅ 可用  | [result-K1]: 523个基因            | 单样本分析，统计上严谨 |
| **Hit=0 基因**            | ✅ 可用  | [result-K1]: 8个基因              | 无插入的基因      |
| **Capping 和 Weighting** | ✅ 已确认 | [result-B6]: Capped/Raw=0.8694 | 确认使用了参数     |
| **基因覆盖度**               | ✅ 良好  | [result-K1]: 4336基因            | 覆盖全基因组      |

#### 4.1.2 ❌ 无意义的指标（n=1 设计）

| 评估项             | 评级    | 证据               | 说明         |
| --------------- | ----- | ---------------- | ---------- |
| **p 值（Fisher）** | ❌ 无意义 | [result-B6]: n=1 | 无法估算组内方差   |
| **FDR**         | ❌ 无意义 | [result-B6]: n=1 | 基于无意义的 p 值 |
| **IQR**         | ❌ 无意义 | [result-B6]: n=1 | 无法估算变异     |
| **假阳性率**        | ❌ 无意义 | [result-B6]: n=1 | 基于无意义的 p 值 |

### 4.2 数据可用性结论

| 维度               | 评级     | 说明          |
| ---------------- | ------ | ----------- |
| **必需基因鉴定（FWER）** | ✅ 可用   | 单样本分析，统计上严谨 |
| **条件比较（p值/FDR）** | ❌ 不可用  | n=1，无意义     |
| **效应量（FC）**      | ⚠️ 描述性 | 可用于排序，无统计意义 |
| **质量控制（TA密度）**   | ✅ 可用   | 排除低质量基因     |

---

## 五、正确使用统计指标的建议

### 5.1 推荐使用的指标

| 指标              | 来源          | 用途        | 说明           |
| --------------- | ----------- | --------- | ------------ |
| **FWER ≤ 0.01** | 单样本分析（-a 1） | 鉴定必需基因    | ✅ 统计上严谨      |
| **Hit=0**       | 单样本分析       | 必需基因（无插入） | ✅ 生物学意义      |
| **Log2FC**      | 双样本分析（-a 2） | 效应量评估     | ⚠️ 描述性，无统计意义 |
| **TA密度**        | 基因注释        | 质量控制      | ✅ 排除低质量基因    |

### 5.2 不推荐使用的指标

| 指标              | 来源     | 问题       | 说明        |
| --------------- | ------ | -------- | --------- |
| **p 值（Fisher）** | 双样本分析  | n=1，无意义  | ❌ 不用于统计推断 |
| **FDR**         | 基于 p 值 | n=1，无意义  | ❌ 不用于统计推断 |
| **IQR**         | 数据分布   | n=1，无法估算 | ❌ 不用于统计推断 |

### 5.3 筛选策略（修正版）

| 步骤       | 标准     | 阈值      | 意义     | 说明    |
| -------- | ------ | ------- | ------ | ----- |
| **步骤 1** | FWER   | ≤ 0.01  | ✅ 有意义  | 主要标准  |
| **步骤 2** | Hit    | = 0     | ✅ 有意义  | 必需基因  |
| **步骤 3** | TA密度   | ≥ 5     | ✅ 有意义  | 质量控制  |
| **步骤 4** | 基因长度   | ≥ 200bp | ✅ 有意义  | 排除短基因 |
| **步骤 5** | Log2FC | < -2    | ⚠️ 描述性 | 辅助排序  |

---

## 六、参考文献与数据来源

### 6.1 数据文件

1. **[result-K1]**: `result/06.Essential/K1.Essential_genes.xls` (4336×10)
2. **[result-B6]**: `result/06.Essential/B6_vs_K1.Conditional_essentiality.xls` (4336×22)
3. **[LB报告]**: `BZ2024052319314-黄莉娟-康潇蔓-2sam-Tn-seq项目分析报告.doc`
4. **[实验组报告]**: `tissue-Tn-seq项目分析报告.doc`

### 6.2 分析依据

5. **[task4_report]**: `task4_report.md` 附录 A.1 统计指标汇总
6. **[P值分析]**: `P值为何无意义.md` - 详细解释 n=1 时 p 值无意义
7. **[TSAS官方文档]**: `tnseq-tsas.txt` - TSAS 2.0 官方使用说明

### 6.3 外部文献

8. Burger BT, et al. (2017). Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data. *BMC Genomics*. 18:205.
9. van Opijnen T, et al. (2009). Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms. *Nature Methods*. 6(10):767-772.

---

**报告完成时间**：2026-05-28 09:45:00  
**更新时间**：2026-05-28 11:15:00（标注 n=1 设计下统计指标意义）  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\`  
**报告版本**：修正版（标注 n=1 设计下 p 值和 FDR 无意义）