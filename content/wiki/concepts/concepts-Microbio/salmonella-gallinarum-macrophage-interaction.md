---
title: 禽类宿主特异性沙门氏菌与巨噬细胞相互作用差异
created: 2026-05-21
updated: 2026-05-21
type: concept
tags: [pathogenesis, host-pathogen, salmonella, transcriptomics, macrophage, avian]
sources: [raw/articles/Interaction Differences of theAvian Host-Specific-bvsp-sp-RNASEQ-macrophages/Huang 等 - 2019 - Interaction differences of the avian host-specific salmonella enterica serovar gallinarum, the host-.pdf]
confidence: high
---

# 禽类宿主特异性沙门氏菌与巨噬细胞相互作用差异

## 论文信息

- **标题**: Interaction Differences of the Avian Host-Specific Salmonella enterica Serovar Gallinarum, the Host-Generalist S. Typhimurium, and the Cattle Host-Adapted S. Dublin with Chicken Primary Macrophage
- **作者**: Kaisong Huang, Ana Herrero-Fresno, Ida Thøfner, Søren Skov, John Elmerdahl Olsen
- **机构**: 哥本哈根大学兽医与动物科学系
- **期刊**: Infection and Immunity (2019) 87:e00552-19
- **DOI**: [10.1128/IAI.00552-19](https://doi.org/10.1128/IAI.00552-19)

---

## 核心问题

**为什么 S. Gallinarum（禽类宿主特异性沙门氏菌）比宿主通用型沙门氏菌更"特殊"？**

---

## 🔬 S. Gallinarum 的特殊性总结

### 1. 感染模式差异

| 特征 | S. Gallinarum (禽类特异性) | S. Typhimurium (宿主通用) | S. Dublin (牛适应型) |
|------|---------------------------|---------------------------|---------------------|
| **宿主范围** | 鸡（特异性） | 广泛（人、鼠、鸡等） | 牛（适应型） |
| **巨噬细胞摄取** | 低 ⬇️ | 高 ⬆️ | 高 ⬆️ |
| **细胞内存活率** | 高 ⬆️ | 低 ⬇️ | 低 ⬇️ |
| **诱导细胞死亡** | 低 ⬇️ | 高 ⬆️ | 高 ⬆️ |
| **NO 产生** | 高 ⬆️ | 低 ⬇️ | 低 ⬇️ |
| **感染持续时间** | 长期 ⬆️ | 短期 ⬇️ | 短期 ⬇️ |

### 2. 关键发现

**S. Gallinarum 的"低摄取-高存活"策略：**
- 被巨噬细胞摄取的数量比其他血清型低
- 但细胞内存活率显著更高
- 诱导的细胞死亡更少，允许长期细胞内寄生
- 这种模式与人类宿主特异性 S. Typhi 相似

---

## 🧬 病原菌基因通路分析

### SPI-1 和 SPI-2 毒力岛

| 毒力岛 | 功能 | S. Gallinarum 特点 |
|--------|------|-------------------|
| **SPI-1** | 细菌入侵上皮细胞 | 存在突变，入侵能力弱 |
| **SPI-2** | 细胞内存活和复制 | 功能完整，支持长期寄生 |

**S. Gallinarum SPI-1 突变的影响：**
- 入侵能力降低
- 但 SPI-1 不是引起禽伤寒的必需基因
- 缺失鞭毛和某些菌毛基因

### 病原菌转录组响应

| 通路 | S. Gallinarum | S. Typhimurium | S. Dublin |
|------|---------------|----------------|-----------|
| **T3SS 效应蛋白** | 中等表达 | 高表达 | 高表达 |
| **鞭毛合成** | 缺失/突变 | 完整 | 完整 |
| **菌毛基因** | 部分突变 | 完整 | 完整 |
| **代谢通路** | 基因组降解 | 完整 | 部分降解 |

---

## 🐔 宿主巨噬细胞通路响应

### 1. 差异表达基因（DEGs）统计

| 感染组 | 总 DEGs | 上调 | 下调 | 特有 DEGs |
|--------|---------|------|------|----------|
| **S. Gallinarum** | 1,114 | 699 | 415 | **449** |
| **S. Typhimurium** | 625 | 443 | 182 | 146 |
| **S. Dublin** | 656 | 451 | 205 | 43 |
| **共有 DEGs** | 367 | - | - | - |

**关键发现：** S. Gallinarum 感染触发了更全面的宿主响应（约 2 倍于其他血清型）

### 2. 共同富集通路（三种血清型）

| 通路 | 功能 | 富集程度 |
|------|------|---------|
| **Toll-like receptor** | PAMP 识别 | 高 |
| **NOD-like receptor** | 胞内病原体识别 | 高 |
| **RIG-like receptor** | 病毒 RNA 识别 | 中 |
| **MAPK** | 信号转导 | 高 |
| **JAK-STAT** | 细胞因子信号 | 高 |
| **凋亡通路** | 细胞死亡调控 | 中 |
| **细胞因子-受体互作** | 免疫调节 | 高 |
| **Salmonella infection** | 沙门氏菌感染通路 | 高 |

### 3. S. Gallinarum 特异性富集通路 ⭐

| 通路 | 关键基因 | 功能 | 意义 |
|------|---------|------|------|
| **JAK-STAT** ⭐ | CCND3, BCL2L1, SOCS1, IL23R, IL2RA, IFN-α/β | 巨噬细胞极化、凋亡调控 | S. Gallinarum 特异性富集 |
| **细胞因子-受体互作** | IL23R, IL13RA1, IL3RB | 免疫信号传导 | S. Gallinarum 特异性 |
| **卟啉和叶绿素代谢** | - | 血红素代谢 | S. Gallinarum 特异性 |
| **甘油磷脂代谢** | - | 膜脂代谢 | S. Gallinarum 特异性 |

### 4. JAK-STAT 通路特异性基因（S. Gallinarum 感染）

| 基因 | Log2 FC | P 值 | 功能 |
|------|---------|------|------|
| **IL23R** | +4.34 | 6.94E-06 | IL-23 受体，Th17 细胞分化 |
| **IL2RA** | +2.39 | 3.21E-10 | IL-2 受体，T 细胞增殖 |
| **IL13RA1** | +2.18 | 6.52E-05 | IL-13 受体，M2 极化 |
| **IFN-α/β** | +2.65 | 0.029 | 干扰素，抗病毒免疫 |
| **SOCS1** | +1.78 | 3.75E-06 | M1 极化抑制因子 ⚠️ |
| **BCL2L1** | -0.98 | 0.025 | 凋亡抑制因子 ⚠️ |
| **CCND3** | -1.05 | 0.019 | 细胞周期调控 |
| **IL3RB** | -1.15 | 0.008 | IL-3 受体 |
| **IFNAR1** | -1.21 | 0.003 | IFN-α/β 受体 |

---

## 📊 炎症反应时间动态

### 炎症因子表达变化

| 时间点 | 基因 | S. Gallinarum | S. Typhimurium | S. Dublin |
|--------|------|---------------|----------------|-----------|
| **2h** | IL-1β | ⬆️ 高 | ⬆️ 高 | ⬆️ 高 |
| **2h** | CXCLi1 | ⬆️ 高 | ⬆️ 高 | ⬆️ 高 |
| **2h** | CXCLi2 | ⬆️ 高 | ⬆️ 高 | ⬆️ 高 |
| **6h** | IL-1β | ⬇️⬇️ **显著下降** | ⬇️ 中等下降 | ⬇️ 中等下降 |
| **6h** | CXCLi1 | ⬇️⬇️ **显著下降** | ⬇️ 中等下降 | ⬇️ 中等下降 |
| **6h** | CXCLi2 | ⬇️⬇️ **显著下降** | ⬇️ 中等下降 | ⬇️ 中等下降 |

**关键发现：**
- 初始阶段（2h）：三种血清型诱导相当水平的炎症反应
- 后续阶段（6h）：S. Gallinarum 感染的炎症因子下降更显著
- 这与之前"宿主特异性血清型诱导更低炎症反应"的观点不同

### TLR 表达动态

| TLR | 2h | 6h | 趋势 |
|-----|-----|-----|------|
| **TLR4** | ⬇️ 下调 | ⬇️⬇️ 更下调 | 持续下降 |
| **TLR15** | ⬆️ 上调 | ⬆️ 上调 | 持续上升（鸡特异性） |
| **TLR5** | ⬇️ 下调 | ⬆️ 上调 | 先降后升 |

---

## 🎯 S. Gallinarum 特殊性的分子机制

### 1. JAK-STAT 通路介导的 M2 极化

```
S. Gallinarum 感染
    ↓
JAK-STAT 通路激活
    ↓
SOCS1 上调 (+1.78 倍)
    ↓
抑制 M1 极化
    ↓
促进 M2 极化
    ↓
有利于细菌长期寄生
```

**M2 极化的意义：**
- M2 型巨噬细胞是沙门氏菌偏好寄生的细胞类型
- M2 巨噬细胞杀菌能力较弱
- 有利于细菌逃避免疫清除

### 2. 凋亡调控

| 基因 | 变化 | 效果 |
|------|------|------|
| **BCL2L1** | ⬇️ 下调 | 促凋亡 |
| **BIRC2** | ⬆️ 上调 | 抗凋亡（抑制 caspase 6/3） |
| **净效果** | - | 低细胞死亡 |

### 3. NO 信号通路

```
S. Gallinarum 感染
    ↓
IFN-γ 和 CD40 高表达
    ↓
iNOS 激活
    ↓
NO 产生增加
    ↓
低浓度 NO：促进细菌 SPI-2 激活
高浓度 NO：后期抑制细菌生长
```

---

## 🔗 与其他研究的关联

### 与 S. Typhi（人类宿主特异性）的相似性

| 特征 | S. Gallinarum（鸡） | S. Typhi（人） |
|------|---------------------|----------------|
| 摄取量 | 低 | 低 |
| 存活率 | 高 | 高 |
| 细胞死亡 | 低 | 低 |
| 持续时间 | 长 | 长 |
| JAK-STAT | 富集 | - |

**结论：** 低摄取-高存活-低细胞死亡可能是宿主特异性沙门氏菌的共同特征

### 与 S. Pullorum 的关系

- S. Gallinarum bv. Pullorum 是 S. Gallinarum bv. Gallinarum 的近缘种
- 同样是禽类宿主特异性
- 在脾脏组织中也显示 JAK-STAT 通路富集

---

## 💊 临床和研究意义

### 1. 疫苗开发

- 理解 S. Gallinarum 的特殊性有助于设计更有效的疫苗
- 靶向 JAK-STAT 通路可能增强免疫保护

### 2. 抗感染策略

- 阻断 M2 极化可能增强巨噬细胞杀菌能力
- 调控 NO 产生可能影响感染结局

### 3. 宿主特异性理解

- 为其他宿主特异性病原体研究提供模型
- 揭示宿主-病原体共进化机制

---

## 📋 总结表格

### S. Gallinarum 为何更"特殊"？

| 方面 | 机制 | 结果 |
|------|------|------|
| **入侵** | SPI-1 突变 | 低摄取 |
| **存活** | SPI-2 功能完整 | 高存活率 |
| **细胞死亡** | BCL2L1↓, BIRC2↑ | 低细胞死亡 |
| **巨噬细胞极化** | JAK-STAT/SOCS1↑ | M2 极化 |
| **炎症调控** | 快速下调 IL-1β/CXCL | 免疫逃逸 |
| **NO 信号** | IFN-γ/CD40 高表达 | 双重作用 |

---

## 相关概念

- [[宿主-病原体相互作用]] - 沙门氏菌与宿主免疫系统的互作
- [[巨噬细胞极化]] - M1/M2 极化在感染中的作用
- [[JAK-STAT 信号通路]] - 细胞因子信号转导
- [[沙门氏菌毒力岛]] - SPI-1 和 SPI-2 的功能
- [[一氧化氮信号通路]] - NO 在感染中的双重作用

---

## 参考文献

1. Huang K, et al. Interaction Differences of the Avian Host-Specific Salmonella enterica Serovar Gallinarum, the Host-Generalist S. Typhimurium, and the Cattle Host-Adapted S. Dublin with Chicken Primary Macrophage. *Infect Immun*. 2019;87:e00552-19.
2. Jiang L, et al. Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice. *Commun Biol*. 2023;6:501.
3. Figueira R, Holden DW. Functions of the Salmonella pathogenicity island 2 (SPI-2) type III secretion system effectors. *Microbiology*. 2012;158:1147-1161.

---

*创建于: 2026-05-21*
*基于论文: Huang et al., 2019*
