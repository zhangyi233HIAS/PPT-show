---
title: "Chicken gga-miR-1306-5p targets Tollip and plays an important role in host response against Salmonel"
doi: ""
type: literature-note
created: 2026-06-08
tags: [zotero, paper-note, '#note']
source:
  zotero_item: "zotero://select/items/0/7TKEIAFB"
  zotero_pdf: "zotero://open-pdf/library/items/REDQKD67"
  mineru_md: "file:///G:/zotero/llm-for-zotero-mineru/10547/full.md"
  mineru_images: "file:///G:/zotero/llm-for-zotero-mineru/10547/images/"
  doi_url: "https://doi.org/"
---

# Chicken gga-miR-1306-5p targets Tollip and plays an important role in host response against Salmonella enteritidis infection

## 📎 快捷链接

| 类型 | 链接 |
|------|------|
| Zotero 条目 | [打开条目](zotero://select/items/0/7TKEIAFB) |
| Zotero PDF | [打开PDF](zotero://open-pdf/library/items/REDQKD67) |
| MinerU 解析 | [查看解析](file:///G:/zotero/llm-for-zotero-mineru/10547/full.md) |
| DOI | [在线查看](https://doi.org/) |

## 一、核心概念与研究背景
- **一句话总结**：本研究首次发现，鸡感染肠炎沙门氏菌后，体内一个名为 gga-miR-1306-5p 的小 RNA 会显著升高，并通过“关闭”一个名为 Tollip 的免疫抑制蛋白，从而激活下游的炎症反应来对抗感染。
- **关键概念解析**：
    - **gga-miR-1306-5p**：一种在鸡（*Gallus gallus*）中发现的微小RNA (miRNA)。miRNA 是一类短链非编码RNA，通常通过与靶基因 mRNA 的 3‘UTR 区结合来抑制其翻译或促进其降解，是基因表达的精细调控器。
    - **Tollip (Toll-interacting protein)**：一种细胞内蛋白，是 TLR (Toll-like receptor) 信号通路的负调控因子。它通过抑制 IRAK-1 的活性，从而限制 NF-κB 等转录因子的激活，是维持免疫稳态、防止过度炎症的关键“刹车”分子。
    - **TLR 通路与 NF-κB**：Toll样受体是先天性免疫系统识别病原体相关分子模式（如细菌的 LPS）的“哨兵”。LPS 等被识别后，通过 MyD88 依赖性通路激活 NF-κB，进而启动 TNF-α、IL-6、IL-1β 等促炎因子的表达，以清除病原体。Tollip 在此通路中起抑制作用。
    - **肠炎沙门氏菌 (*Salmonella enteritidis*, SE)**：一种重要的人畜共患病原体，可通过污染的禽肉和蛋类传播，是当前食品安全的重大挑战。

## 二、遭遇的瓶颈与中间问题
- **现有挑战**：
    1.  SE 感染对禽类养殖和公共卫生构成持续威胁，且其耐药性问题日益严重，急需开发新的防治策略。
    2.  miRNA 调控宿主免疫反应（尤其是 TLR 通路）的作用已被广泛认识，但针对鸡源特异性 miRNA 在抗 SE 感染中的具体功能和分子机制，特别是其与关键负调控因子的互作，仍知之甚少。
- **具体难点**：
    作者需要证明 gga-miR-1306-5p 与 Tollip 之间存在直接的靶向调控关系，并阐明这一调控如何具体影响下游炎症信号通路和抗感染应答。

## 三、揭秘过程与解决方案
- **破局思路**：采用经典的“表达变化观察 → 靶标预测与验证 → 功能与机制研究”的反向生物学研究路径。
- **一步步揭秘**：
    1.  **发现现象**：通过动物感染模型（口服 SE，10^8 CFU）和细胞模型（LPS 刺激 HD11 细胞），利用 qRT-PCR 检测发现，**gga-miR-1306-5p 的表达在感染/刺激后显著上调**。这暗示该 miRNA 可能参与宿主抗感染应答。
    2.  **锁定靶标**：利用生物信息学数据库（Findtar, RNAhybrid）预测 gga-miR-1306-5p 的潜在靶基因，发现 **Tollip 是一个高评分靶标**，其 3‘UTR 区存在与 miRNA 种子序列互补的结合位点。
    3.  **实验验证靶向关系**：通过**双荧光素酶报告基因实验**进行黄金标准验证。将 Tollip 的野生型或突变型 3‘UTR 载体与 miRNA mimic 或对照共转染 HEK293 细胞。结果表明，**过表达 gga-miR-1306-5p 能特异性地抑制含有野生型 3‘UTR 报告基因的荧光素酶活性**，而突变结合位点后则抑制作用消失，证实了直接靶向关系。
    4.  **验证调控效应**：在 HD11 细胞中，通过转染 mimic（过表达）或 inhibitor（抑制）来操纵 gga-miR-1306-5p 水平。结果发现，**过表达该 miRNA 会显著抑制内源性 Tollip 的 mRNA 和蛋白水平**，而抑制该 miRNA 则有相反效果。
    5.  **阐明功能机制**：进一步实验表明，过表达 gga-miR-1306-5p 或使用 siRNA 敲低 Tollip，均能**显著促进 LPS 刺激下促炎因子（NF-κB, TNF-α, IL-6, IL-1β）的产生**。这证明，gga-miR-1306-5p 通过靶向抑制 Tollip，解除了其对 TLR/NF-κB 通路的抑制作用，从而放大炎症反应以对抗感染。

## 四、核心技术路线
- **整体架构**：采用“体内（动物感染）-体外（细胞模型）”相结合，“表达谱分析-靶标鉴定-功能验证”的多层次研究体系。
- **关键创新点**：
    1.  **首次揭示**：在鸡中，首次直接证明 gga-miR-1306-5p 通过靶向 Tollip 调控抗 SE 感染的先天免疫应答。
    2.  **机制明确**：将 miRNA 的功能与一个关键的 TLR 通路负调控因子（Tollip）直接联系起来，阐明了从 miRNA 上调到炎症因子释放的清晰信号通路。
- **流程图**：
    ```
    SE感染/LPS刺激
         ↓
    gga-miR-1306-5p 表达上调
         ↓
    靶向结合 Tollip mRNA 3‘UTR
         ↓
    抑制 Tollip 蛋白表达
         ↓
    解除对 TLR/MyD88 通路的抑制
         ↓
    NF-κB 激活增强
         ↓
    促炎细胞因子 (TNF-α, IL-6, IL-1β) 产生增加
         ↓
    增强宿主抗菌炎症反应
    ```

## 五、结果呈现与证据链
- **核心结论**：gga-miR-1306-5p 是宿主应对 SE 感染的一种诱导性免疫调节分子，它通过直接靶向并抑制 Tollip 的表达，激活 NF-κB 信号通路，促进促炎细胞因子的产生，从而在宿主抗感染免疫中发挥重要作用。
- **证据展示**：
    1.  **表达数据**：动物组织和 HD11 细胞的 qRT-PCR 数据显示，SE 感染或 LPS 刺激后，gga-miR-1306-5p 表达量显著升高（不同时间点均有数据支持）。
    2.  **靶向验证**：双荧光素酶报告实验结果清晰显示，野生型组的荧光素酶活性被 mimic 显著抑制，而突变型组不受影响（图3）。
    3.  **功能互证**：
        - 过表达 miRNA mimic → Tollip mRNA/蛋白下调 → 促炎因子表达上调。
        - siRNA 敲低 Tollip → 促炎因子表达上调。
        - 两种处理产生的表型**高度相似**，强力证明 gga-miR-1306-5p 的功能依赖于对 Tollip 的抑制。
- **回应中间问题**：所有这些结果环环相扣，完美地回应并解决了最初提出的问题：找到了响应感染的 miRNA，确认了其直接靶标，阐明了其通过抑制免疫“刹车”分子来促进炎症的明确机制。

## 六、局限性与待解决问题
1.  **研究深度**：本文主要聚焦于 MyD88 依赖的 NF-κB 通路，但 TLR 信号也存在其他通路（如 TRIF 依赖通路），gga-miR-1306-5p/Tollip 是否影响其他通路未被探讨。
2.  **体内功能验证**：研究在细胞层面进行了详尽的功能实验，但缺乏在动物体内（如通过构建 miRNA 过表达或敲除的转基因/基因编辑鸡）进行整体功能验证，无法完全模拟复杂的体内免疫环境。
3.  **靶标特异性**：miRNA 通常靶向多个基因。本研究仅验证了 Tollip 一个靶标，不能排除 gga-miR-1306-5p 还存在其他功能靶基因，共同参与免疫调控。
4.  **临床关联性**：研究未探讨该 miRNA 表达水平与鸡群 SE 感染严重程度、清除率或生产性能之间的直接关联，其作为疾病标志物或治疗靶点的潜力有待进一步评估。

## 七、与沙门氏菌/细菌基因组学研究的关联
- **可直接借鉴的方法/思路**：
    1.  **研究范式**：本文采用的“感染诱导 miRNA 变化 → 预测靶基因 → 功能验证”范式，可用于系统挖掘其他宿主（包括哺乳动物）或病原体（如沙门氏菌自身 sRNA）中响应感染的非编码 RNA 及其调控网络。
    2.  **技术方法**：文中建立的 HD11 细胞 LPS 刺激模型、双荧光素酶报告基因验证 miRNA-靶标关系、以及利用 mimic/inhibitor/siRNA 进行功能缺失/获得实验的体系，是研究宿主-病原互作的常用且有效手段。
    3.  **调控逻辑**：病原体感染“诱导”宿主抑制自身负调控因子（如 Tollip）的 miRNA，从而“解除刹车”以增强免疫应答，这一调控逻辑具有普遍参考价值。
- **应避免的陷阱**：
    1.  **物种特异性**：鸡 gga-miR-1306-5p 的序列和调控网络在其他物种（如人、鼠）中可能不同，不可直接套用结论。
    2.  **病原特异性**：结论基于 SE 感染和 LPS（一种通用 PAMP）刺激。对其他血清型沙门氏菌或细菌的感染，该 miRNA 的响应模式和功能可能存在差异。
    3.  **过度简化**：免疫调控是复杂的网络。将 miRNA 功能简单归结于单个靶基因（Tollip），可能忽视了 miRNA 的多靶点效应和通路间的交互作用（crosstalk）。在后续研究中，进行转录组/蛋白质组等多组学分析将能提供更全面的视角。

Tags: #论文笔记 #先天免疫 #miRNA #肠炎沙门氏菌 #TLR信号通路 #禽类免疫学 #FrontiersInImmunology