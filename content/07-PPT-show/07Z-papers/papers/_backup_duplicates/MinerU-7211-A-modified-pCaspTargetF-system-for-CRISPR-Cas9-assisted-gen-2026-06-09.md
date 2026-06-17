---
title: "A modified pCas/pTargetF system for CRISPR-Cas9-assisted genome editing in Escherichia coli"
doi: ""
type: literature-note
created: 2026-06-09
tags: [zotero, paper-note, #note]
source:
  zotero_item: "zotero://select/items/0/2SG2BLUI"
  zotero_pdf: "zotero://open-pdf/library/items/RIHGJ4QR"
  mineru_md: "file:///G:/zotero/llm-for-zotero-mineru/7211/full.md"
  mineru_images: "file:///G:/zotero/llm-for-zotero-mineru/7211/images/"
  doi_url: "https://doi.org/"
---

# A modified pCas/pTargetF system for CRISPR-Cas9-assisted genome editing in Escherichia coli

## 📎 快捷链接

| 类型 | 链接 |
|------|------|
| Zotero 条目 | [打开条目](zotero://select/items/0/2SG2BLUI) |
| Zotero PDF | [打开PDF](zotero://open-pdf/library/items/RIHGJ4QR) |
| MinerU 解析 | [查看解析](file:///G:/zotero/llm-for-zotero-mineru/7211/full.md) |
| DOI | [在线查看](https://doi.org/10.1093/gbe/evab032) |

## 一、核心概念与研究背景

-   **一句话总结**：本研究通过一系列质粒工程改造，成功解决了原有pCas/pTargetF CRISPR-Cas9基因编辑系统在工业常用菌株 *E. coli* BL21(DE3) 中失效的问题，并显著提升了系统的通用性和操作速度。
-   **关键概念解析**：
    -   **CRISPR-Cas9辅助的基因组编辑**：利用CRISPR-Cas9系统（Cas9蛋白和向导RNA）在特定基因组位点制造DNA双链断裂（DSB），结合同源重组（HR）或非同源末端连接（NHEJ）实现基因敲除、替换或插入。
    -   **pCas/pTargetF系统**：作者团队此前开发的一种双质粒系统。pCas质粒携带Cas9蛋白、λ-Red重组酶系统以及一个靶向pTargetF复制子(pMB1)的gRNA。pTargetF质粒携带靶向目的基因的gRNA。该系统通过Cas9切割pMB1来实现pTargetF质粒的消除，简化了编辑后的质粒清除流程。
    -   **gRNA-pMB1**：设计用于靶向pTargetF质粒复制子pMB1序列的gRNA。其表达会导致Cas9蛋白切割携带pMB1复制子的质粒。
    -   **pEcCas/pEcgRNA系统**：本研究改进后的新系统。pEcCas为改进的Cas9质粒，pEcgRNA为改进的gRNA质粒。
    -   **Leaky expression (泄漏表达)**：指基因在非诱导条件下仍有基础水平的转录和表达。

## 二、遭遇的瓶颈与中间问题

-   **现有挑战**：广泛使用的pCas/pTargetF系统在工业和实验室常用菌株 *E. coli* BL21(DE3) 中进行基因编辑时完全失效，无法获得转化子，极大地限制了其应用范围。
-   **具体难点**：
    1.  **菌株特异性失败**：系统在MG1655等K-12菌株中高效工作，但在BL21(DE3)中编辑`cadA`和`maeA`基因均告失败（阳性率：0/0）。
    2.  **根本原因推测**：作者推测失败的原因是BL21(DE3)中**gRNA-pMB1的泄漏表达水平更高**。持续的低水平表达导致Cas9蛋白持续切割pTargetF质粒（因其携带pMB1复制子），使得pTargetF无法在细胞中稳定维持，从而阻断了编辑流程。

## 三、揭秘过程与解决方案

-   **破局思路**：作者抓住了“gRNA-pMB1泄漏表达可能导致质粒被切割”这一核心假说，并以此为导向对整个系统进行“加固”和“优化”。
-   **一步步揭秘**：
    1.  **验证问题**：首先在BL21(DE3)中重复实验，确认pCas/pTargetF系统确实无法编辑目标基因（表1，0/0）。
    2.  **测试泄漏表达**：构建了报告系统（Supplementary Fig. S1），定量比较gRNA-pMB1在pCas和新设计的pEcCas中的表达水平，证实了在BL21(DE3)中，pCas系统存在更高的泄漏表达。
    3.  **改进质粒设计（锁定真理）**：
        -   **第一步（解决泄漏）**：将pCas上驱动gRNA-pMB1表达的强启动子`Ptrc`替换为受严格调控的`PrhaB`启动子（需要鼠李糖诱导），从源头上抑制非诱导条件下的gRNA表达。
        -   **第二步（优化温度与筛选）**：将pCas的温度敏感型复制子`pSC101ts`替换为非温度敏感型`pSC101`，使菌株能在最佳生长温度(37°C)进行全流程操作，缩短时间。同时加入`sacB`基因作为反向筛选标记，简化后续的质粒消除。
        -   **第三步（简化gRNA质粒构建）**：将pTargetF上用于插入目标gRNA的N20序列替换为`ccdB`致死基因。`ccdB`在常规克隆菌株（如DH5α）中致死，因此只有成功将N20序列替换入质粒后，才能在DH5α中存活。这省去了对重组质粒进行测序验证的步骤，节省了时间和成本。
    4.  **验证新系统**：用改进后的pEcCas/pEcgRNA系统在BL21(DE3)中编辑相同的基因，获得了极高的编辑效率（13/15）。
    5.  **扩展应用与优化流程**：将系统推广至多种E. coli菌株及其他肠杆菌科细菌（如*Tatumella citrea*），并优化了质粒消除流程，将整个周期从~7.5天缩短至~5.5天。

## 四、核心技术路线

-   **整体架构**：维持了“双质粒”分离Cas9与gRNA表达的设计，但对两个质粒都进行了关键性改造。
    ```
    pCas/pTargetF (旧) ---> pEcCas/pEcgRNA (新)
    ```
-   **关键创新点**：
    1.  **启动子严格调控**：`Ptrc` -> `PrhaB` (鼠李糖诱导)，解决gRNA-pMB1泄漏表达核心问题。
    2.  **复制子去温敏化**：`pSC101ts` -> `pSC101`，支持37°C全速生长，缩短周期。
    3.  **引入反向筛选标记**：在pCas中加入`sacB`基因，便于通过蔗糖筛选消除该质粒。
    4.  **gRNA质粒构建自验证**：用`ccdB`致死基因替换N20序列，实现“无克隆筛选”，提高效率和可靠性。
-   **流程图**：
    ```
    [pEcCas质粒构建]
        pCas 载体
          | (替换启动子 PrhaB)
          | (替换复制子 pSC101)
          | (插入 sacB 基因)
          v
        pEcCas (Addgene #73227)

    [pEcgRNA质粒构建]
        pTargetF 载体
          | (替换 N20 为 ccdB+BsaI位点)
          v
        线性化 pEcgRNA
          | (与退火的靶点寡核苷酸连接)
          v
        pEcgRNA-ΔTarget (Addgene #166581)

    [基因编辑流程]
        宿主菌 (如 BL21(DE3))
          | (导入 pEcCas)
          v
        BL21(DE3)/pEcCas
          | (阿拉伯糖诱导 λ-Red, 电转入 pEcgRNA-ΔTarget + 供体DNA)
          v
        筛选 (Kan + Spc 双抗平板)
          | (菌落PCR/测序验证阳性克隆)
          v
        编辑成功的菌株 (含 pEcCas + pEcgRNA)
          | (鼠李糖诱导，利用Cas9切割pMB1消除pEcgRNA)
          v
        仅含 pEcCas 的菌株
          | (葡萄糖培养，利用sacB反向筛选在蔗糖平板上消除pEcCas)
          v
        无质粒编辑菌株
    ```

## 五、结果呈现与证据链

-   **核心结论**：成功开发了pEcCas/pEcgRNA系统，该系统在 *E. coli* BL21(DE3)及其他多种宿主中高效工作，且操作周期更短。
-   **证据展示**：
    1.  **解决泄漏表达**：实验证明，在BL21(DE3)中，原系统pCas中gRNA-pMB1的表达水平（通过报告质粒荧光强度衡量）高于新系统pEcCas，验证了改造的必要性（Supplementary Fig. S1相关数据）。
    2.  **BL21(DE3)编辑成功**：使用pEcCas/pEcgRNA系统，在BL21(DE3)中敲除`cadA`和`maeA`基因，阳性率均达到**13/15**（表1），彻底解决了原系统的失败问题。
    3.  **广泛的宿主适用性**：系统在7种不同的E. coli菌株（BL21(DE3), BL21 StarTM (DE3), MG1655, DH5α, CGMCC3705, Nissle1917, ATCC9637）和1种其他肠杆菌科细菌（*Tatumella citrea* DSM13699）中均成功实现了基因编辑，无需特殊修改，证明了其强大的通用性。
    4.  **流程时间缩短**：质粒消除优化后，整个编辑周期（从质粒构建到获得无质粒突变株）从约7.5天缩短至约5.5天。
-   **如何回应“中间问题”**：这些结果直接回应了前述两大瓶颈：
    -   **泄漏表达问题**：通过启动子替换，降低了gRNA-pMB1的基础表达，使pEcCas/pEcgRNA系统能在泄漏表达可能较高的BL21(DE3)中稳定工作。
    -   **菌株限制问题**：新系统不再局限于MG1655，成功拓展到BL21系列及其他菌株，甚至跨物种（肠杆菌科），极大地拓宽了应用范围。

## 六、局限性与待解决问题

-   **具体局限性**：
    1.  **质粒消除流程**：尽管优化，消除两个质粒仍需额外的培养和筛选步骤（约32小时），对于需要高通量编辑的场景，仍是时间瓶颈。
    2.  **宿主范围**：系统在肠杆菌科内验证有效，但未测试更远的革兰氏阴性菌或革兰氏阳性菌，其通用性仍有界限。
    3.  **对λ-Red的依赖**：同源重组仍依赖于λ-Red重组酶系统，这限制了其在缺乏该系统或该系统效率低下的其他细菌中的应用。
    4.  **未提及的问题**：论文未详细讨论大片段敲入或基因替换的效率，也未涉及多重编辑（同时编辑多个基因）的可行性。

## 七、与沙门氏菌/细菌基因组学研究的关联

-   **可直接借鉴的方法/思路**：
    1.  **解决“系统在特定菌株失效”的思路**：当现有的CRISPR编辑工具在目标菌株（如沙门氏菌的不同血清型）中效率低下时，可以借鉴本文思路，首先排查**gRNA泄漏表达或质粒稳定性**问题。通过更换更严格的启动子（如`PrhaB`）来调控关键gRNA的表达是有效的策略。
    2.  **质粒工程优化技巧**：
        -   使用`ccdB`等致死基因实现gRNA载体的“阳性筛选”，省去测序验证，这对任何需要频繁构建新gRNA质粒的项目都极有价值。
        -   引入`sacB`等反向筛选标记，是优化质粒消除流程的通用方法。
    3.  **流程标准化**：本文对电穿孔条件、筛选步骤、质粒消除流程的详细优化，为在其他细菌中建立标准化编辑方案提供了范本。
-   **应避免的陷阱**：
    1.  **宿主特异性**：不能假设在一种细菌中有效的系统直接适用于另一种。沙门氏菌的遗传背景、转录调控环境与大肠杆菌存在差异，需要重新评估甚至改造启动子、复制子等元件。
    2.  **质粒兼容性与拷贝数**：改造质粒时需注意复制子在新宿主中的兼容性、拷贝数和温度敏感性，这直接影响系统的稳定性和编辑效率。
    3.  **诱导系统的选择**：`PrhaB`等启动子在沙门氏菌中是否仍保持严格调控，需要实验验证。不同细菌对诱导剂（如鼠李糖）的代谢和响应可能不同。

Tags: #论文笔记 #CRISPR #大肠杆菌 #基因编辑 #合成生物学 #GBE