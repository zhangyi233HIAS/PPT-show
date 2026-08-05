---
title: "双重转座子测序解析细菌的遗传相互作用图谱"
title_en: "Dual Tn-seq resolves bacterial genetic interaction maps"
authors:
  - Justin J. Zik
  - Morgan N. Price
  - Keisha Hanifa Alma Mayra
  - Audrey A. Santoso
  - Adam P. Arkin
  - Adam M. Deutschbauer
  - Lok-To Sham
doi: 10.1126/science.adt7685
journal: Science
year: 2025
pages: 137-152
tags:
  - dual-Tn-seq
  - genetic-interaction
  - Cre-lox
  - barcoding
  - Streptococcus-pneumoniae
  - high-throughput
  - functional-genomics
  - gene-function
  - double-mutant
  - Salmonella-applicable
type: literature-note
created: 2026-06-03
source: 沙门菌合并PDF.pdf
---

# 双重转座子测序解析细菌的遗传相互作用图谱

> [!info] 论文信息
> **期刊:** Science (2025)
> **DOI:** [[10.1126/science.adt7685]]
> **页码:** 137-152

## 中文摘要

本研究开发了一种[[双重转座子测序]]（Dual Tn-seq）平台，用于高通量绘制细菌遗传相互作用图谱。该平台以[[肺炎链球菌]]（Streptococcus pneumoniae）为模式生物，通过[[Cre-lox]]条形码系统生成超过10亿个双突变体。从71个查询基因敲除中，检测到104,961个遗传相互作用，揭示了67个未表征蛋白质的功能。该技术突破了传统遗传相互作图的通量限制，为系统水平理解细菌基因功能网络提供了强大工具。

## 核心发现

1. **Dual Tn-seq平台**: 建立了可生成超过10亿双突变体的高通量技术平台
2. **Cre-lox条形码系统**: 利用Cre重组酶和lox位点实现双基因敲除的条形码标记
3. **大规模GI数据**: 从71个查询基因中鉴定104,961个遗传相互作用
4. **功能发现**: 揭示了67个此前未表征蛋白质的生物学功能
5. **网络拓扑解析**: 遗传相互作用网络揭示了细菌基因功能的层级组织

## 关键方法

- [[双重转座子测序]]（Dual Tn-seq）
- [[Cre-lox重组系统]]条形码标记
- 高通量双突变体文库构建（>10^9双突变体）
- 下一代测序（NGS）定量分析
- 生物信息学遗传相互作用评分

## 技术原理

```
Dual Tn-seq工作流程:
1. 构建Tn文库（含lox条形码）
2. 与71个查询基因突变株杂交
3. Cre-lox重组产生双突变体条形码
4. 高通量测序定量双突变体丰度
5. 计算遗传相互作用得分（ε）
6. 网络分析和功能注释
```

## 遗传相互作用统计

| 参数 | 数值 |
|------|------|
| 模式生物 | 肺炎链球菌 |
| 查询基因数 | 71 |
| 双突变体总数 | >1,000,000,000 |
| 检测到的GIs | 104,961 |
| 新功能注释 | 67个蛋白 |

## 与沙门菌研究的关联

> [!tip] 相关性
> - Dual Tn-seq技术可直接应用于[[沙门菌]]的遗传相互作用研究
> - [[Cre-lox]]系统已在沙门菌遗传学中广泛使用
> - 大规模GI图谱可揭示沙门菌毒力基因的功能网络
> - 67个新功能蛋白的发现策略适用于沙门菌未知基因注释
> - 该平台可系统鉴定沙门菌的条件必需基因和合成致死靶点
> - 为沙门菌抗菌药物靶点发现提供遗传学依据

## 相关概念链接

- [[双重转座子测序]] / [[Dual Tn-seq]]
- [[Cre-lox重组]] / [[Cre-lox Recombination]]
- [[遗传相互作用]] / [[Genetic Interaction]]
- [[合成致死]] / [[Synthetic Lethality]]
- [[功能基因组学]] / [[Functional Genomics]]
- [[肺炎链球菌]] / [[Streptococcus pneumoniae]]
- [[沙门菌]] / [[Salmonella]]
- [[Tn-seq]] / [[转座子测序]]
- [[基因敲除]] / [[Gene Knockout]]
- [[条形码技术]] / [[Barcoding]]
- [[高通量筛选]] / [[High-throughput Screening]]
- [[系统生物学]] / [[Systems Biology]]

