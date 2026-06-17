# Zoonotic Streptococcus Imports Glucose to Inhibit Stringent Response and Promote Growth During Meningitis

**作者**: Chen Yuan, Karthik Hullahalli, Hao Huang 等
**期刊**: Nature Microbiology (2025)
**DOI**: [10.1038/s41564-025-02194-2](https://doi.org/10.1038/s41564-025-02194-2)
**Zotero**: 右键论文 → Copy Select Item Links → 替换此处链接
**PDF**: 通过 [DOI 访问](https://doi.org/10.1038/s41564-025-02194-2)

---

## 研究背景

细菌性脑膜炎是致死率和致残率极高的感染性疾病。新兴人兽共患病原体 **马链球菌兽疫亚种（*Streptococcus equi* subsp. *zooepidemicus*，SEZ）** 在北美和欧洲的猪群中引发脑膜炎大流行，也已在全球多地导致人类致命性脑膜炎病例。感染后 SEZ 可在脑脊液（CSF）中达到极高载量（>10⁸ CFU/ml），但其如何在营养匮乏的 CSF 中实现如此惊人增殖的机制此前尚不清楚。

source:
  mineru_md: "file:///G:/zotero/llm-for-zotero-mineru/9002/full.md"
  mineru_images: "file:///G:/zotero/llm-for-zotero-mineru/9002/images"

---

## 创新点

1. **揭示 CSF 中病原菌增殖的新机制**：此前研究主要聚焦于病原体如何穿越血脑屏障，而本研究首次系统揭示了病原体 **进入 CNS 后** 如何适应 CSF 营养匮乏环境并大量增殖的分子机制。

2. **发现 PTSman 在 CSF 增殖中的核心作用**：通过 Tn-seq 筛选，发现甘露糖磷酸转移酶系统（PTSman）是 SEZ 在 CSF 中增殖的 **必需系统**。PTSman 负责葡萄糖摄取，而 CSF 中葡萄糖是唯一能支持细菌生长的碳水化合物。

3. **SEZ 特有的启动子多态性驱动组成型表达**：SEZ 的 PTSman 启动子具有 **种属特异性多态位点**，使其不受严紧反应相关转录抑制因子的抑制，实现组成型高表达。这与大肠杆菌等其他细菌中 PTS 受葡萄糖浓度调控的机制截然不同。

4. **阐明 PTSman—严紧反应信号通路**：提出了完整的分子信号模型——低葡萄糖条件下，PTSman 摄取葡萄糖 → HPr 磷酸化比例升高 → 抑制 Crp 表达 → 减少 cAMP-Crp 复合物对 *relQ* 的激活 → 降低 (p)ppGpp 水平 → **阻断严紧反应**，从而维持细菌持续增殖。

5. **提出潜在治疗靶点**：研究表明靶向 PTSman 可能是缓解 SEZ 所致神经系统损伤的策略。

---

## 实验方法

### 1. 体内感染模型与组织载量分析
- 小鼠尾静脉注射 10⁶ CFU SEZ，建立全身感染模型
- 在不同时间点（3–30 hpi）测定各器官细菌载量
- 生物发光成像（SEZluc 荧光素酶标记株）确认脑部为优势定殖部位
- 证实灌注不影响 CFU 计数，排除血管内细菌的干扰

### 2. 遗传条形码追踪（Barcoded Strains）
- 构建遗传条形码标记的 SEZ 库
- 系统感染小鼠后发现仅 **~1–10 个克隆** 入侵脑膜，但随后可增殖约 **10⁷ 倍**

### 3. 转座子插入测序（Tn-seq）
- 构建包含 ~90,000 个独立插入位点的 Himar 转座子突变体库（SEZTn），覆盖 ~62% 的潜在插入位点
- 利用立体定位仪直接将突变体库注射入小鼠脑部，绕过血脑屏障限制
- 筛选在 CSF 中增殖所必需的基因，鉴定出 **manXYZ 操纵子（PTSman）** 为关键基因

### 4. PTSman 缺失株构建与功能验证
- 构建 ΔmanY 等 PTSman 缺失突变株
- 体外生长曲线测定（含不同浓度葡萄糖的化学限定培养基 CDM）
- 体内竞争实验：野生型与突变株共感染，比较脑部 CFU

### 5. 葡萄糖摄取与代谢分析
- ¹³C 标记葡萄糖摄取实验，定量细菌葡萄糖摄入能力
- CSF 葡萄糖浓度动态监测
- 体外模拟 CSF 低糖环境中的生长实验

### 6. 转录调控分析
- **qPCR**：检测 *manXYZ* 操纵子在不同葡萄糖浓度下的表达水平
- **启动子活性分析**：比较不同链球菌种属 PTSman 启动子的转录活性
- **启动子序列比对与突变分析**：鉴定 SEZ 特异性多态位点

### 7. 严紧反应通路分析
- **薄层色谱（TLC）**：检测 (p)ppGpp 水平（严紧反应分子标志物）
- **Western Blot**：检测 HPr 磷酸化比例（P-HPr）及 Crp 蛋白表达
- **EMSA（电泳迁移率变动分析）**：验证 Crp 与 *relQ* 启动子的结合（依赖 cAMP）
- 构建 Δcrp、ΔmanYΔcrp 双缺失株，解析 PTSman—Crp—relQ—(p)ppGpp 信号轴

### 8. 统计分析
- 数据以 mean ± s.d. 表示
- 单因素方差分析（one-way ANOVA）+ Dunnett 多重比较检验

source:
  mineru_md: "file:///G:/zotero/llm-for-zotero-mineru/9002/full.md"
  mineru_images: "file:///G:/zotero/llm-for-zotero-mineru/9002/images"

---

## 核心发现总结

| 层面 | 发现 |
|------|------|
| 现象 | SEZ 在 CSF 中可达 10⁸ CFU/ml，远超其他器官 |
| 关键基因 | PTSman（manXYZ 操纵子）为 CSF 增殖所必需 |
| 分子机制 | PTSman 摄取葡萄糖 → 维持高 P-HPr → 抑制 Crp → 抑制 relQ → 阻断严紧反应 |
| 遗传基础 | SEZ PTSman 启动子的种属特异性多态性使其组成型表达，不受葡萄糖水平和严紧反应调控 |
| 转化意义 | 靶向 PTSman 可能成为防控 SEZ 脑膜炎的新策略 |

---

> *本笔记基于论文全文自动生成。*

**Tags**: #论文笔记 #微生物学 #脑膜炎 #链球菌 #PTS系统 #严紧反应 #NatureMicrobiology

Tags: #论文笔记 #微生物学 #脑膜炎 #链球菌 #PTS系统 #严紧反应 #NatureMicrobiology

