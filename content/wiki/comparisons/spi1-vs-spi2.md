---
title: SPI-1 vs SPI-2 毒力岛比较
created: 2026-05-21
updated: 2026-05-21
type: comparison
tags: [genomics, pathogenesis, salmonella, comparison]
sources: [raw/papers/s42003-023-04876-1.pdf]
confidence: high
---

# SPI-1 vs SPI-2 毒力岛比较

## 概述

沙门氏菌拥有两个主要的毒力岛（SPI-1 和 SPI-2），它们编码不同的 III 型分泌系统，在感染的不同阶段发挥关键作用。

---

## 比较维度

| 特征 | SPI-1 | SPI-2 |
|------|-------|-------|
| **大小** | ~40 kb | ~40 kb |
| **位置** | 染色体 | 染色体 |
| **主要功能** | 细菌入侵 | 细胞内生存 |
| **感染阶段** | 早期（入侵） | 晚期（复制） |
| **分泌系统** | T3SS-1 | T3SS-2 |
| **主调控因子** | InvF | SsrB |
| **激活信号** | 接触、渗透压 | 酸性 pH、低 Mg²⁺ |

---

## 功能比较

### SPI-1：细菌入侵

**主要功能：**
- 介导上皮细胞入侵
- 触发肌动蛋白重排
- 诱导膜皱褶形成

**关键效应蛋白：**
- SipA, SipC - 肌动蛋白结合
- SopE, SopE2 - Rho GTPase 激活
- SopB - 磷酸肌醇磷酸酶
- SptP - GAP 活性

**作用机制：**
```
细菌接触 → T3SS-1 激活 → 效应蛋白注入 → 
肌动蛋白重排 → 膜皱褶 → 细菌内化
```

### SPI-2：细胞内生存

**主要功能：**
- SCV 完整性维持
- SIFs 形成
- 囊泡运输调控
- 免疫逃逸

**关键效应蛋白：**
- SifA - SIFs 形成
- SseF, SseG - SCV 定位
- SseL - 去泛素化
- SopD2 - 膜动力学

**作用机制：**
```
吞噬 → T3SS-2 激活 → 效应蛋白注入 → 
SCV 修饰 → 细菌复制 → 细胞间传播
```

---

## 调控网络比较

### SPI-1 调控

**层级结构：**
```
环境信号 → HilA → InvF → SPI-1 基因
```

**激活信号：**
- 高渗透压
- 接触
- 胆汁盐
- 短链脂肪酸

**调控因子：**
- HilA - 主调控因子
- InvF - SPI-1 基因激活
- HilC, HilD, RtsA - 辅助调控

### SPI-2 调控

**层级结构：**
```
宿主信号 → PhoP/Q → SsrA/SsrB → SPI-2 基因
         ↓
       Fnr → PhoP/Q（NO 依赖性）
```

**激活信号：**
- 酸性 pH
- 低 Mg²⁺ 浓度
- 磷酸盐饥饿
- 抗菌肽
- NO（通过 Fnr）

**调控因子：**
- SsrA/SsrB - 主调控因子
- PhoP/Q - 上游调控
- OmpR - 辅助调控
- Fnr - NO 依赖性调控

---

## 宿主细胞定位

### SPI-1

**作用位点：**
- 上皮细胞表面
- M 细胞
- 巨噬细胞（初始接触）

**感染途径：**
- 肠道感染
- Peyer 斑入侵

### SPI-2

**作用位点：**
- 巨噬细胞内
- SCV 内
- 肝脏和脾脏

**感染途径：**
- 系统性传播
- 血液播散

---

## 宿主特异性

### SPI-1

| 宿主 | 入侵效率 | 临床表现 |
|------|---------|---------|
| 人 | 高 | 胃肠炎 |
| 小鼠 | 高 | 胃肠炎 |
| 鸡 | 高 | 禽伤寒 |

### SPI-2

| 宿主 | 复制效率 | 临床表现 | NO 产生 |
|------|---------|---------|---------|
| 人 | 低 | 局限性感染 | 低 |
| 小鼠 | 高 | 系统性感染 | 高 |

**宿主差异的分子基础：**
- NO 产生差异影响 SPI-2 激活
- 小鼠巨噬细胞产生高水平 NO
- 人巨噬细胞产生低水平 NO

---

## 实验方法比较

### SPI-1 研究

**入侵实验：**
- 上皮细胞感染
- 内化效率测定
- 肌动蛋白染色

**基因表达：**
- 高渗透压诱导
- 接触诱导

### SPI-2 研究

**细胞内复制：**
- 庆大霉素保护实验
- 巨噬细胞感染
- SCV 定位分析

**基因表达：**
- 酸性 pH 诱导
- 低 Mg²⁺ 诱导
- 巨噬细胞内诱导

---

## 临床意义

### SPI-1

**抗菌策略：**
- T3SS-1 抑制剂
- 入侵阻断
- 疫苗靶点

**诊断：**
- 入侵表型检测
- SPI-1 基因检测

### SPI-2

**抗菌策略：**
- T3SS-2 抑制剂
- 细胞内杀伤增强
- SCV 破坏

**诊断：**
- 系统性感染标志
- SPI-2 基因检测

---

## 进化意义

### 毒力岛起源

**SPI-1：**
- 水平基因转移
- 与志贺氏菌同源
- 保守性高

**SPI-2：**
- 水平基因转移
- 沙门氏菌特异
- 与宿主适应相关

### 功能分工

**进化优势：**
- SPI-1：高效入侵
- SPI-2：细胞内生存
- 协同作用：完整感染周期

---

## 相关概念

- [[III型分泌系统]] - T3SS 通用机制
- [[沙门氏菌致病机制]] - 完整感染周期
- [[宿主-病原体相互作用]] - 感染过程中的互作
- [[一氧化氮信号通路]] - NO 对 SPI-2 的调控
- [[细菌毒力岛]] - 毒力岛的进化和功能

---

## 总结

| 方面 | SPI-1 | SPI-2 |
|------|-------|-------|
| **核心功能** | 入侵 | 生存 |
| **感染阶段** | 早期 | 晚期 |
| **作用位点** | 细胞表面 | 细胞内 |
| **宿主范围** | 广泛 | 宿主特异 |
| **调控复杂性** | 中等 | 高 |
| **临床意义** | 胃肠炎 | 系统性感染 |

---

## 参考文献

1. Figueira R, Holden DW. Functions of the Salmonella pathogenicity island 2 (SPI-2) type III secretion system effectors. *Microbiology*. 2012;158:1147-1161.
2. Jiang L, et al. Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice. *Communications Biology*. 2023;6:501.
3. Galán JE, Curtiss R 3rd. Cloning and molecular characterization of genes whose products allow Salmonella typhimurium to penetrate tissue culture cells. *Proc Natl Acad Sci U S A*. 1989;86:6383-6387.
4. Hensel M, et al. Simultaneous identification of bacterial virulence genes by negative selection. *Science*. 1995;269:400-403.

---

*创建于: 2026-05-21*
*基于论文: s42003-023-04876-1.pdf*
