---
tags:
  - task/任务管理
  - 科研/任务
  - 博士课题
---好，那这一步我们先**只做“按细胞大类”的 PBS 组 11w vs 2w（盲肠）通路解读**，把这批 CSV 的信息统合起来，当作“时间对照背景”。之后你再让我针对某个细胞类型，我再逐个往下拆。

下面所有解读都基于你这批文件（11w 相对 2w 的上调 `3b_kegg_up_*` 和下调 `3c_kegg_down_*`），且都是 **PBS 对照组（未感染）** 的时间变化。

---

## 一、结构细胞 

（Fibroblasts、Enterocytes、Enteric neurons；PBS 组 11w vs 2w）

### 1. 间质细胞 Fibroblasts

- **上调通路：**
    
    - Virion - Lassa virus and SFTS virus
        
    - Cytoskeleton in muscle cells
        
    - Toll-like receptor signaling pathway
        
- **下调通路：**
    
    - Calcium signaling pathway
        

**解读：**  
在 PBS 条件下，随时间推移，纤维细胞一方面维持了一定的**固有免疫感知能力**（TLR 信号仍有富集），并伴随**细胞骨架相关通路上调**，说明细胞张力、形态、迁移或 ECM 互动仍在动态微调；另一方面，较广谱的 **Ca²⁺ 信号通路下调**，提示整体应激/激活阈值降低，更接近“低噪音”的稳态。

“Virion” 相关通路更多是 KEGG 把一批宿主因子打包成“病毒利用模块”，在 PBS 背景下可以理解为：**与抗病毒/抗应激相关的宿主基因处于轻度活跃状态**，而不是特异性感染。

---

### 2. 上皮细胞 Enterocytes

- **上调通路：**
    
    - Fructose and mannose metabolism
        

**解读：**  
盲肠上皮在 11w 相比 2w，**果糖/甘露糖代谢通路显著上调**，更像是一种“黏膜稳态与营养代谢适应”的信号：

- 可能反映肠道菌群、饲粮结构随时间变化后，对碳水化合物的处理模式发生细微调整；
    
- 但没有看到明显的炎症通路（如 TLR、Cytokine 轴）富集，说明 **PBS 组上皮本身并未进入炎症状态**，更多是代谢层面的重塑。
    

---

### 3. 神经元 Enteric neurons

- **上调通路：**
    
    - Cell adhesion molecules (CAMs)
        

**解读：**  
肠神经系统在 11w 显示 **细胞黏附分子通路富集**，提示：

- 肠神经元与周围细胞（神经胶质、平滑肌、免疫细胞等）的**轴突–突触、突触–基质连接**更为稳固；
    
- 更偏向于构建一个稳定的“肠–脑轴局部线路”和微环境，而不是应激性激活。
    

在 PBS 条件下，这是一个比较典型的“发育/成熟 → 稳定化”的信号，而非炎症驱动。

---

### 4. 结构类小结

- PBS 组 11w 相比 2w，**结构细胞总体没有出现“广谱炎症通路上调”**，更多是：
    
    - 上皮：代谢精细调节（糖代谢上调）
        
    - 间质：维持一定 TLR 监测 + 结构/骨架微重排
        
    - 神经元：增强细胞黏附与网络稳定性
        
- 可以把它理解为：**“随时间的生理性成熟 + 结构优化”，而不是“损伤后的修复”**。  
    这一点以后用来和 SP 感染组 11w 的“纤维化 + 慢性免疫耐受”作对照，会非常好用。
    

---

## 二、神经免疫交互细胞（FDCs）

### Follicular dendritic cells（FDCs）

- **下调通路：**
    
    - Necroptosis
        

**解读：**  
FDC 的程序性坏死（necroptosis）相关通路在 PBS 11w 明显低于 2w，说明：

- **滤泡微环境中的“坏死型炎性细胞死亡”减少**，
    
- 随时间推移，淋巴滤泡区从“结构与功能重建期”转向更为安静的“长期维持期”。
    

这为你后面在 SP 组看到的 “FDC/生发中心 可能被慢性感染重塑” 提供了一个干净的时间对照。

---

## 三、先天免疫细胞

（M1 macrophages、NK）

### 1. M1 macrophages

- **上调通路：**
    
    - Regulation of actin cytoskeleton
        
- **下调通路：**
    
    - Focal adhesion
        
    - Focal adhesion - CCE（同属黏附/ECM 相关模块）
        

**解读：**  
M1 巨噬细胞在 PBS 11w：

- 细胞骨架调控通路 **上调** → 指向迁移能力、形态变化和吞噬相关的基础结构需求仍在；
    
- 但与 ECM/基底膜紧密结合的 **Focal adhesion 通路下调** → 从“牢牢贴在某一炎症灶上”变成“更自由巡逻/监视”的模式；
    

整体可理解为：**炎症清除期已过，巨噬细胞从集中作战 → 分散巡逻**。

---

### 2. Natural killer (NK) cells

- **下调通路：**
    
    - T cell receptor signaling pathway
        
    - Th1 and Th2 cell differentiation
        
    - Th1 and Th17 cell differentiation
        

**解读：**  
NK 细胞在 PBS 11w 显示多条“类 T 细胞适应性免疫”相关通路下调：

- TCR 及 Th1/Th2/Th17 分化模块是 KEGG 把一部分**共同使用的信号因子/转录因子**打到一起的结果；
    
- 在 NK 上看到这些通路下调，可以简化理解为：**其细胞毒/炎症偏向的信号轴整体“降档”了**。
    

这符合 PBS 组在时间上从“偏高的免疫紧张度（早期）”向“更节能、更温和的稳态监控”演变。

---

## 四、适应性免疫细胞 — T 细胞谱系

（Th17、Naive CD4+ T（Tn4）、Naive CD8+ T（Tn8））

### 1. Th17 细胞

- **下调通路：**
    
    - Cytokine–cytokine receptor interaction
        

**解读：**  
Th17 是典型黏膜炎症效应 T 细胞。PBS 组 11w 中，该群体的细胞因子–受体网络整体下调，说明：

- **肠道黏膜在“无感染”背景下，随时间 Th17 轴自然收缩**，
    
- 局部基础炎症/警戒水平降低，更接近“稳态屏障 + 微生态共生”的状态。
    

---

### 2. Naive CD4+ T 细胞（Tn4）

- **上调通路：**
    
    - Efferocytosis
        
- **下调通路：**
    
    - Cytokine–cytokine receptor interaction
        

**解读：**  
Tn4 一边上调吞噬/清除死亡细胞相关的 **Efferocytosis**，一边下调广谱 **细胞因子信号：**

→ 非常像从“准备被激活的 naive 状态”调整到“偏向参与**免疫清道夫/修复性调控**”的角色，而不是向高炎症 Th1/Th17 激活方向走。

在 PBS 的时间轴上，这更符合一种 **“生理性免疫成熟 + 耗竭部分激活谱系”** 的过程。

---

### 3. Naive CD8+ T 细胞（Tn8）

- **上调通路：**
    
    - Ferroptosis
        
- **下调通路：**
    
    - Autophagy - animal
        
    - mTOR signaling pathway
        
    - Phosphatidylinositol signaling system
        
    - Progesterone-mediated oocyte maturation（共享部分信号分子）
        
    - Efferocytosis
        
    - MAPK signaling pathway
        

**解读（谨慎）：**  
Tn8 的模式比较“复杂”：

- 一方面，多个与 **生长、代谢和存活/活化** 相关的通路（mTOR、PI、MAPK、自噬）下调；
    
- 另一方面，**Ferroptosis 上调**，提示这一群体中可能有一部分细胞更易进入铁依赖性死亡轨道。
    

这可以概括为：**部分 CD8 pool 在时间推移中被“主动收缩”**，剩余群体可能是更适应当前肠道环境的一群。

---

## 五、非典型 T 细胞 — γδ T 细胞谱系

（γδT17、γδCTL）

### 1. γδT17（GdTh17）

- **上调通路：**
    
    - T cell receptor signaling pathway
        

### 2. γδCTL（GdCTL）

- **上调通路：**
    
    - T cell receptor signaling pathway
        
    - Th1 and Th2 cell differentiation
        
- **下调通路：**
    
    - C-type lectin receptor signaling pathway
        

**综合解读：**  
与经典 Th17/Naive T 不同，γδ T 亚群在 PBS 11w 中：

- **保留甚至增强了 TCR 相关信号**（尤其是 γδT17 & γδCTL），
    
- 同时减弱了 C-type Lectin 这类更偏 PRR 型的识别模块。
    

可以理解为肠道在长期稳态下，**把黏膜一线“巡逻任务”交给一批高敏感的 γδ T 细胞**，而让经典 Th17/常规 T cell 整体降档，减少非必要炎症。

---

## 六、适应性免疫 — B 细胞谱系（FcB）

### Follicular B cells（FcB）

- **下调通路：**
    
    - Glycerophospholipid metabolism
        
    - T cell receptor signaling pathway
        
    - Th1 and Th2 cell differentiation
        
    - Th1 and Th17 cell differentiation
        

**解读：**  
滤泡 B 细胞在 PBS 11w：

- 下调了与 **T 细胞帮助、分化方向（Th1/Th2/Th17）相关联的一整串信号**，
    
- 同时**脂质代谢**（Glycerophospholipid metabolism）也下降。
    

说明在“无感染 + 时间推移”下，**生发中心的 B 细胞活化/分化动力明显减弱**，更偏向维持一个稳定的记忆库/低水平周转，而非高强度抗原应答。

---

## 七、PBS 组 11w vs 2w 总体图景（按大类收束）

|大类|通路变化主线|概括一句话|
|---|---|---|
|结构细胞 & 支持细胞|代谢和黏附/骨架微调，上皮糖代谢↑，纤维细胞 TLR 监测仍在|结构在“打磨 & 稳定”，不是在“修伤口”|
|神经免疫交互（FDCs、神经元）|FDC Necroptosis ↓，神经元 CAMs ↑|滤泡区炎性坏死减少，神经网络更稳定|
|先天免疫（M1、NK）|M1 从黏附→游走重排，NK 多个效应/分化通路下调|“集火作战”结束，转入低水平巡逻|
|经典 T 细胞|Th17 细胞因子轴↓，Naive CD4/8 出现调控/死亡相关通路重排|整体激活度下降，局部调控/缩编|
|γδ T 谱系|γδT17/γδCTL 的 TCR 信号↑，PRR 型通路↓|γδ T 接过“前线传感器”的角色|
|B 细胞谱系|FcB 的分化/协同信号及脂代谢↓|生发中心从“应答期”转向“静息维护期”|

---

这一版可以作为 **“PBS 时间对照的按大类总结”**，后面你要做 SP vs PBS / SP W11 vs W2 差值时，可以把它直接当作“基线模板”减掉。

下一步如果你愿意，我们可以按你的顺序，**逐个细胞类型**（比如先 Fibro → M1 → Th17 → γδT17 → FcB…）做成：

> 「Top 通路列表 + 每条通路 1–2 句功能解读」，再配一个适合写在图说里的简短 summary。

























好的，这里我按你之前定的**细胞分类顺序**，对这批 **PBS 组 盲肠 11周 vs 2周** 的 KEGG 结果做“逐个细胞类型”的功能解读。可以直接当作 SP 组 W11 vs W2 的“时间对照背景”。

---

## 1. 结构细胞 / 支持细胞：Fibroblasts（间质细胞）

**上调通路（3b_kegg_up_Cecum_Fibro）**

- **Virion – Lassa virus and SFTS virus**
    
- **Cytoskeleton in muscle cells**
    
- **Toll-like receptor signaling pathway**
    

**功能解读：**  
PBS 条件下，随时间推移，纤维细胞并不是完全“沉睡”的，它们在 11w 仍表现出：

- 通过 **TLR 信号通路** 保留一定的**固有免疫感知能力**，相当于“常备雷达”，即使没有感染刺激也维持基础监测；
    
- **Cytoskeleton in muscle cells** 上调，提示细胞骨架、应力纤维和收缩特性仍在动态调整，有利于参与 ECM 张力调节和局部微环境重塑；
    
- “Virion” 模块更多是宿主因子组合，并不意味着有病毒，而是说明纤维细胞上与“抗病毒/应激响应”相关的一些基因处于轻度活跃状态，可以理解为长期稳态下的**低水平防御准备**。
    

整体上，**Fibro 不是炎症驱动，而是维持结构与监控功能的“后台进程”**。

---

## 2. 神经-免疫交互：FDCs（滤泡树突样细胞）

**下调通路（3c_kegg_down_Cecum_FDCs）**

- **Peroxisome**
    

**功能解读：**  
Peroxisome 参与脂质代谢和 ROS 处理，在免疫细胞中也与信号转导和氧化应激有关。  
PBS 组 11w 中 FDC 的 Peroxisome 富集下调，说明：

- 滤泡区的**氧化应激和代谢活性有所降低**，
    
- 更偏向一个“低代谢、低炎症”的静息滤泡状态，有利于**维持长期 B 细胞记忆池**而不是频繁启动新的反应。
    

这为后续对比 SP 组（若 FDC 出现异常代谢或坏死）提供了干净的时间基线。

---

## 3. 先天免疫细胞

### 3.1 M1 macrophages（3b_kegg_up_Cecum_M1）

**上调通路**

- **Cytokine–cytokine receptor interaction**
    

**功能解读：**  
在未感染 PBS 条件下，M1 细胞的细胞因子–受体网络在 11w 仍有富集，说明：

- M1 并未完全消失，而是以一种**低水平、可被快速激活**的状态存在；
    
- 可以理解为肠道固有免疫的“常备火种”，在没有明显病原刺激时，保持一个**基础但非爆发性的警戒水平**。
    

这与 SP 组中早期强烈 M1 激活形成鲜明对比。

---

### 3.2 Natural killer cells（NK，3c_kegg_down_Cecum_NK）

**下调通路**

- **Glycerophospholipid metabolism**
    
- **Efferocytosis**
    

**功能解读：**

- **脂质代谢（Glycerophospholipid）下调** 提示 NK 的膜磷脂周转、信号脂质生成等整体活性下降，细胞处于更“节能”的状态；
    
- **Efferocytosis** 下调意味着 NK 参与清除凋亡细胞或调节性吞噬的能力减弱。
    

两者合并来看，PBS 11w 的 NK 更像是**从高活化的“战斗值班”回落到“静默巡逻”**，只在真正需要时才重新被唤醒。

---

## 4. 适应性免疫 — 经典 T 细胞谱系

### 4.1 Th17 T cells（3c_kegg_down_Cecum_Th17）

**下调通路**

- **Cytokine–cytokine receptor interaction**
    

**功能解读：**  
Th17 是典型的黏膜炎症放大器。其细胞因子–受体网络整体在 11w 被“压低”：

- 说明在未感染背景下，**肠黏膜并不维持高水平 Th17 炎症轴**，
    
- 更趋向遵循“屏障完整・微炎症最小化”的策略，减少不必要的自发炎症损伤。
    

这在之后对比 SP 慢性感染时 Th17 的状态非常关键。

---

### 4.2 Naive CD4+ T cells（Tn4，3b_kegg_up_Cecum_Tn4）

**上调通路**

- **Efferocytosis**
    

**功能解读：**  
Naive CD4 细胞富集 Efferocytosis 通路，提示：

- 这部分 T 细胞在 PBS 组随时间可能更多参与到**清除凋亡细胞 / 残骸**、协助免疫稳态的调节过程；
    
- 而不是朝着 Th1/Th17 高炎症分化方向发展。
    

可以理解为：**“未被强烈抗原驱动的 CD4 池，更偏稳态修复/调节功能”**。

---

### 4.3 Naive CD8+ T cells（Tn8）

**上调通路（3b_kegg_up_Cecum_Tn8）**

- **Ferroptosis**
    

**下调通路（3c_kegg_down_Cecum_Tn8）**

- **Autophagy – animal**
    
- **mTOR signaling pathway**
    
- **Phosphatidylinositol signaling system**
    
- **Progesterone-mediated oocyte maturation**（共享信号组件）
    
- **Efferocytosis**
    
- **MAPK signaling pathway**
    

**功能解读：**  
Naive CD8 的模式是“**生长/激活轴整体下调 + Ferroptosis 上调**”：

- mTOR、MAPK、PI 信号、Autophagy 下调，都指向**代谢活性、增殖/存活的基础支持减弱**；
    
- Ferroptosis 上调意味着一部分 CD8 pool 更容易进入铁依赖性细胞死亡通路；
    
- Efferocytosis 下调则提示其在稳态清除和调节方面的参与减少。
    

综合来看，这是一个典型的“**时间依赖性池子收缩 / 精简 CD8 库**”的模式：不合适或多余的 CD8 被逐步清除，保留下来的可能更匹配长期肠道环境。

---

## 5. 非典型 T 细胞 — γδ T 细胞谱系

### 5.1 γδT17 cells（3b_kegg_up_Cecum_GdTh17）

**上调通路**

- **Gap junction**
    

**功能解读：**  
γδT17 的 Gap junction 富集，提示：

- 这类细胞与周边细胞（上皮、免疫细胞、基质）之间的**电耦联/小分子交换能力增强**，
    
- 更适合作为“黏膜前线传感器”和“微环境协调者”。
    

在 PBS 背景下，这是一个很有意思的信号：**经典 Th17 被压下去，而 γδT17 以更适度、联通性更强的方式维持局部免疫监测。**

---

### 5.2 γδ Cytotoxic T cells（GdCTL，3c_kegg_down_Cecum_GdCTL）

**下调通路**

- **C-type lectin receptor signaling pathway**
    

**功能解读：**  
C-type lectin 通路是识别多糖/糖基结构的重要 PRR 轴，参与病原感知与炎症启动。  
在 γδCTL 中这一通路下调，说明：

- 它们对外源糖类模式的敏感度降低，
    
- 更不容易因轻微刺激就触发杀伤反应。
    

可以视作 PBS 时间轴下，**γδCTL 从“高警戒值班”转向“只在重大事件中出手”**的状态。

---

## 6. 适应性免疫 — B 细胞谱系：FcB（滤泡 B 细胞）

**下调通路（3c_kegg_down_Cecum_FcB）**

- **NOD-like receptor signaling pathway**
    
- **Cellular senescence**
    
- **Ferroptosis**
    
- **C-type lectin receptor signaling pathway**
    

**功能解读：**  
在滤泡 B 细胞中：

- NOD、C-type lectin 等 PRR 通路下调 → 对微生物/糖类等信号的敏感性下降；
    
- Cellular senescence、Ferroptosis 下调 → 细胞死亡和衰老相关通路降低，更多细胞被维持，而不是被大量清退。
    

整体上，这是一个向**“低炎症、低应激、高存活、长寿命记忆池”**方向的调整，符合未感染 PBS 组在时间维度上的“安静滤泡生境”。





---

## 小结：PBS 11w vs 2w 的“逐细胞类型时间轨迹”

可以一句话总结为：

> **结构和支持细胞在做“微调与成熟”，先天与适应性免疫细胞则整体“降档”，只保留 γδT 和部分 M1 作为前线哨兵，B 滤泡走向静息长寿命模式。**

这套“逐细胞类型–通路–功能”的 PBS 时间基线，后面你用来对比  
👉 SP W11 vs W2  
👉 SP W11 vs PBS W11  
都会非常好用。

如果你愿意，下一步我可以按同样格式，把 **SP W11 vs W2** 也逐个细胞类型写一版，然后你就能直接左右对照做图/写结果部分。











| **细胞大类**         | **细胞类型**                      | **通路总体方向**                  | **代表通路（示例）**                                                                                         | **功能一句话总结**                                               |
| ---------------- | ------------------------- | ----------------------- | ------------------------------------------------------------------------------------------------ | ----------------------------------------------------- |
| **结构 / 支持细胞**        | **Fibroblasts（间质细胞）**         | **先天感知 / 骨架轻度↑，Ca²⁺ 信号↓**   | **Virion 相关通路↑、Cytoskeleton in muscle cells↑、Toll-like receptor signaling↑、Calcium signaling↓**      | **在低炎症背景下维持病原监测和 ECM/细胞骨架微调，应激阈值反而下降，更接近“安静巡逻 + 结构维护”状态** |
| **结构 / 支持细胞**        | **Enterocytes（上皮细胞）**         | **糖代谢通路上调**                 | **Fructose and mannose metabolism↑**                                                                 | **随时间推移调整果糖/甘露糖代谢以适应菌群和饲粮变化，偏代谢重塑而非炎症放大，屏障维持为主**          |
| **结构 / 支持细胞**        | **Enteric neurons（肠神经元）**     | **黏附 / 连接通路上调**             | **Cell adhesion molecules (CAMs)↑**                                                                  | **加强神经–基质/神经–细胞黏附，巩固肠神经网络稳定性，为长期稳态蠕动和感觉调控打基础**            |
| **先天免疫**             | **M1 macrophages（M1 巨噬细胞）**   | **迁移 / 骨架↑，黏附 / ECM 相关↓**   | **Regulation of actin cytoskeleton↑、Focal adhesion↓、ECM-receptor interaction↓**                      | **从“牢牢贴附于炎症灶”转为“高机动巡逻者”，在低炎症环境中以监视和清除残余为主，而非强杀伤**         |
| **先天免疫**             | **NK cells**                  | **类 T 细胞样分化 / 激活模块整体下调**    | **T cell receptor signaling pathway↓、Th1/Th2/Th17 cell differentiation 相关模块↓**                       | **下调类 T 细胞分化与活化模块，降低免疫系统基础张力，避免无病原负荷时出现不必要的高强度应答**        |
| **神经–免疫交互 / 免疫支架**   | **FDCs（滤泡树突细胞）**              | **炎性细胞死亡通路下调**              | **Necroptosis↓**                                                                                     | **减少坏死型炎性细胞死亡，稳定生发中心结构，使滤泡进入“长期维持期”而非重建 / 应激状态**          |
| **适应性免疫–B 细胞谱系**     | **FcB（滤泡 B 细胞）**              | **模式识别 / 应激 / 死亡通路下调**      | **NOD-like receptor signaling↓、Cellular senescence↓、Ferroptosis↓、C-type lectin receptor signaling↓** | **构建低炎症、低细胞死亡、长寿命的记忆 B 细胞库，为后续可能的抗原刺激留出充足响应空间**           |
| **适应性免疫–T 细胞谱系**     | **Naive CD4 T（Tn4）**          | **清道夫功能↑，炎症放大倾向↓**          | **Efferocytosis↑**                                                                                   | **更偏向“清理战场 + 收尾修复”，在时间轴上提高再激活门槛，避免轻易进入强效应 CD4 应答**        |
| **适应性免疫–T 细胞谱系**     | **Naive CD8 T（Tn8）**          | **存活 / 死亡相关通路调整（精简 CD8 池）** | **Ferroptosis 及相关细胞命运通路变化**                                                                          | **对 CD8 储备池做“生理性瘦身”，倾向保留更适合长期存在的克隆，优化后续记忆与应答质量**          |
| **适应性免疫–T 细胞谱系**     | **Th17**                      | **炎症相关通路轻度微调**              | **部分 Cytokine–cytokine receptor / Th17 differentiation 模块轻度变化**                                      | **更多表现为阈值微调，而非大幅放大 IL-17 轴，维持低炎症背景下的监视性存在**               |
| **适应性免疫–T 细胞谱系**     | **Cytotoxic T（Tc）**           | **Th1/Th17 分化相关信号轻度上调**     | **Th1 and Th2 cell differentiation↑、Th1 and Th17 cell differentiation↑**                             | **反映时间维度上的功能成熟，而非急性强杀伤爆发，更像是为未来潜在抗原挑战提前做好“预备役”**          |
| **适应性免疫–T 细胞谱系（γδ）** | **γδ T 细胞谱系（GdTh17 / GdCTL）** | **连接 / 识别通路微调**             | **Gap junction↑（GdTh17）、C-type lectin receptor signaling↓（GdCTL）**                                   | **通过细胞间连接和模式识别的细微调整，维持在低炎症环境下的组织驻留巡逻和快速预警功能**             |
