---
title: "Transcriptome Sequencing Reveals Salmonella Flagellin Activation of Interferon-β-Related Immune Resp"
doi: "10.3390/cimb45040183"
type: literature-note
created: 2026-06-08
tags: [zotero, paper-note, '#note']
source:
  zotero_item: "zotero://select/items/0/KXR3F37Y"
  zotero_pdf: "zotero://open-pdf/library/items/AW2SHB5H"
  mineru_md: "file:///G:/zotero/llm-for-zotero-mineru/10627/full.md"
  mineru_images: "file:///G:/zotero/llm-for-zotero-mineru/10627/images/"
  doi_url: "https://doi.org/10.3390/cimb45040183"
---

# Transcriptome Sequencing Reveals Salmonella Flagellin Activation of Interferon-β-Related Immune Responses in Macrophages

## 📎 快捷链接

| 类型 | 链接 |
|------|------|
| Zotero 条目 | [打开条目](zotero://select/items/0/KXR3F37Y) |
| Zotero PDF | [打开PDF](zotero://open-pdf/library/items/AW2SHB5H) |
| MinerU 解析 | [查看解析](G:/zotero/llm-for-zotero-mineru/10627/full.md) |
| DOI | [在线查看](https://doi.org/10.3390/cimb45040183) |

## 一、核心概念与研究背景
- **一句话总结**：本研究通过RNA测序技术，揭示了沙门氏菌鞭毛蛋白(FliC)在巨噬细胞中激活I型干扰素（IFN-β）及相关干扰素刺激基因(ISGs)这一此前未被充分认识的免疫通路。
- **关键概念解析**：
    - **鞭毛蛋白 (Flagellin, FliC)**：细菌鞭毛的主要结构蛋白，是一种重要的病原体相关分子模式(PAMP)，作为疫苗佐剂潜力巨大。
    - **模式识别受体 (PRRs)**：宿主细胞识别PAMP的受体。FliC已知被TLR5（膜表面）和NLRC4（胞质内）识别。
    - **I型干扰素 (Type I Interferon, IFN-α/β)**：抗病毒和免疫调节的关键细胞因子。本研究发现FliC能显著诱导IFN-β。
    - **干扰素刺激基因 (ISGs)**：受IFN-β信号诱导表达的一系列基因，形成抗病毒和免疫调节网络。
    - **RAW264.7细胞**：小鼠单核巨噬细胞系，是研究固有免疫的常用模型。

## 二、遭遇的瓶颈与中间问题
- **现有挑战**：尽管已知鞭毛蛋白是有效的免疫佐剂，且主要通过TLR5和NLRC4发挥作用，但有证据表明其在TLR5缺陷小鼠中仍保留佐剂活性，提示存在其他未知的免疫激活通路。
- **具体难点**：
    1.  鞭毛蛋白激活巨噬细胞的完整转录谱尚不清楚。
    2.  除了已知的炎症因子（如IL-6, TNF-α），是否还存在其他关键的、未被发现的免疫激活轴？
    3.  如何严格排除痕量内毒素(LPS)污染对实验结果的干扰，确认观察到的效应是FliC本身所致？

## 三、揭秘过程与解决方案
- **破局思路**：作者摒弃了只关注已知通路的假设驱动方法，采用无偏见的**全转录组测序(RNA-Seq)**技术，全面扫描FliC刺激后巨噬细胞的基因表达变化，从而发现新的调控网络。
- **一步步揭秘**：
    1.  **第一步：全面扫描**。用1 µg/mL无内毒素FliC刺激RAW264.7细胞5小时，进行RNA-Seq。发现**2204个差异表达基因(DEGs)**。
    2.  **第二步：聚焦关键**。通过GO和KEGG通路分析，发现DEGs主要富集在免疫应答和调控相关通路。除了预期的炎症因子，**IFN-β表达显著上调**。
    3.  **第三步：锁定新轴**。进一步分析发现，与IFN-β相关的**干扰素调节因子(IRFs)**和**干扰素刺激基因(ISGs)**也发生显著上调，提示存在一个完整的“IFN-β/ISGs轴”被激活。
    4.  **第四步：严谨验证**。为排除LPS污染，设计了一系列对照实验：
        - **蛋白酶消化**：用胰蛋白酶处理FliC，其诱导IFN-β的能力丧失，而LPS不受影响。
        - **TLR4缺陷细胞系**：在**不表达TLR4的HCT116-Dual细胞**中，FliC仍能激活IRF报告系统，证明其诱导IFN-β**不依赖于LPS/TLR4途径**。
        - **多粘菌素B(PMB)中和**：用PMB中和LPS后，FliC的刺激效果不受影响。
    5.  **第五步：拓展验证**。在更生理相关的**骨髓来源巨噬细胞(BMMs)和树突状细胞(BMDCs)**中验证，确认了FliC诱导IFN-β及ISGs的现象具有普适性。

## 四、核心技术路线
- **整体架构**：**RNA-Seq发现 + 生物信息学分析 + 多层次实验验证**。
- **关键创新点**：
    1.  首次利用RNA-Seq全面解析了FliC刺激巨噬细胞的转录组，发现了**IFN-β/ISGs轴**是FliC激活固有免疫的一个重要新机制。
    2.  通过精巧的实验设计（TLR4缺陷细胞、PMB处理），**彻底排除了LPS污染的干扰**，确证了FliC的直接作用。
- **流程图**：
```
[无内毒素FliC] --> [刺激RAW264.7细胞]
        |
        v
[RNA-Seq测序与分析]
        |
        v
[发现DEGs (n=2204)] --> [GO/KEGG分析] --> [聚焦免疫相关基因]
        |                                     |
        v                                     v
[核心发现：IFN-β, IRFs, ISGs显著上调]    [已知：IL-6, TNF-α, 趋化因子等上调]
        |
        v
[多层次验证排除LPS污染] --> [在BMMs/BMDCs中验证]
        |
        v
[结论：FliC通过TLR4非依赖途径激活IFN-β/ISGs免疫轴]
```

## 五、结果呈现与证据链
- **核心结论**：沙门氏菌鞭毛蛋白(FliC)能够通过一条**不依赖于LPS/TLR4的途径**，在巨噬细胞和树突状细胞中强烈激活IFN-β及其下游的ISGs表达，揭示了其作为免疫佐剂的新机制。
- **证据展示**：
    1.  **RNA-Seq数据**：FliC处理组 vs 对照组，火山图和聚类热图显示大量DEGs，其中Ifnb1 (IFN-β)显著上调。
    2.  **qPCR与ELISA验证**：确认IFN-β mRNA和蛋白分泌水平显著升高。
    3.  **排除LPS污染**：
        - 胰蛋白酶消化实验：FliC的活性被破坏，LPS的活性不受影响。
        - **HCT116-Dual细胞实验（关键证据）**：在**TLR4阴性**细胞中，FliC仍能激活IRF-Lucia报告系统，证明其诱导IFN-β独立于TLR4。
        - PMB中和实验：PMB完全抑制了LPS诱导的IL-6，但对FliC诱导的IFN-β无影响。
    4.  **普适性验证**：在原代BMMs和BMDCs中，FliC同样上调了IFN-β、IRF1、ISG15、Mx1等基因。
- **这些结果如何回应前面提到的“中间问题”**：
    - 回应了**未知通路**：发现了IFN-β/ISGs轴。
    - 解决了**LPS污染疑虑**：通过TLR4缺陷细胞系和PMB中和，提供了决定性证据。

## 六、局限性与待解决问题
1.  **细胞模型局限性**：主要使用RAW264.7细胞系，尽管用原代细胞进行了部分验证，但体外永生细胞系与体内复杂环境仍有差距。
2.  **机制深度有待挖掘**：研究证明了FliC能诱导IFN-β/ISGs轴，但**具体通过哪一种PRR（非TLR5/TLR4）介导此效应未阐明**。论文提到可能涉及其他胞内受体或未鉴定的通路。
3.  **剂量与时间效应单一**：实验主要采用1 µg/mL FliC刺激5小时这一单一条件，未系统探索剂量-效应和时间-效应关系。
4.  **体内证据缺失**：所有实验均在体外或离体（ex vivo）完成，缺乏动物模型实验来验证该免疫轴在体内感染或疫苗佐剂效应中的具体作用和重要性。

## 七、与沙门氏菌/细菌基因组学研究的关联
- **可直接借鉴的方法/思路**：
    1.  **研究范式**：对于细菌毒力因子或免疫调节蛋白，采用**RNA-Seq无偏筛选**结合**严谨的排除污染验证**（如使用TLR4缺陷细胞系、PMB处理）是发现新免疫机制的有效路径。
    2.  **关注IFN-β/ISGs轴**：在研究沙门氏菌或其他细菌病原体与宿主巨噬细胞互作时，除传统的NF-κB通路和炎症小体外，应将**I型干扰素反应**纳入重要的考量和检测指标。
- **应避免的陷阱**：
    1.  **忽视内毒素控制**：在研究细菌蛋白（尤其是重组蛋白）的免疫活性时，必须进行严格的去内毒素处理并设置**LPS特异性对照**（如TLR4缺陷细胞、PMB中和），否则极易得出错误结论。
    2.  **过度依赖单一细胞系**：RAW264.7是便捷的模型，但其反应可能与原代细胞或体内环境存在差异。重要发现应在多种细胞模型（如原代巨噬细胞、树突状细胞）中进行验证。

Tags: #论文笔记 #免疫学 #沙门氏菌 #转录组测序 #IFN-β #鞭毛蛋白 #Current_Issues_in_Molecular_Biology