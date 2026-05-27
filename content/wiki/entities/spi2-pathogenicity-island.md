---
title: SPI-2 毒力岛
created: 2026-05-21
updated: 2026-05-21
type: entity
tags: [genomics, pathogenesis, secretion-system, salmonella]
sources: [raw/papers/s42003-023-04876-1.pdf]
confidence: high
---

# SPI-2 毒力岛

## 概述

SPI-2（Salmonella Pathogenicity Island 2）是沙门氏菌基因组中的重要毒力岛，编码 III 型分泌系统（T3SS）及其效应蛋白。SPI-2 对于沙门氏菌在巨噬细胞内的生存和复制至关重要，是系统性感染的关键毒力因子。

---

## 基因组结构

### 位置和大小
- **位置**: 沙门氏菌染色体
- **大小**: 约 40 kb
- **基因数量**: 约 40 个基因

### 基因组织

```
SPI-2 基因组
├── 核心调控区
│   ├── ssrA - 传感器激酶
│   └── ssrB - 反应调节因子
├── T3SS 结构基因
│   ├── ssa 基因簇（约 20 个基因）
│   └── 编码针状复合物和输出装置
└── 效应蛋白基因
    ├── sse 基因簇
    └── 编码分泌的效应蛋白
```

---

## 功能

### 1. III 型分泌系统（T3SS）

**结构组成：**
- 基座复合物（跨膜通道）
- 针状结构（延伸到宿主细胞）
- 转位子（在宿主膜上形成孔道）

**分泌机制：**
- 直接将效应蛋白注入宿主细胞
- 不依赖 Sec 或 Tat 途径
- 接触触发分泌

### 2. 效应蛋白

**主要效应蛋白：**
- SseB, SseC, SseD - 转位子组分
- SseF, SseG - SCV 完整性
- SifA - 沙门氏菌诱导丝状物（SIFs）
- SseL - 去泛素化酶
- SopD2 - 膜动力学

**功能分类：**
- SCV 完整性维持
- SIFs 形成
- 囊泡运输调控
- 免疫逃逸

### 3. 沙门氏菌含液泡（SCV）

**形成过程：**
1. 沙门氏菌被巨噬细胞吞噬
2. T3SS 注入效应蛋白
3. 吞噬体膜修饰
4. 形成特化的 SCV

**SCV 特征：**
- 酸性 pH（约 5.0）
- 富含溶酶体膜蛋白
- 与晚期内体/溶酶体融合受阻
- 支持细菌复制

---

## 调控网络

### 1. SsrA/SsrB 双组分系统

**SsrA（传感器激酶）：**
- 跨膜蛋白
- 感知宿主信号
- 磷酸化 SsrB

**SsrB（反应调节因子）：**
- 转录因子
- 激活所有 SPI-2 操纵子
- 主调控因子

**激活信号：**
- 酸性 pH
- 低 Mg²⁺ 浓度
- 磷酸盐饥饿
- 抗菌肽

### 2. PhoP/Q 双组分系统

**调控层级：**
```
宿主信号 → PhoQ → PhoP → ssrB 转录 → SsrB → SPI-2 基因
```

**PhoP 调控方式：**
- 转录水平：激活 ssrB
- 转录后水平：激活 ssrA

### 3. OmpR/EnvZ 系统

**功能：**
- 响应渗透压变化
- 激活 ssrA 表达
- 与 PhoP/Q 协同作用

### 4. Fnr 调控因子

**NO 依赖性激活：**
- NO 激活 fnr 转录
- Fnr 结合 phoP/Q 启动子
- 增强 PhoP/Q 介导的 SPI-2 表达

**条件特异性：**
- 仅在低 O₂ 条件下有效
- 模拟 SCV 内环境

---

## 宿主特异性

### 小鼠 vs 人类

| 特征 | 小鼠巨噬细胞 | 人巨噬细胞 |
|------|-------------|-----------|
| NO 产生 | 高（5-20 μM） | 低（<1 μM） |
| SPI-2 表达 | 高 | 低 |
| 细菌复制 | 高 | 低 |
| 毒力 | 高 | 低 |

### 种属差异的分子基础

1. **NO 产生差异**
   - 小鼠 iNOS 表达高
   - 人 iNOS 表达低

2. **SPI-2 诱导差异**
   - NO 依赖性 SPI-2 激活
   - 人巨噬细胞缺乏 NO 信号

---

## 实验方法

### 1. 基因操作

**启动子替换：**
- Red 重组系统
- Overlap extension PCR
- 生成不同表达水平的突变株

**基因敲除：**
- λ Red 重组
- 抗性基因替换
- 无痕敲除

### 2. 表达分析

**RNA-seq：**
- 全转录组分析
- 比较不同条件下的表达

**qRT-PCR：**
- 特定基因定量
- 高灵敏度检测

### 3. 功能分析

**细胞内复制：**
- 庆大霉素保护实验
- CFU 计数
- 免疫荧光计数

**毒力评估：**
- 小鼠感染实验
- 存活率曲线
- 器官细菌载量

---

## 相关概念

- [[III型分泌系统]] - T3SS 通用机制
- [[沙门氏菌致病机制]] - 沙门氏菌毒力因子
- [[宿主-病原体相互作用]] - 感染过程中的互作
- [[双组分信号系统]] - PhoP/Q 和 SsrA/SsrB 调控
- [[一氧化氮信号通路]] - NO 对 SPI-2 的调控

---

## 临床意义

### 1. 抗菌靶点

- T3SS 抑制剂开发
- 效应蛋白功能阻断
- SCV 形成干扰

### 2. 疫苗开发

- SPI-2 突变株作为减毒活疫苗
- 效应蛋白作为亚单位疫苗

### 3. 诊断标志

- SPI-2 基因检测
- 效应蛋白抗体检测

---

## 参考文献

1. Figueira R, Holden DW. Functions of the Salmonella pathogenicity island 2 (SPI-2) type III secretion system effectors. *Microbiology*. 2012;158:1147-1161.
2. Jiang L, et al. Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice. *Communications Biology*. 2023;6:501.
3. Hensel M, et al. Simultaneous identification of bacterial virulence genes by negative selection. *Science*. 1995;269:400-403.
4. Ochman H, et al. Identification of a pathogenicity island required for Salmonella survival in host cells. *J Bacteriol*. 1996;178:5380-5383.

---

*创建于: 2026-05-21*
*基于论文: s42003-023-04876-1.pdf*
