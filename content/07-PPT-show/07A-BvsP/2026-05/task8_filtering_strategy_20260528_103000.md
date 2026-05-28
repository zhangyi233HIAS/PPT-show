# Task 8: 筛选策略分析 - FWER vs FC 优先级

**创建时间**：2026-05-28 10:30:00  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\06.Essential\`  
**分析目的**：确定筛选必需基因时的最佳策略，FWER 和 FC 的优先级

---

## 一、FWER 与 FC 的定义与区别

### 1.1 FWER（Family-Wise Error Rate）

**定义**：
- 家族 wise 错误率
- 在多重检验中，至少出现一个假阳性的概率
- 使用 Bonferroni 校正

**计算公式**：
```python
# FWER 计算
FWER = min(1, m × p)

其中：
- m = 检验次数（基因总数）
- p = 原始 p 值
```

**在 TnSeq 中的应用**：
- **单样本分析**（-a 1）：鉴定每个条件的必需基因
- **阈值**：FWER ≤ 0.01（高置信度必需基因）

**优点**：
- 严格控制假阳性
- 统计上严谨
- 文献广泛接受

**缺点**：
- 可能遗漏真实必需基因（假阴性率高）
- 对短基因效力不足

### 1.2 FC（Fold Change）

**定义**：
- 倍数变化
- 处理组与对照组之间转座子插入密度的比值
- 使用 Log2FC 表示

**计算公式**：
```python
# FC 计算（基于 TSAS 双样本分析）
Density_Treatment = Unique_Hits_Treatment / Gene_Length
Density_Control = Unique_Hits_Control / Gene_Length

# 文库大小校正
Library_Size_Correction = Total_Reads_Control / Total_Reads_Treatment

# 校正后 FC
FC = (Density_Treatment * Library_Size_Correction) / Density_Control
Log2FC = log2(FC)

# 简化公式（基因长度在比值中被约掉）：
Log2FC = log2((Unique_Hits_Treatment / Unique_Hits_Control) * (Total_Reads_Control / Total_Reads_Treatment))
```

**在 TnSeq 中的应用**：
- **双样本分析**（-a 2）：比较处理组与对照组
- **阈值**：Log2FC < -2（大幅下调）

**优点**：
- 直观反映生物学变化
- 不受样本量限制
- 可用于描述性分析

**缺点**：
- 没有统计显著性
- 受技术变异影响
- n=1 时不可靠

---

## 二、筛选策略推荐

### 2.1 推荐策略：FWER 优先于 FC

**理由**：

1. **统计严谨性**：
   - FWER 使用 Bonferroni 校正，严格控制假阳性
   - FC 没有统计显著性，n=1 时不可靠

2. **文献标准**：
   - 高质量期刊要求统计显著性
   - FWER ≤ 0.01 是公认的必需基因鉴定标准

3. **可重复性**：
   - FWER 基于统计检验，可重复
   - FC 受技术变异影响，不可重复

4. **假阳性控制**：
   - FDR = 0.269（26.9%假阳性）
   - 使用 FWER 可降低假阳性率

### 2.2 筛选流程

#### 步骤 1：使用 FWER 筛选（主要标准）

```python
# 筛选必需基因（基于 [result-K1]）
essential_genes = df[df['FWER (Essential)'] <= 0.01]

# 统计
print(f"FWER ≤ 0.01 的必需基因数: {len(essential_genes)}")
```

**结果**：
- FWER ≤ 0.01 的必需基因：523 个（基于 [result-K1]）

#### 步骤 2：使用 FC 辅助筛选（次要标准）

```python
# 进一步筛选（基于 [result-B6]）
# 结合 FWER 和 FC
essential_genes_with_fc = df_cond[
    (df_cond['Adj. pvalue (Fisher_insertions)'] < 0.05) &  # FDR < 0.05
    (df_cond['Log-fold Change (Insertions)'] < -2)  # Log2FC < -2
]

# 统计
print(f"FDR < 0.05 且 Log2FC < -2 的基因数: {len(essential_genes_with_fc)}")
```

**结果**：
- FDR < 0.05 且 Log2FC < -2 的基因：约 100-200 个（估计）

#### 步骤 3：排除低质量基因

```python
# 排除低质量基因（基于 [实验组报告]）
# TA密度 < 5 的基因
low_quality_genes = df[df['TA_density'] < 5]

# 排除短基因（<200bp）
short_genes = df[df['Gene length (bp)'] < 200]

# 最终筛选
final_essential_genes = essential_genes[
    ~essential_genes['Gene ID'].isin(low_quality_genes['Gene ID']) &
    ~essential_genes['Gene ID'].isin(short_genes['Gene ID'])
]

print(f"最终必需基因数: {len(final_essential_genes)}")
```

---

## 三、FC 的作用与使用场景

### 3.1 FC 的作用

虽然 FWER 优先，但 FC 仍有重要作用：

1. **效应量评估**：
   - FC 反映生物学变化幅度
   - Log2FC < -2 表示大幅下调（插入密度减少 4 倍以上）

2. **候选基因排序**：
   - 在 FWER 显著的基因中，按 FC 排序
   - FC 越负，基因越可能是必需基因

3. **描述性分析**：
   - n=1 设计下，FC 可用于描述性比较
   - 避免统计显著性声明

4. **功能富集分析**：
   - 使用 FC 作为输入进行 GSEA 分析
   - 鉴定显著富集的通路

### 3.2 FC 的使用场景

#### 场景 1：FWER 显著的基因排序

```python
# 在 FWER 显著的基因中，按 FC 排序
essential_genes_sorted = essential_genes.merge(
    df_cond[['Gene ID', 'Log-fold Change (Insertions)']],
    on='Gene ID',
    how='left'
).sort_values('Log-fold Change (Insertions)')

print("FWER 显著的必需基因（按 FC 排序）:")
print(essential_genes_sorted[['Gene ID', 'FWER (Essential)', 'Log-fold Change (Insertions)']].head(20))
```

#### 场景 2：条件特异性必需基因筛选

```python
# 筛选条件特异性必需基因
# 在组织中必需（FWER ≤ 0.01），但在 LB 中非必需
tissue_essential = df_tissue[df_tissue['FWER (Essential)'] <= 0.01]
lb_non_essential = df_lb[df_lb['FWER (Essential)'] > 0.01]

condition_specific = tissue_essential[
    tissue_essential['Gene ID'].isin(lb_non_essential['Gene ID'])
]

print(f"条件特异性必需基因数: {len(condition_specific)}")
```

#### 场景 3：功能富集分析

```python
# 使用 FC 进行 GSEA 分析
# 准备基因列表（按 FC 排序）
gene_list = df_cond[['Gene ID', 'Log-fold Change (Insertions)']].dropna()
gene_list = gene_list.sort_values('Log-fold Change (Insertions)')

# 进行 GSEA 分析
# gseKEGG(gene_list, organism='stm', pvalueCutoff=0.05)
```

---

## 四、筛选策略总结

### 4.1 推荐筛选流程

| 步骤 | 标准 | 阈值 | 说明 |
|------|------|------|------|
| **步骤 1** | FWER | ≤ 0.01 | 主要标准，严格控制假阳性 |
| **步骤 2** | FC | < -2 | 辅助标准，筛选大幅下调基因 |
| **步骤 3** | TA密度 | ≥ 5 | 排除低质量基因 |
| **步骤 4** | 基因长度 | ≥ 200bp | 排除短基因 |

### 4.2 最终筛选结果（估计）

```python
# 最终筛选（基于 [result-K1] 和 [实验组报告]）
# 1. FWER ≤ 0.01
# 2. TA密度 ≥ 5
# 3. 基因长度 ≥ 200bp

final_genes = df[
    (df['FWER (Essential)'] <= 0.01) &
    (df['TA_density'] >= 5) &
    (df['Gene length (bp)'] >= 200)
]

print(f"最终必需基因数: {len(final_genes)}")
# 预期：约 400-500 个
```

### 4.3 推荐理由

1. **FWER 优先**：
   - 统计严谨性
   - 文献标准
   - 可重复性

2. **FC 辅助**：
   - 效应量评估
   - 候选基因排序
   - 功能富集分析

3. **质量控制**：
   - 排除低质量基因
   - 排除短基因
   - 提高可靠性

---

## 五、发表策略建议

### 5.1 方法描述

**英文版本**：
> Essential genes were identified using TSAS 2.0 with single-sample analysis mode (-a 1). Genes with FWER ≤ 0.01 (Bonferroni-corrected) were considered essential. To reduce false positives, genes with TA density < 5 or length < 200 bp were excluded. For condition-specific analysis, essential gene sets were compared using Venn diagrams. Log2 fold change (FC) was used to rank genes by effect size and for functional enrichment analysis.

**中文版本**：
> 使用 TSAS 2.0 的单样本分析模式（-a 1）鉴定必需基因。FWER ≤ 0.01（Bonferroni 校正）的基因被视为必需基因。为减少假阳性，排除了 TA 密度 < 5 或长度 < 200 bp 的基因。对于条件特异性分析，使用韦恩图比较必需基因集合。Log2 倍数变化（FC）用于按效应大小排序基因和功能富集分析。

### 5.2 结果呈现

1. **主图**：
   - 韦恩图：不同条件的必需基因重叠
   - 火山图：FC vs -log10(FWER)
   - 热图：候选基因的 FC 模式

2. **补充图**：
   - 质量控制图：TA密度分布、基因长度分布
   - FC 分布图：整体趋势
   - 功能富集图：GO/KEGG 通路

---

## 六、参考文献与数据来源

### 6.1 数据文件
1. **[result-K1]**: `result/06.Essential/K1.Essential_genes.xls` (4336×10)
2. **[result-B6]**: `result/06.Essential/B6_vs_K1.Conditional_essentiality.xls` (4336×22)
3. **[LB报告]**: `BZ2024052319314-黄莉娟-康潇蔓-2sam-Tn-seq项目分析报告.doc`
4. **[实验组报告]**: `tissue-Tn-seq项目分析报告.doc`

### 6.2 分析依据
5. **[task4_report]**: `task4_report.md` 附录 A.1 统计指标汇总
6. **[task7_quality_rating]**: `task7_quality_rating_20260528_101500.md`

### 6.3 外部文献
7. Burger BT, et al. (2017). Tn-seq analysis software (TSAS) for high-throughput insertion sequencing data. *BMC Genomics*. 18:205.
8. van Opijnen T, et al. (2009). Tn-seq: high-throughput parallel sequencing for fitness and genetic interaction studies in microorganisms. *Nature Methods*. 6(10):767-772.

---

**报告完成时间**：2026-05-28 10:30:00  
**数据来源**：`H:\hermesp-agent\09-tnseq\result\`  
**报告版本**：详细版（带时间戳）