---
title: 一氧化氮作为沙门氏菌系统性感染的宿主信号
created: 2026-05-21
updated: 2026-05-21
type: concept
tags: [molecular-bio, biomedical, pathogenesis, host-pathogen, signaling]
sources: [raw/papers/s42003-023-04876-1.pdf]
confidence: high
---

# 一氧化氮作为沙门氏菌系统性感染的宿主信号

## 论文信息

- **标题**: Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice
- **作者**: Lingyan Jiang, Wanwu Li, Xi Hou, Shuai Ma, Xinyue Wang, Xiaolin Yan, Bin Yang, Di Huang, Bin Liu, Lu Feng
- **机构**: 南开大学分子微生物与技术教育部重点实验室
- **期刊**: Communications Biology (2023) 6:501
- **DOI**: [10.1038/s42003-023-04876-1](https://doi.org/10.1038/s42003-023-04876-1)

---

## 概述

本研究揭示了一氧化氮（NO）在沙门氏菌（S. Typhimurium）系统性感染中的双重作用：在感染早期，宿主产生的 NO 通过激活 SPI-2 毒力岛促进细菌复制；在感染晚期，NO 则抑制细菌复制。这一发现解释了为什么沙门氏菌在小鼠中比在人类中具有更强的毒力。

---

## 核心发现

### 1. NO 的双重作用

| 感染阶段 | NO 作用 | 机制 |
|----------|---------|------|
| 早期（0-12h） | 促进复制 | 激活 SPI-2 |
| 晚期（>16h） | 抑制复制 | SPI-2 非依赖性 |

### 2. 信号通路

```
宿主 NO 产生
    ↓
Fnr 转录激活（NO 浓度依赖性）
    ↓
Fnr 结合 phoP/Q 启动子
    ↓
PhoP/Q 双组分系统激活
    ↓
SPI-2 基因表达上调
    ↓
沙门氏菌在巨噬细胞内复制增强
```

### 3. 宿主特异性

| 宿主 | NO 产生 | SPI-2 激活 | 细菌复制 |
|------|---------|-----------|---------|
| 小鼠巨噬细胞 | 高（5-20 μM） | 高 | 高 |
| 人巨噬细胞 | 低（<1 μM） | 低 | 低 |

---

## 关键概念

### 一氧化氮（NO）

NO 是宿主先天免疫反应的重要效应分子，由诱导型一氧化氮合酶（iNOS）催化产生。在感染过程中，NO 具有双重功能：
- **抗菌作用**: 高浓度 NO 可抑制病原体生长
- **信号传导**: 低浓度 NO 可作为宿主信号被病原体利用

### SPI-2 毒力岛

SPI-2（Salmonella Pathogenicity Island 2）编码 III 型分泌系统（T3SS），是沙门氏菌在巨噬细胞内生存和复制的关键毒力因子。

**主要功能：**
- 形成沙门氏菌含液泡（SCV）
- 注入效应蛋白到宿主细胞
- 促进细胞内复制

**调控系统：**
- SsrA/SsrB 双组分系统（主调控因子）
- PhoP/Q 双组分系统（上游调控）

### Fnr 转录因子

Fnr 是全局性厌氧调控因子，也是 NO 响应调控因子。

**NO 调控机制：**
- 低浓度 NO（10-40 μM）：激活 fnr 转录
- 高浓度 NO：通过 [4Fe-4S] 簇硝化使 Fnr 失活

**功能：**
- 直接结合 phoP/Q 启动子
- 激活 PhoP/Q 介导的 SPI-2 表达

### PhoP/Q 双组分系统

PhoP/Q 是沙门氏菌最重要的毒力调控系统之一。

**感知的宿主信号：**
- 酸性 pH
- 低 Mg²⁺ 浓度
- 抗菌肽
- 高渗透压
- NO（通过 Fnr 间接感知）

---

## 实验方法

### 1. 细胞实验

**细胞系：**
- RAW264.7（小鼠巨噬细胞）
- U937（人巨噬细胞）
- THP-1（人巨噬细胞）
- 原代小鼠骨髓来源巨噬细胞（BMDMs）
- 人外周血单核细胞（PBMCs）

**主要技术：**
- 庆大霉素保护实验
- RNA-seq 转录组分析
- qRT-PCR 基因表达分析
- 免疫荧光显微镜

### 2. 动物实验

**动物模型：**
- C57BL/6 野生型小鼠
- iNOS⁻/⁻ 免疫缺陷小鼠

**感染方式：**
- 腹腔注射（i.p.）
- 静脉注射（i.v.)

**检测指标：**
- 肝脏和脾脏细菌载量
- 存活率

### 3. 分子生物学技术

**基因操作：**
- 启动子替换（Red 重组系统）
- 基因敲除和过表达

**蛋白-DNA 相互作用：**
- 凝胶迁移实验（EMSA）
- 染色质免疫沉淀（ChIP-qPCR）

---

## 相关概念

- [[宿主-病原体相互作用]] - NO 在宿主-病原体互作中的作用
- [[先天免疫反应]] - NO 作为先天免疫效应分子
- [[细菌毒力调控]] - SPI-2 和 PhoP/Q 调控网络
- [[双组分信号系统]] - PhoP/Q 双组分系统机制
- [[III型分泌系统]] - SPI-2 编码的 T3SS

---

## 应用意义

### 1. 抗感染治疗

- 靶向 NO 信号通路可能成为新的抗感染策略
- 开发 Fnr 或 PhoP/Q 抑制剂

### 2. 疫苗开发

- 理解毒力调控机制有助于设计减毒活疫苗
- SPI-2 表达水平与毒力相关

### 3. 宿主特异性理解

- 解释沙门氏菌在不同宿主中的毒力差异
- 为人畜共患病研究提供新视角

---

## 开放问题

1. NO 如何精确调控 Fnr 转录？
2. 是否存在其他 NO 响应调控因子？
3. 这一机制是否适用于其他病原体？
4. 如何利用这一发现开发新的治疗策略？

---

## 参考文献

1. Jiang L, et al. Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice. *Communications Biology*. 2023;6:501.
2. Figueira R, Holden DW. Functions of the Salmonella pathogenicity island 2 (SPI-2) type III secretion system effectors. *Microbiology*. 2012;158:1147-1161.
3. Groisman EA. The pleiotropic two-component regulatory system PhoP-PhoQ. *J Bacteriol*. 2001;183:1835-1842.
4. Spiro S. Nitric oxide-responsive transcription regulation. *Methods Enzymol*. 2008;437:251-265.

---

*创建于: 2026-05-21*
*基于论文: s42003-023-04876-1.pdf*
