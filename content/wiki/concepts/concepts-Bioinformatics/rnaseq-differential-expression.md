---
title: RNA-seq 差异表达分析
created: 2026-05-19
updated: 2026-05-19
type: concept
tags: [transcriptomics, bioinfo, sequence-analysis]
sources: []
confidence: medium
---

# RNA-seq 差异表达分析

## 定义
RNA-seq 差异表达分析是一种基于高通量测序技术的转录组学方法，用于识别在不同条件下（如疾病 vs 健康、处理 vs 对照）表达水平显著差异的基因。

## 背景
RNA-seq 技术通过测序 mRNA 分子来量化基因表达水平。差异表达分析是转录组学研究的核心步骤，帮助研究者识别与特定生物学条件相关的关键基因。

## 核心原理

### 1. 数据预处理
- **质量控制**: 使用 FastQC 检查测序质量
- **修剪**: 使用 Trimmomatic 或 Cutadapt 接头和低质量碱基
- **比对**: 使用 HISAT2 或 STAR 将 reads 比对到参考基因组

### 2. 表达量量化
- **计数矩阵**: 使用 featureCounts 或 HTSeq 统计每个基因的 reads 数
- **标准化**: 使用 TPM、FPKM 或 CPM 进行样本间标准化

### 3. 差异表达检测
- **统计模型**: 使用负二项分布模型（如 DESeq2、edgeR）
- **假设检验**: 使用 Wald 检验或似然比检验
- **多重检验校正**: 使用 Benjamini-Hochberg 方法控制 FDR

## 应用场景
- **疾病研究**: 识别疾病相关的差异表达基因
- **药物研发**: 评估药物对基因表达的影响
- **发育生物学**: 研究发育过程中的基因表达变化

## 相关概念
- [[转录组学]] - RNA-seq 是转录组学的核心技术
- [[基因表达]] - 差异表达分析的基础
- [[生物信息学工具]] - 分析所需的软件工具
- [[统计假设检验]] - 差异表达检测的统计基础

## 常用工具

### 质量控制
- FastQC: 测序质量评估
- MultiQC: 质量报告汇总

### 比对
- HISAT2: 快速比对工具
- STAR: 高灵敏度比对工具

### 差异表达
- DESeq2: 基于负二项分布的差异表达分析
- edgeR: 精确检验方法
- limma-voom: 线性模型方法

## 分析流程

```
原始数据 → 质量控制 → 修剪 → 比对 → 计数 → 标准化 → 差异表达 → 功能富集
```

## 注意事项
- **生物学重复**: 至少需要 3 个生物学重复
- **批次效应**: 需要考虑并校正批次效应
- **多重检验**: 必须进行多重检验校正
- **功能验证**: 差异表达基因需要实验验证

## 参考文献
1. Love MI, Huber W, Anders S. Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. Genome Biology. 2014.
2. Robinson MD, McCarthy DJ, Smyth GK. edgeR: a Bioconductor package for differential expression analysis of digital gene expression data. Bioinformatics. 2010.
