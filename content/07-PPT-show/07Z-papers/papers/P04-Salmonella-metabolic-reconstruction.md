---
title: "多Salmonella菌株的基因组规模代谢重建揭示血清型特异的代谢特性"
title_en: "Genome-scale metabolic reconstruction of multiple Salmonella strains reveals serotype-specific metabolic characteristics"
authors:
  - Yara Seif
  - Erol Kavvas
  - Jean-Christophe Lachance
  - James T. Yurkovich
  - et al.
journal: Nature Communications
year: 2018
doi: 10.1038/s41467-018-06112-5
pdf_source: 沙门菌合并PDF.pdf
pdf_pages: "46-57"
tags:
  - salmonella
  - metabolic-reconstruction
  - genome-scale-model
  - serotype
  - systems-biology
  - flux-balance-analysis
  - GEM
  - Pan-STM
  - comparative-genomics
created: 2026-06-03
type: literature-note
status: summarized
---

# P04: 多沙门菌株基因组规模代谢重建

## 中文摘要

本研究构建了沙门氏菌属多个菌株的**基因组规模代谢模型**（[[GEM]]，Genome-Scale Metabolic Model），系统揭示了不同[[血清型]]之间的代谢差异。通过开发Pan-STM v1.1代谢重建框架，研究团队建立了**410个菌株特异性代谢模型**，覆盖了沙门氏菌属的主要血清型。

研究发现，不同血清型沙门氏菌在碳源利用、氨基酸代谢和毒力相关代谢途径上存在显著的血清型特异性差异，这些差异与各血清型的宿主适应性、组织嗜性和致病特征密切相关。

## 核心方法

- [[基因组规模代谢重建]]（Genome-scale Metabolic Reconstruction）
- [[通量平衡分析]]（Flux Balance Analysis, FBA）
- Pan-STM v1.1 框架 — 沙门氏菌属泛代谢重建
- 比较基因组学与代谢基因注释
- 410个菌株特异性代谢模型构建
- [[KEGG]] / [[BioCyc]] 数据库整合

## 关键发现

1. **410个菌株模型**：建立了迄今最大规模的沙门氏菌代谢模型库，覆盖主要血清型
2. **Pan-STM v1.1**：开发了可扩展的沙门氏菌属泛代谢重建框架
3. **血清型特异性代谢**：
   - 不同血清型在**碳源利用谱**上存在显著差异
   - **氨基酸代谢**通路呈现血清型特异性富集
   - 毒力相关代谢途径与血清型的宿主范围相关
4. **代谢-毒力关联**：代谢能力差异与各血清型的致病特征（肠道 vs 全身性感染）相关联
5. **系统生物学框架**：为沙门氏菌代谢研究提供了标准化的计算建模平台

## 沙门菌研究相关性

- **核心资源论文**：Pan-STM v1.1是沙门氏菌代谢研究的基础设施
- 与P02中观察到的持留菌[[碳代谢]]重编程直接相关——P02的蛋白质组发现可通过本模型进行通量层面的解释
- 血清型特异性代谢差异解释了为何伤寒沙门菌（S. Typhi）和鼠伤寒沙门菌（S. Typhimurium）表现出不同的致病模式
- 为[[代谢工程]]和抗菌靶点发现提供计算基础
- 与P01中宿主-病原代谢互作研究形成互补

## 相关概念链接

- [[基因组规模代谢模型]]（GEM / GSMM）
- [[通量平衡分析]]（FBA）
- [[Pan-STM]] — 沙门氏菌泛代谢重建
- [[血清型]] — 沙门氏菌分类
- [[S. Typhimurium]] / [[S. Typhi]] / [[S. Enteritidis]]
- [[碳代谢]] — 中心碳代谢（与P02关联）
- [[氨基酸代谢]]（与P02关联）
- [[毒力因子]] — 毒力相关代谢
- [[比较基因组学]]
- [[约束基础建模]]（Constraint-based Modeling）

## 引用

```bibtex
@article{seif2018metabolic,
  title={Genome-scale metabolic reconstruction of multiple Salmonella strains reveals serotype-specific metabolic characteristics},
  author={Seif, Yara and Kavvas, Erol and Lachance, Jean-Christophe and Yurkovich, James T. and others},
  journal={Nature Communications},
  year={2018},
  doi={10.1038/s41467-018-06112-5}
}
```
