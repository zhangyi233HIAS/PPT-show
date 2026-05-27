---
title: 巨噬细胞 ROS 促进沙门氏菌 aggresome 形成与抗生素持久性
created: 2026-05-21
updated: 2026-05-21
type: concept
tags: [pathogenesis, macrophage, ROS, antibiotic-persistence, aggresome, dormancy]
sources: [raw/articles/白凡-Macrophage-derived reactive oxygen species promote Salmonella aggresome formation contributing to ba/Chen 等 - 2025 - Macrophage-derived reactive oxygen species promote Salmonella aggresome formation contributing to ba.pdf]
confidence: high
---

# 巨噬细胞 ROS 促进沙门氏菌 aggresome 形成与抗生素持久性

## 论文信息

- **标题**: Macrophage‐derived reactive oxygen species promote Salmonella aggresome formation contributing to bacterial antibiotic persistence
- **作者**: Xiao Chen, Kefan Fang, Bo Li, Yingxing Li, Yuehua Ke, Weixin Ke, Tian Tian, Yifan Zhao, Linqi Wang, Jing Geng, Mark C. Leake, **Fan Bai** (白凡)
- **机构**: 北京大学 BIOPIC
- **期刊**: iMeta (2025) e70059
- **DOI**: [10.1002/imt2.70059](https://doi.org/10.1002/imt2.70059)
- **通讯作者**: Fan Bai (fbai@pku.edu.cn)

---

## 🎯 核心发现

### 一句话总结

**巨噬细胞产生的 ROS 促进沙门氏菌形成蛋白质聚集体（aggresomes），使细菌进入休眠状态，从而产生抗生素持久性（persisters），导致感染复发。**

---

## 🔬 关键发现详解

### 1. Aggresome 快速形成

| 参数 | 结果 |
|------|------|
| **形成时间** | 0.5 h.p.i.（非常快） |
| **RAW264.7 细胞** | 19.7% 细菌含有 aggresomes |
| **THP-1 细胞** | 同样观察到 aggresomes |
| **体内（小鼠 PPs）** | 2h: 29%, 120h: 71% |

**关键点：**
- Aggresome 形成与细菌生长状态无关（指数期和稳定期都能形成）
- 其他细菌（福氏志贺菌、耻垢分枝杆菌）也能形成 aggresomes
- 在成熟吞噬体（EEA1⁺ 和 LAMP1⁺）中观察到 aggresomes

### 2. ROS 是主要驱动力

| 实验 | 结果 |
|------|------|
| **ROS 处理** | 显著促进 aggresome 形成 |
| **氨基酸饥饿（SHX）** | 无影响 |
| **酸性环境** | 无影响 |
| **roGFP2 传感器** | 有 aggresomes 的细菌 ROS 水平高 1.8 倍 |
| **ROS 抑制剂** | 减少 aggresome 形成 |
| **Cybb⁻/⁻ 小鼠** | Aggresome 比例降低 |

### 3. Aggresome 促进抗生素持久性

| 指标 | 结果 |
|------|------|
| **Persister 比例** | 巨噬细胞感染后增加 10 倍 |
| **Persisters 中有 aggresomes** | **67.9%** ⭐ |
| **Aggresome 细菌成为 persister 概率** | 无 aggresome 细菌的 **8.6 倍** ⭐ |

**关键实验：**
- 时间推移成像显示：有 aggresomes 的细菌进入非增殖状态
- 在新鲜培养基中可以复苏
- ROS 诱导的 aggresomes 也促进 persister 形成
- ROS 抑制剂可恢复抗生素敏感性

### 4. (p)ppGpp 不是主要机制

| 突变株 | Persister 比例 | 结论 |
|--------|---------------|------|
| ΔrelAΔspoT | 无显著下降 | (p)ppGpp 非必需 |
| Δlon | 无显著下降 | Lon 蛋白酶非必需 |
| ΔlonΔsulA | 无显著下降 | SulA 非必需 |

**与之前研究的对比：**
- 之前研究：(p)ppGpp 和 type II TA 模块介导持久性
- 本研究：这些不是主要机制，aggresome 才是关键

### 5. Aggresome 蛋白质组分析

**779 个蛋白质**被鉴定在 aggresomes 中：

| KEGG 通路 | 代表性蛋白 | 功能影响 |
|-----------|-----------|---------|
| **核糖体** | rpsA, rplQ, rplC | 翻译受损 |
| **碳代谢** | - | 代谢紊乱 |
| **氨基酸生物合成** | asnB, trpB, gltB | 代谢稳态破坏 |
| **氧化磷酸化** | - | 能量代谢受损 |

**关键发现：**
- Aggresome 组成在感染、长时间培养和 ROS 胁迫条件下一致
- ROS 胁迫后 ATP 水平下降近 10 倍
- 有 aggresomes 的细菌 ATP 水平更低

### 6. 细菌进入休眠但保持活力

**转录组分析显示：**

| 基因类别 | 表达变化 | 含义 |
|----------|---------|------|
| **蛋白质质量控制** | ⬆️ 上调 | 应激响应 |
| **抗氧化防御** | ⬆️ 上调 | 对抗 ROS |
| **糖酵解** | ⬇️ 下调 | 代谢抑制 |
| **TCA 循环** | ⬇️ 下调 | 代谢抑制 |
| **氧化磷酸化** | ⬇️ 下调 | 代谢抑制 |
| **氨基酸代谢** | ⬇️ 下调 | 代谢抑制 |
| **SPI-1 T3SS** | ⬆️ 上调 | 毒力维持 |

**关键发现：**
- 细菌进入代谢休眠状态
- 但仍保持 SPI-1 高表达（毒力基因）
- 有 aggresomes 的细菌 SPI-1 启动子活性更高

### 7. ROS 下降促进细菌复苏

| 时间点 | ROS 水平 | SPI-2 活性 | 细菌状态 |
|--------|---------|-----------|---------|
| **1.5 h.p.i.** | 高 | 低 | 休眠 |
| **24 h.p.i.** | 下降 | ⬆️ 上调 | 复苏 |

**复苏机制：**
```
巨噬细胞 ROS 下降
    ↓
SPI-2 效应蛋白表达上调（sifA, sspH2）
    ↓
Aggresome 解聚
    ↓
细菌恢复生长和复制
    ↓
感染复发
```

---

## 🧬 双 RNA 测序（Dual RNA-seq）分析 ⭐

### 这篇论文使用了你问到的方法！

**双 RNA-seq 策略：**
- 同时分析宿主巨噬细胞和病原菌的转录组
- 解决了"背景问题"

### 宿主巨噬细胞转录组

| 基因类别 | 表达变化 | 功能 |
|----------|---------|------|
| **ROS 产生相关** | ⬆️ 上调 | 氧化爆发 |
| **营养免疫** | ⬆️ 上调 | 限制细菌营养 |
| **自噬** | ⬆️ 上调 | 清除细菌 |
| **炎症小体** | ⬆️ 上调 | 炎症反应 |

### 病原菌转录组

| 基因类别 | 表达变化 | 功能 |
|----------|---------|------|
| **蛋白质质量控制** | ⬆️ 上调 | 应激响应 |
| **抗氧化防御** | ⬆️ 上调 | 对抗 ROS |
| **糖酵解** | ⬇️ 下调 | 代谢休眠 |
| **TCA 循环** | ⬇️ 下调 | 代谢休眠 |
| **氧化磷酸化** | ⬇️ 下调 | 代谢休眠 |
| **SPI-1 T3SS** | ⬆️ 上调 | 毒力维持 |

### Dual RNA-seq 技术要点

| 步骤 | 方法 | 备注 |
|------|------|------|
| **RNA 提取** | 感染细胞总 RNA | 包含宿主+细菌 RNA |
| **文库构建** | 去除 rRNA | 保留 mRNA |
| **测序** | 深度测序 | >100M reads |
| **数据比对** | 双基因组比对 | 宿主+细菌分开 |
| **分析** | 分别分析 DEGs | 宿主和细菌独立分析 |

---

## 🔄 完整感染周期模型

```
阶段 1: 巨噬细胞吞噬沙门氏菌
    ↓
阶段 2: 巨噬细胞产生 ROS（氧化爆发）
    ↓
阶段 3: ROS 促进细菌 aggresome 形成
    ↓
阶段 4: 细菌进入代谢休眠状态
    ↓
阶段 5: 休眠细菌对抗生素产生持久性（persisters）
    ↓
阶段 6: 巨噬细胞 ROS 水平下降
    ↓
阶段 7: SPI-2 表达上调
    ↓
阶段 8: Aggresome 解聚，细菌复苏
    ↓
阶段 9: 细菌复制，感染复发
```

---
## ✅ 论文分析完成！

### 📄 论文信息

**标题**: Macrophage‐derived reactive oxygen species promote Salmonella aggresome formation contributing to bacterial antibiotic persistence  
**作者**: Xiao Chen, Kefan Fang 等, **Fan Bai (白凡)** 通讯作者  
**机构**: 北京大学 BIOPIC  
**期刊**: iMeta (2025)  
**DOI**: 10.1002/imt2.70059

---

## 🎯 核心发现

### 1. ROS → Aggresome → 抗生素持久性

```
巨噬细胞 ROS 产生
    ↓
沙门氏菌蛋白质聚集体（aggresomes）形成
    ↓
细菌进入代谢休眠
    ↓
对抗生素产生持久性（persisters）
    ↓
感染复发
```

### 2. 关键数据

| 指标 | 数值 | 意义 |
|------|------|------|
| Aggresome 形成时间 | **0.5 h.p.i.** | 快速响应 |
| 有 aggresome 的细菌比例 | 19.7% | 亚群形成 |
| **Persisters 中有 aggresome** | **67.9%** ⭐ | 主要贡献 |
| Aggresome 细菌成为 persister 概率 | **8.6×** | 高风险 |
| ATP 下降 | ~10 倍 | 代谢休眠 |

### 3. Aggresome 蛋白质组

| KEGG 通路 | 代表性蛋白 | 功能影响 |
|-----------|-----------|---------|
| 核糖体 | rpsA, rplQ, rplC | 翻译受损 |
| 碳代谢 | - | 代谢紊乱 |
| 氨基酸生物合成 | asnB, trpB, gltB | 代谢稳态破坏 |
| 氧化磷酸化 | - | 能量代谢受损 |

---

## 🧬 Dual RNA-seq 分析 ⭐

**这篇论文使用了双 RNA 测序，同时分析宿主和病原菌转录组！**

### 宿主巨噬细胞转录组

| 基因类别 | 表达变化 | 功能 |
|----------|---------|------|
| ROS 产生相关 | ⬆️ 上调 | 氧化爆发 |
| 营养免疫 | ⬆️ 上调 | 限制细菌营养 |
| 自噬 | ⬆️ 上调 | 清除细菌 |
| 炎症小体 | ⬆️ 上调 | 炎症反应 |

### 病原菌转录组

| 基因类别 | 表达变化 | 功能 |
|----------|---------|------|
| 蛋白质质量控制 | ⬆️ 上调 | 应激响应 |
| 抗氧化防御 | ⬆️ 上调 | 对抗 ROS |
| 糖酵解 | ⬇️ 下调 | 代谢休眠 |
| TCA 循环 | ⬇️ 下调 | 代谢休眠 |
| **SPI-1 T3SS** | ⬆️ 上调 | 毒力维持 ⭐ |

**关键发现：**
- 细菌进入代谢休眠
- 但仍保持 **SPI-1 高表达**（毒力基因）
- 有 aggresomes 的细菌 SPI-1 启动子活性更高

---

## 🔄 复苏机制

```
巨噬细胞 ROS 水平下降（24h）
    ↓
SPI-2 效应蛋白表达上调（sifA, sspH2）
    ↓
Aggresome 解聚
    ↓
细菌恢复生长和复制
    ↓
感染复发
```

---

## 📂 Wiki 更新

```
wiki/concepts/
├── ros-aggresome-antibiotic-persistence.md  ← 新创建
├── salmonella-gallinarum-macrophage-interaction.md
├── no-salmonella-virulence.md
└── rnaseq-differential-expression.md
```

---

## 💡 回答你之前的问题

**"转录组分析是宿主的还是病原菌的？"**

**两篇论文的对比：**

| 论文 | 分析对象 | 方法 | 参考基因组 |
|------|---------|------|-----------|
| Huang 2019 | **仅宿主** | 单一 RNA-seq | 鸡基因组 |
| Chen 2025 | **宿主 + 细菌** | **Dual RNA-seq** ⭐ | 双基因组 |

**Chen 2025 的方法：**
- 提取感染细胞总 RNA
- 同时比对宿主和细菌基因组
- 分别分析宿主和细菌 DEGs
- 深度测序（>100M reads）

这就是你问到的"背景问题"的解决方案！

---

需要我继续分析其他论文吗？或者将这些知识页面进行对比分析？
## 💊 临床意义

### 1. 抗生素治疗失败的新机制

- 传统观点：耐药基因导致治疗失败
- 新观点：aggresome 介导的持久性导致感染复发
- 这是**表型耐药**，不是遗传耐药

### 2. 新的治疗靶点

| 靶点 | 策略 | 预期效果 |
|------|------|---------|
| **ROS** | 抑制 ROS 产生 | 减少 aggresome 形成 |
| **Aggresome** | 促进 aggresome 解聚 | 恢复抗生素敏感性 |
| **SPI-2** | 促进 SPI-2 表达 | 加速细菌复苏（可控） |

### 3. 诊断标志物

- Aggresome 形成可能作为 persister 细菌的标志
- 有助于预测感染复发风险

---

## 🆚 与其他研究的对比

| 机制 | 本研究 | 之前研究 |
|------|--------|---------|
| **主要驱动力** | ROS → Aggresome | (p)ppGpp, Type II TA |
| **persister 比例** | 67.9% 有 aggresomes | - |
| **代谢状态** | 休眠但有 SPI-1 | 休眠 |
| **复苏机制** | ROS 下降 → SPI-2 | - |
| **体内验证** | ✅ 小鼠模型 | 部分 |

---

## 🔗 与其他研究的关联

### 与 NO 沙门氏菌研究的对比

| 方面 | ROS 研究（本论文） | NO 研究（Huang 2019） |
|------|-------------------|----------------------|
| **活性氧/氮** | ROS | NO |
| **作用** | 促进 aggresome | 促进 SPI-2 |
| **细菌状态** | 休眠 | 复制 |
| **抗生素敏感性** | 降低（持久性） | - |
| **感染结局** | 复发 | 系统性感染 |

### 与宿主特异性沙门氏菌研究的关联

- S. Gallinarum 感染诱导更高 NO
- NO 可能也影响 aggresome 形成？
- 需要进一步研究

---

## 📋 关键数据总结

| 指标 | 数值 | 意义 |
|------|------|------|
| Aggresome 形成时间 | 0.5 h.p.i. | 快速响应 |
| 有 aggresome 的细菌比例 | 19.7% | 亚群形成 |
| Persisters 中有 aggresome | 67.9% | 主要贡献 |
| Aggresome 细菌成为 persister 概率 | 8.6× | 高风险 |
| ATP 下降 | ~10 倍 | 代谢休眠 |
| 体内 aggresome 比例（120h） | 71% | 持续增加 |

---

## 相关概念

- [[抗生素持久性]] - Persisters 的形成机制
- [[ROS 与感染]] - 活性氧在感染中的双重作用
- [[细菌休眠]] - 代谢休眠与抗性
- [[巨噬细胞杀菌机制]] - 巨噬细胞如何清除细菌
- [[沙门氏菌 SPI-2 毒力岛]] - SPI-2 在细胞内存活中的作用

---

## 参考文献

1. Chen X, et al. Macrophage‐derived reactive oxygen species promote Salmonella aggresome formation contributing to bacterial antibiotic persistence. *iMeta*. 2025;e70059.
2. Pu Y, et al. Drug-tolerant persister cells are vulnerable to collective drug sensitivity modulation. *Cell*. 2022.
3. Molmeret M, et al. Macrophage-induced bacterial dormancy. *Science*. 2004.

---

*创建于: 2026-05-21*
*基于论文: Chen et al., 2025*
