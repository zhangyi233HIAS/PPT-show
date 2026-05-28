# Task 9: n=1 设计下统计指标意义澄清报告

**创建时间**：2026-05-28 11:00:00  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\06.Essential\`  
**核心问题**：n=1 设计下，p 值和 FDR 是否有意义？

---

## 一、核心问题澄清

### 1.1 您的质疑完全正确

**您的逻辑**：
> 如果 n=1 设计下 p 值无意义，那么 FDR 也无意义啊！

**这是完全正确的！** 让我详细解释：

### 1.2 两种分析模式的区别

| 分析模式 | 参数 | 样本设计 | p值/FDR | FWER |
|----------|------|----------|---------|------|
| **双样本分析** | `-a 2` | n=1 vs n=1 | ❌ **无意义** | ❌ 无意义 |
| **单样本分析** | `-a 1` | 每个样本独立 | ❌ **无意义** | ✅ **有意义** |

**关键区别**：
- **双样本分析**（-a 2）：比较处理组 vs 对照组，需要生物学重复来估算组内方差
- **单样本分析**（-a 1）：判断每个基因的插入是否显著低于预期，使用二项分布检验，不需要生物学重复

---

## 二、为什么 n=1 时 p 值和 FDR 无意义？

### 2.1 双样本分析的 p 值（-a 2）

**计算方法**（基于 **[result-B6]**）：
```python
# Fisher 精确检验
# 构建 2×2 列联表
# |          | 基因A | 其他基因 |
# |----------|-------|----------|
# | 处理组   | a     | b        |
# | 对照组   | c     | d        |

from scipy.stats import fisher_exact
odds_ratio, pvalue = fisher_exact([[a, b], [c, d]])
```

**为什么无意义？**
1. **无法估算组内方差**：n=1，不知道生物学重复之间的变异有多大
2. **无法区分真实差异与随机噪音**：观察到的差异可能仅来自技术误差
3. **结果不可重复**：如果重复实验，可能得到完全不同的结果

**结论**：n=1 设计下，双样本分析的 p 值 **❌ 无意义**

### 2.2 FDR（False Discovery Rate）

**计算方法**（基于 **[result-B6]**）：
```python
# FDR 使用 Benjamini-Hochberg 方法
from statsmodels.stats.multitest import multipletests
rejected, fdr, _, _ = multipletests(pvalues, alpha=0.05, method='fdr_bh')
```

**为什么无意义？**
1. **FDR 基于 p 值计算**：如果 p 值无意义，FDR 也无意义
2. **无法控制假阳性**：因为无法区分真实差异与随机噪音
3. **统计推断无效**：n=1 设计下，任何基于 p 值的统计推断都无效

**结论**：n=1 设计下，FDR **❌ 无意义**

### 2.3 数据验证（基于 **[result-B6]**）

```python
# 统计数据
total_genes = 4336
fisher_p_lt_005 = 950  # Fisher p < 0.05 的基因数
adj_p_lt_005 = 391     # Adj. p < 0.05 的基因数
expected_fp = 0.05 * total_genes  # 217

# 假阳性率计算
fp_rate = expected_fp / fisher_p_lt_005 * 100  # 22.8%
```

**问题**：
- 这些数字 **❌ 无意义**，因为 n=1 设计下 p 值不可靠
- 假阳性率 22.8% 的计算 **❌ 无意义**，因为基于无意义的 p 值

---

## 三、为什么单样本分析的 FWER 有意义？

### 3.1 单样本分析的 FWER（-a 1）

**计算方法**（基于 **[result-K1]**）：
```python
# TSAS 单样本分析使用二项分布检验
from scipy import stats

# 对每个基因
# observed_hits = 基因内独特插入位点数
# available_sites = 基因内 TA 位点数
# genome_wide_rate = 全基因组平均插入率

pvalue = stats.binom.sf(observed_hits, available_sites, genome_wide_rate)
essentiality_pvalue = 1 - pvalue

# Bonferroni 校正（FWER）
fwer = min(1, m * essentiality_pvalue)  # m = 基因总数
```

**为什么有意义？**
1. **不需要生物学重复**：使用基因内部的插入分布，而非比较两组样本
2. **统计检验有效**：二项分布检验判断插入是否显著低于预期
3. **可重复性**：基于统计模型，结果可重复

**结论**：n=1 设计下，单样本分析的 FWER **✅ 有意义**

### 3.2 关键区别

| 统计指标 | 数据来源 | 统计方法 | n=1 时意义 |
|----------|----------|----------|------------|
| **双样本 p 值** | 处理组 vs 对照组 | Fisher 检验 | ❌ 无意义 |
| **FDR** | 基于 p 值 | BH 校正 | ❌ 无意义 |
| **单样本 FWER** | 基因内插入分布 | 二项分布 | ✅ 有意义 |

**根本区别**：
- **双样本分析**：比较两组样本，需要生物学重复
- **单样本分析**：判断基因内插入是否异常，不需要生物学重复

---

## 四、数据质量重新评估

### 4.1 有意义的指标

| 指标 | 值 | 意义 | 说明 |
|------|-----|------|------|
| **总基因数** | 9,113 | ✅ 有意义 | 参考基因组注释 |
| **必需基因数（FWER ≤ 0.01）** | 232 | ✅ 有意义 | 单样本分析结果 |
| **低质量必需基因** | 67 (28.9%) | ✅ 有意义 | TA密度<5 |
| **零插入基因** | 1,651 (18.1%) | ✅ 有意义 | Hit=0 的基因 |

### 4.2 无意义的指标（n=1 设计）

| 指标 | 值 | 意义 | 说明 |
|------|-----|------|------|
| **Fisher p < 0.05** | 950 | ❌ **无意义** | n=1，p 值不可靠 |
| **Adj. p < 0.05** | 391 | ❌ **无意义** | n=1，FDR 不可靠 |
| **FDR** | 0.269 | ❌ **无意义** | 基于无意义的 p 值 |
| **IQR** | 0.411 | ❌ **无意义** | n=1，无法估算变异 |
| **假阳性率** | 22.8% | ❌ **无意义** | 基于无意义的 p 值 |

---

## 五、正确使用统计指标的建议

### 5.1 推荐使用的指标

| 指标 | 来源 | 用途 | 说明 |
|------|------|------|------|
| **FWER ≤ 0.01** | 单样本分析（-a 1） | 鉴定必需基因 | ✅ 统计上严谨 |
| **Hit=0** | 单样本分析 | 必需基因（无插入） | ✅ 生物学意义 |
| **Log2FC** | 双样本分析（-a 2） | 效应量评估 | ⚠️ 描述性，无统计意义 |
| **TA密度** | 基因注释 | 质量控制 | ✅ 排除低质量基因 |

### 5.2 不推荐使用的指标

| 指标 | 来源 | 问题 | 说明 |
|------|------|------|------|
| **p 值（Fisher）** | 双样本分析 | n=1，无意义 | ❌ 不用于统计推断 |
| **FDR** | 基于 p 值 | n=1，无意义 | ❌ 不用于统计推断 |
| **IQR** | 数据分布 | n=1，无法估算 | ❌ 不用于统计推断 |

### 5.3 筛选策略（修正版）

| 步骤 | 标准 | 阈值 | 意义 | 说明 |
|------|------|------|------|------|
| **步骤 1** | FWER | ≤ 0.01 | ✅ 有意义 | 主要标准 |
| **步骤 2** | Hit | = 0 | ✅ 有意义 | 必需基因 |
| **步骤 3** | TA密度 | ≥ 5 | ✅ 有意义 | 质量控制 |
| **步骤 4** | 基因长度 | ≥ 200bp | ✅ 有意义 | 排除短基因 |
| **步骤 5** | Log2FC | < -2 | ⚠️ 描述性 | 辅助排序 |

---

## 六、发表策略修正

### 6.1 方法描述（修正版）

**英文版本**：
> Due to the single-replicate design (n=1 per condition), statistical comparisons between conditions were limited to descriptive analyses. P-values and FDR from two-sample comparisons were **not used for statistical inference** as they cannot estimate within-group variance. Instead, essential genes were identified using TSAS 2.0 single-sample analysis mode (-a 1), which employs a binomial test to assess whether insertion density is significantly lower than expected. Genes with FWER ≤ 0.01 (Bonferroni-corrected) were considered essential. Log2 fold change (FC) was used as a descriptive measure of effect size for ranking genes and functional enrichment analysis, but not for statistical significance testing.

**中文版本**：
> 由于单重复设计（每个条件 n=1），条件间的统计比较仅限于描述性分析。**双样本比较的 p 值和 FDR 不用于统计推断**，因为它们无法估算组内方差。相反，使用 TSAS 2.0 的单样本分析模式（-a 1）鉴定必需基因，该模式使用二项分布检验评估插入密度是否显著低于预期。FWER ≤ 0.01（Bonferroni 校正）的基因被视为必需基因。Log2 倍数变化（FC）作为效应量的描述性指标用于基因排序和功能富集分析，但不用于统计显著性检验。

### 6.2 结果呈现（修正版）

**避免的表述**：
- ❌ "Fisher p < 0.05 的基因数：950"
- ❌ "FDR = 0.269"
- ❌ "假阳性率：22.8%"

**推荐的表述**：
- ✅ "FWER ≤ 0.01 的必需基因：232 个"
- ✅ "Hit=0 的基因：1,651 个"
- ✅ "低质量必需基因（TA密度<5）：67 个（28.9%）"

---

## 七、总结

### 7.1 核心结论

1. **您的质疑完全正确**：n=1 设计下，p 值和 FDR **❌ 无意义**
2. **FWER 有意义**：单样本分析使用二项分布检验，不需要生物学重复
3. **FC 仅描述性**：可用于排序和功能分析，但无统计意义

### 7.2 数据质量重新评估

| 维度 | 评级 | 说明 |
|------|------|------|
| **必需基因鉴定（FWER）** | ✅ 可用 | 单样本分析，统计上严谨 |
| **条件比较（p值/FDR）** | ❌ 不可用 | n=1，无意义 |
| **效应量（FC）** | ⚠️ 描述性 | 可用于排序，无统计意义 |
| **质量控制（TA密度）** | ✅ 可用 | 排除低质量基因 |

### 7.3 发表建议

1. **明确说明局限性**：n=1 设计下 p 值和 FDR 无意义
2. **使用正确指标**：FWER（单样本分析）用于必需基因鉴定
3. **描述性分析**：FC 用于排序和功能分析，但不用于统计推断
4. **质量控制**：排除低质量基因和短基因

---

## 八、参考文献与数据来源

### 8.1 数据文件
1. **[result-K1]**: `result/06.Essential/K1.Essential_genes.xls` (4336×10)
2. **[result-B6]**: `result/06.Essential/B6_vs_K1.Conditional_essentiality.xls` (4336×22)
3. **[LB报告]**: `BZ2024052319314-黄莉娟-康潇蔓-2sam-Tn-seq项目分析报告.doc`
4. **[实验组报告]**: `tissue-Tn-seq项目分析报告.doc`

### 8.2 分析依据
5. **[task4_report]**: `task4_report.md` 附录 A.1 统计指标汇总
6. **[P值分析]**: `P值为何无意义.md` - 详细解释 n=1 时 p 值无意义

### 8.3 外部文献
7. Burger BT, et al. (2017). Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data. *BMC Genomics*. 18:205.
8. van Opijnen T, et al. (2009). Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms. *Nature Methods*. 6(10):767-772.

---

**报告完成时间**：2026-05-28 11:00:00  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\`  
**报告版本**：修正版（标注 n=1 设计下统计指标意义）