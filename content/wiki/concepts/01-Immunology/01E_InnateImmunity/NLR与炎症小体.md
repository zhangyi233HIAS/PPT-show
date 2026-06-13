---
title: "NLR与炎症小体"
type: concept-note
level: PhD
tags: [免疫学]
created: 2026-06-11
merged_from: 核苷酸结合寡聚结构域样受体, 杀伤和降解, CC亚家族, ILC1, 固有淋巴样细胞
---

# 核苷酸结合寡聚结构域样受体与炎症小体的激活机制
**Activation Mechanisms of NOD-like Receptors and Inflammasomes**

## 1. 核苷酸结合寡聚结构域样受体 (NOD-like Receptors, NLRs) 概述
核苷酸结合寡聚结构域样受体是模式识别受体（Pattern Recognition Receptors, PRRs）中的一个重要家族，主要位于细胞质中，负责侦测**病原相关分子模式 (Pathogen-Associated Molecular Patterns, PAMPs)** 和**损伤相关分子模式 (Damage-Associated Molecular Patterns, DAMPs)**。其结构具有高度保守性。

### 1.1 NLRs 的结构域
典型的NLR包含三个结构域：
- **N端效应结构域 (N-terminal effector domain)**：决定信号传导方式，是分类的主要依据。
  - **酸性反式激活结构域** (AD)
  - **杆状病毒抑制凋亡重复结构域** (BIR)
  - **半胱天冬酶招募结构域** (CARD)
  - **热蛋白样结构域** (PYD)
- **中央核苷酸结合和寡聚化结构域 (Central nucleotide-binding and oligomerization domain, NACHT/NOD)**：负责结合ATP/GTP，并介导自身寡聚化，是NLRs激活的核心。
- **C端富亮氨酸重复结构域 (Leucine-rich repeats, LRRs)**：负责识别配体（PAMPs/DAMPs），并可能参与自抑制。

```
+-------------------------------------------+
|                NLR Structure              |
+-------------------------------------------+
| N-terminal |   NACHT    |     LRRs      |
|  Domain    | (NOD)     |               |
|  (PYD,     |  Bind      |   Ligand      |
|   CARD,    |  ATP/GTP,  |   sensing     |
|   BIR)     |  Oligomer. |               |
+------------+------------+---------------+
      ^            ^              ^
      |            |              |
 Effector    Activation     Recognition
   site        switch        of PAMPs/DAMPs
```
*Fig 1. NLR结构域示意图。*
[[核苷酸结合寡聚结构域样受体]] [[模式识别受体]] [[病原相关分子模式]] [[损伤相关分子模式]]

### 1.2 NLRs 的主要功能亚群
根据N端结构域的不同，NLRs主要分为几个亚家族，功能各异：
- **NLRA亚家族 (Acidic AD domain)**：例如CIITA，主要调控MHC-II类分子的表达。
- **NLRB亚家族 (BIR domain)**：例如NAIP，是**NLRC4炎症小体**的特异性配体传感器。
- **NLRC亚家族 (CARD domain)**：例如**NOD1**和**NOD2**，识别细菌肽聚糖片段（如γ-D-谷氨酰-meso-二氨基庚二酸 iE-DAP 和 MurNAc-L-Ala-γ-D-Glu-meso-DAP MDP），主要激活**NF-κB**和MAPK信号通路，诱导细胞因子和趋化因子的表达，是早期的炎症警报系统。
  - [[NOD1]]：识别革兰氏阴性菌特有的iE-DAP。
  - [[NOD2]]：识别几乎所有细菌共有的MDP。
- **NLRP亚家族 (PYD domain)**：是研究最为广泛的亚家族，其成员（如**NLRP1, NLRP3, NLRC4**）能够与接头蛋白ASC（含CARD和PYD）及效应蛋白pro-Caspase-1组装成多蛋白复合体——**炎症小体 (Inflammasome)**。

## 2. 炎症小体 (Inflammasome) 的组装与激活
炎症小体是细胞质内的多蛋白复合体，是固有免疫系统的核心执行单元。其组装是高度调控的过程，旨在产生适当的炎症反应，避免过度损伤。

### 2.1 炎症小体的基本组成
一个典型的炎症小体由三部分组成：
1.  **传感器蛋白 (Sensor protein)**：即特定的NLR（如NLRP3）或ALR（如AIM2）。
2.  **接头蛋白 (Adaptor protein)**：**ASC (Apoptosis-associated speck-like protein containing a CARD)**。ASC包含一个PYD和一个CARD，起着关键的桥梁作用。
3.  **效应蛋白 (Effector protein)**：通常是**pro-Caspase-1**。在某些情况下（如非经典通路）也涉及pro-Caspase-4/5/11。

### 2.2 NLRP3炎症小体的激活机制：“两信号模型”
NLRP3是目前研究最透彻的炎症小体，其激活需要严格的双重信号控制，以防止自身免疫性疾病。
- **信号一 (Priming Signal, “启动信号”)**：
  - **来源**：TLRs（如TLR4识别LPS）或NLRs（如NOD2）被激活后，通过NF-κB通路。
  - **作用**：
    1.  **上调转录**：诱导**NLRP3**和**pro-IL-1β/ pro-IL-18**等组分的mRNA表达。
    2.  **翻译后修饰**：如NLRP3的泛素化、去泛素化（由BRCC3去泛素化酶介导），使其处于“预激活”状态。此步骤可被某些DAMPs（如ATP）快速诱导。
- **信号二 (Activation Signal, “激活信号”)**：
  - 一系列结构多样的**PAMPs/DAMPs**，如：
    - 细菌：LTA, 细菌RNA。
    - 病毒：流感病毒M2蛋白，RNA。
    - 真菌：β-葡聚糖。
    - 损伤信号：**ATP**（通过P2X7受体引起K⁺外流）、**尿酸结晶**、**胆固醇结晶**、**焦磷酸钙**、**β-淀粉样蛋白**。
    - 环境刺激：**石棉**、**硅尘**。
    - 溶酶体失稳：晶体物质内化后破坏溶酶体膜，释放**组织蛋白酶B**。
  - **共同通路**：这些多样信号最终汇聚于几个共同的细胞内事件：
    1.  **K⁺外流**：是几乎所有NLRP3激活剂的共同下游事件。
    2.  **线粒体功能障碍**：产生活性氧（mtROS）和线粒体DNA释放。
    3.  **高尔基体分散**。
    4.  **溶酶体破裂**。

```
+-----------------------------------------------------------------------+
|                 NLRP3 Inflammasome Activation: Two-Signal Model       |
+-----------------------------------------------------------------------+
|                                                                       |
|   Signal 1 (Priming)                                                  |
|   TLR/NOD ligands --> NF-κB --> ↑NLRP3, pro-IL-1β, ASC expression   |
|   Damps (ATP) --> Post-translational modifications (deubiquitination)|
|                          |                                            |
|                          V                                            |
|                  Pre-assembled NLRP3 complex                         |
|                                                                       |
|   Signal 2 (Activation)                                              |
|   [PAMPs/DAMPs] ---> [ ] K+ efflux                                   |
|   e.g., ATP,       ---> [ ] Mitochondrial ROS/DNA                    |
|         crystals,   ---> [ ] Lysosomal rupture (Cathepsin B)         |
|         bacteria    ---> [ ] Golgi dispersion                        |
|                          |                                            |
|                          V                                            |
|                   NLRP3 oligomerization & ASC recruitment            |
|                          |                                            |
|                          V                                            |
|                   ASC speck formation (nucleation)                   |
|                          |                                            |
|                          V                                            |
|                   pro-Caspase-1 recruitment & autoproteolysis       |
|                          |                                            |
|                          V                                            |
|                   Active Caspase-1 (p10/p20)                         |
|                          |                                            |
|          +--------------+------------------+                         |
|          |                                  |                         |
|          V                                  V                         |
|   Pro-IL-1β/18 cleavage          Gasdermin D cleavage               |
|          |                                  |                         |
|          V                                  V                         |
|   Mature IL-1β/18 release      N-terminal fragment (GSDMD-NT)       |
|   (via GSDMD pores/secretion)          forms pores                 |
|          |                                  |                         |
|          V                                  V                         |
|   Pyroptosis release of content & amplified inflammation            |
+-----------------------------------------------------------------------+
```
*Fig 2. NLRP3炎症小体激活的“两信号模型”及下游事件。*
[[NLRP3炎症小体]] [[两信号模型]] [[核因子κB]] [[白细胞介素-1β]] [[Gasdermin D]]

### 2.3 其他主要炎症小体及其特异性激活
- **NLRC4炎症小体**：
  - **传感器**：**NAIP**（NLRB亚家族成员）是真正的配体识别蛋白。不同的NAIPs特异性识别不同细菌鞭毛蛋白（如NAIP5/6识别鞭毛蛋白）或III型分泌系统杆状蛋白（NAIP1/2）。
  - **组装**：NAIP-配体复合物招募NLRC4，引发NLRC4自身寡聚化，进而招募ASC和pro-Caspase-1。此过程**不依赖ASC即可部分激活Caspase-1**，但ASC的存在会放大信号。
  - **特点**：主要响应**胞内革兰氏阴性菌**感染（如沙门氏菌、铜绿假单胞菌）。
- **AIM2炎症小体**：
  - **传感器**：**AIM2 (Absent in Melanoma 2)**，属于ALR（Absent in Melanoma 2 Like Receptor）家族，而非NLR。
  - **配体**：**双链DNA (dsDNA)**，来源于病毒、细菌或宿主凋亡/坏死细胞。
  - **激活**：dsDNA与AIM2的HIN200结构域结合，解除其PYD的自抑制，通过PYD-PYD相互作用招募ASC，后续组装与NLRP3类似。
- **NLRP1炎症小体**：
  - 研究主要集中于小鼠和人类特定亚型。
  - 可被**Bacillus anthracis lethal toxin**或**Toxoplasma gondii**直接激活。
  - 其激活涉及C端的**FIIND结构域**的自切割，是独特的激活机制。

## 3. 炎症小体激活的下游效应：细胞焦亡与炎症
活化的Caspase-1执行两大核心功能：
1.  **细胞因子成熟**：切割**pro-IL-1β**和**pro-IL-18**，产生成熟的、具有生物活性的**IL-1β**和**IL-18**。IL-1β是强效促炎因子，介导发热、招募中性粒细胞等；IL-18促进IFN-γ产生，协同Th1反应。
2.  **诱导细胞焦亡 (Pyroptosis)**：这是炎症小体激活的标志性细胞死亡方式。
    - **关键底物**：**Gasdermin D (GSDMD)**。
    - **过程**：活化的Caspase-1（在非经典通路中为Caspase-4/5/11）切割GSDMD，释放其N端结构域（GSDMD-NT）。GSDMD-NT寡聚化并插入细胞膜，形成**直径10-20 nm的孔洞**。
    - **后果**：
      - **离子失衡**：K⁺大量外流，Na⁺、Ca²⁺内流。
      - **细胞肿胀破裂**：内容物（包括成熟的IL-1β、IL-18、DAMPs如HMGB1、ATP）大量释放。
      - **加剧炎症**：释放的DAMPs可进一步激活邻近细胞的PRRs，形成炎症风暴。焦亡是一种**高度炎性**的细胞死亡方式。

## 4. 调控与疾病意义
NLRs/炎症小体的活性受到多层次的严格调控：
- **转录与翻译后调控**：如前述的泛素化/去泛素化。
- **负调控蛋白**：如**Pyrin**与ASC竞争结合抑制某些炎症小体；**POP (PYD-only protein)** 和**COP (CARD-only protein)** 干扰接头蛋白相互作用。
- **内源性抑制剂**：**DPP9**抑制NLRC4和NLRP1。
- **细菌效应蛋白**：某些病原体（如耶尔森菌）分泌蛋白酶（YopJ）或效应蛋白直接切割或抑制炎症小体组分。

**失调与疾病**：
- **过度激活**：导致自身炎症性疾病（如**家族性地中海热**、**Muckle-Wells综合征**——与NLRP3突变相关）、痛风、动脉粥样硬化、2型糖尿病、阿尔茨海默病（β-淀粉样蛋白激活NLRP3）、败血症。
- **激活不足**：导致免疫缺陷，增加感染易感性（如**慢性肉芽肿病**中NLRP3功能受损）。
[[细胞焦亡]] [[Gasdermin D]] [[白细胞介素-18]] [[自身炎症性疾病]] [[败血症]]

## 5. 整合与展望：NLRs/炎症小体在免疫网络中的位置
NLRs和炎症小体并非孤立存在。它们与其他免疫系统组件紧密交互：
- 与**ILC1**的相互作用：炎症小体成熟产生的**IL-18**是激活**[[ILC1]]**和NK细胞（也属于ILCs）的关键因子，促进IFN-γ产生，连接固有免疫与Th1型适应性免疫。
- 与**单核巨噬细胞系统**的关联：巨噬细胞是表达NLRs和组装炎症小体的主要细胞之一。炎症小体激活后释放的IL-1β和趋化因子（如属于**[[CC亚家族]]**的MCP-1/CCL2）强烈招募和激活单核细胞/巨噬细胞，形成正反馈循环。
- 与**细胞死亡**的交叉对话：炎症小体激活的细胞焦亡与凋亡、坏死性凋亡等过程相互影响，共同决定感染或损伤后的免疫结局。

总之，NOD样受体与炎症小体的激活机制体现了固有免疫系统感知危险、并启动适度而强大炎症反应的精密调控网络。深入理解其机制不仅揭示了基本免疫原理，也为治疗众多炎症相关疾病提供了新的靶点。

---
**核心概念网络**:
`[[模式识别受体]]` <-- `[[NLRs]]` --> `[[炎症小体]]`
`[[NLRP3]]` -- `[[两信号模型]]` --> `[[Caspase-1]]` --> `[[IL-1β]]`, `[[IL-18]]`, `[[Gasdermin D]]`, `[[细胞焦亡]]`
`[[NLRC4]]` <-- `[[NAIP]]` --> `[[鞭毛蛋白]]`
`[[AIM2]]` <-- `[[双链DNA]]`
`[[ILC1]]`, `[[NK细胞]]` <-- `[[IL-18]]`
`[[CC亚家族]]`趋化因子 <-- `[[炎症小体]]`激活后释放