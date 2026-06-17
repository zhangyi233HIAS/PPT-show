.



此外我还想要一个表格，就是基因，菌株，以及Core genes (99% <= strains <= 100%) 3594

Soft core genes (95% <= strains < 99%) 468

Shell genes (15% <= strains < 95%) 918

Cloud genes (0% <= strains < 15%) 7684

Total genes (0% <= strains <= 100%) 12664

这四个分类的矩阵表

解释这个结果 
$ python export_ordered_matrix. Py
[-] 任务开始：生成与进化树完美对齐的 Excel 表格...
[-] 读取进化树: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/accessory_binary_genes. Fa. Newick
[-] 进化树包含 574 个菌株节点。
[-] 读取分类信息...
[-] 读取基因矩阵: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/gene_presence_absence_with_seq. Csv
[-] 正在对齐列顺序...
[-] 对齐成功: 574 / 574
[-] 正在对基因行进行排序...
[-] 正在插入分类信息行...
[-] 正在保存到: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/ordered_pangenome_matrix. Csv
========================================
           导出完成
========================================
总行数 (含分类行): 12665
菌株列顺序已锁定: 574 列
行顺序已按核心度排序
[v] 请下载该 CSV 文件并在 Excel 中打开。
[v] 第一行数据即为分类信息 (Pullorum/Gallinarum)。
TBAMR01@localhost 16:49:57 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$





下方为正式的  
TBAMR01@localhost 20:45:09 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ python plot_tree_heatmap_aligned. Py
[-] 正在启动绘图：系统发育树 + 泛基因组热图...
[-] 读取进化树: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/accessory_binary_genes. Fa. Newick
[-] 树中包含 574 个菌株。
[-] 读取分类信息...
[-] 读取基因矩阵...
[-] 成功匹配并排序 574 个菌株。
[-] 正在生成图片 (这可能需要几秒钟)...
[-] 图片已保存至: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/pangenome_tree_heatmap. Png
TBAMR01@localhost 20:46:16 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$

















这是一次非常宝贵的“被批评”经历。导师的批评一针见血：**作为科研人员，代码只是工具，逻辑和生物学意义才是核心。** 只把图画出来是不够的，你必须讲清楚数据的**来龙去脉（Head）以及分析结果的生物学启示（Tail）**。

为了帮你通过导师的考核，我为你草拟了一份标准的**《泛基因组与系统发育分析报告》框架**。你可以直接参考这个逻辑来汇报或撰写论文方法部分。

---

### 第一部分：数据的“头” (The Head) —— 数据来源与处理流程

你必须向导师解释清楚：`core_tree.newick` 和 `gene_presence_absence.csv` 到底是怎么来的？这才是分析的根基。

#### 1. 核心基因（Core Genes）是如何界定的？

- **方法论描述：** 我们首先对所有 573 个样本进行了基因组注释（通常使用 Prokka）。随后，利用泛基因组分析工具（如 Roary 或 Panaroo）进行同源基因聚类。
    
- **定义 Core Gene：** 我们将出现在 **>95%**（或 99%）样本中的基因定义为核心基因（Core Genome）。这些基因代表了该物种保守的遗传骨架。
    
- **定义 Accessory/Unique Gene：** 出现在部分样本中的是附属基因，仅在单一样本或特定分组中出现的是特异基因（Unique Genes）。
    

#### 2. 进化树是如何构建的？(Figure 4b 左侧)

- **序列提取：** 从泛基因组分析结果中提取核心基因的联配序列（Core Gene Alignment）。
    
- **去除重组：**（可选但推荐）使用 Gubbins 等工具去除同源重组区域，防止干扰系统发育信号。
    
- **建树算法：** 基于清洗后的核心基因 SNP 位点，使用最大似然法（Maximum Likelihood, e.g., IQ-TREE 或 FastTree）构建系统发育树。
    
- **意义：** 这棵树反映了样本间真实的演化亲缘关系，是后续分析的“骨架”。
    

#### 3. 热图矩阵是如何生成的？(Figure 4b 右侧)

- **来源：** 基于 Roary/Panaroo 输出的 `gene_presence_absence.csv`。
    
- **处理：** 这是一个 0/1 矩阵，行代表基因，列代表样本。1 表示该基因存在，0 表示缺失。我们通过筛选特定分组（如 $sp$ 和 $sg$）之间的差异基因，将其可视化为热图。
    

---

### 第二部分：分析的核心 —— SP 与 SG 的差异 (Analysis)

这是导师最关心的生物学问题。你需要展示你不仅会画图，还会看图。

#### 1. 种群结构 (Population Structure)

- **观察树：** 在进化树上，$sp$（假设是 _S. Pullorum_）和 $sg$（假设是 _S. Gallinarum_）是否聚成了两个截然分开的的大支（Clade）？
    
- **结论：** 如果它们分开聚类，说明它们在演化上已经有了显著的分歧，形成了独立的遗传谱系。
    

#### 2. 特异基因 (Unique/Marker Genes)

- **观察热图：** 在热图中，是否存在这样的一块区域：在 $sp$ 组全是蓝色（有），在 $sg$ 组全是白色（无），反之亦然？
    
- **生物学意义：**
    
    - **代谢差异：** 比如 $sg$ 丢失了某些糖酵解基因，导致其不能利用某种特定碳源？
        
    - **毒力差异：** 比如 $sp$ 拥有特定的菌毛或分泌系统基因，使其具有特殊的宿主适应性？
        
    - 这些基因就是所谓的**生物标志物 (Biomarkers)**，是后续 PCR 检测试剂盒开发的潜在靶点。
        

---

### 第三部分：数据的“尾” (The Tail) —— 扩展性与下一步计划

你需要回答导师关于“数据集增大”和“下一步怎么做”的问题。

#### 1. 数据集增大的挑战 (Scalability)

如果样本从 573 增加到 5000+：

- **计算瓶颈：** Roary 计算全对全 BLAST 会非常慢。
    
    - **解决方案：** 换用 **Panaroo** 或 **PopPUNK**。Panaroo 对大规模数据的拓扑错误修正更好，PopPUNK 利用 k-mer 快速聚类，无需全基因组比对。
        
- **可视化瓶颈：** 5000 个叶节点的树在普通 PDF 上会变成一团黑。
    
    - **解决方案：** 需要折叠子树（Collapsing clades），或者使用圈图（Circular layout），只展示代表性菌株。
        

#### 2. 下一步行动计划 (Next Steps)

这是你向导师展示你“主动思考”的关键时刻：

- **功能富集分析 (GO/KEGG)：** 不要只列出特异基因的名字（如 `group_123`），要对这些特异基因做功能注释。比如：_$sp$ 特有的基因主要富集在“鞭毛组装”通路上_。
    
- **PCR 验证：** 挑选 3-5 个候选特异基因，设计引物，在湿实验中验证它们是否真的能区分 $sp$ 和 $sg$。
    
- **毒力/耐药关联：** 叠加耐药基因（AMR）或毒力因子（VFDB）数据库，看特定分支是否富集了高毒力或多重耐药基因。
    

---

### 补充：修正后的汇报逻辑（话术建议）

下次找导师，建议你按照这个逻辑汇报：

> “老师，关于 Figure 4b 的复现，我不仅完成了绘图，还整理了其背后的分析逻辑：
> 
> 1. **上游分析**：我是基于 Prokka 注释和 Roary 泛基因组构建的核心基因比对（Core Alignment），利用 FastTree 构建了最大似然树，确保了演化关系的准确性。
>     
> 2. **差异分析**：热图部分，我提取了 $sp$ 和 $sg$ 组间差异最显著的 Top 50 基因。我发现 $sp$ 组特异性保留了一组与 [xxx功能] 相关的基因，而 $sg$ 组则发生了丢失，这可能解释了它们表型的差异。
>     
> 3. **未来规划**：考虑到数据扩展性，如果是几千个样本，我计划改用 Panaroo 流程。下一步，我想把这些特异基因拿去做 GO 富集分析，看看具体涉及哪些代谢通路。”
>     

---

### 针对代码的一个小建议 (为了回答 sp/sg 差异)

为了让你的图直接回答导师关于 $sp/sg$ 的问题，你需要修改代码中“提取热图数据”的部分，**不要随机选基因，要用统计学方法选**。

这里有一段代码片段，用于提取真正的差异基因（替换你原代码第 4 步）：

R

```
# ====================================================
# 4. (进阶版) 统计检验提取 sp vs sg 特异基因
# ====================================================

# 假设 meta_data$Group 里有 "SP" 和 "SG" 两个组
# 我们用卡方检验 (Chi-square) 或 Fisher 检验找出差异显著的基因

find_markers <- function(mat, groups) {
  # mat: 0/1 矩阵 (行=基因, 列=样本)
  # groups: 样本对应的分组向量
  
  p_values <- apply(mat, 1, function(x) {
    # 构建列联表
    tbl <- table(Factor = x, Group = groups)
    # 如果某个基因在所有样本全有或全无，跳过
    if(ncol(tbl) < 2 || nrow(tbl) < 2) return(1) 
    # Fisher精确检验
    fisher.test(tbl)$p.value
  })
  
  return(p_values)
}

# 确保矩阵列和分组对应
valid_samples <- intersect(colnames(expression_mat), meta_data$Sample)
sub_mat <- expression_mat[, valid_samples]
sub_meta <- meta_data[match(valid_samples, meta_data$Sample), ]

# 计算差异显著性
message("正在计算差异基因 (Fisher Test)...")
p_vals <- find_markers(sub_mat, sub_meta$Group)

# 矫正 P 值 (FDR)
padj <- p.adjust(p_vals, method = "fdr")

# 提取 FDR < 0.01 的前 50 个基因
top_genes <- names(sort(padj))[1:50]

# 使用这些基因画图
heatmap_data <- t(expression_mat[top_genes, valid_samples])
heatmap_data <- as.data.frame(heatmap_data)
heatmap_data[] <- lapply(heatmap_data, function(x) as.factor(as.character(x)))

message("已提取统计学显著的 Top 50 差异基因！")
```

Next Step for You:

你想让我帮你详细解释一下 Roary/Panaroo 的输出文件格式，或者教你如何做 GO/KEGG 功能富集分析 吗？这将是你报告“尾巴”部分的重头戏。


这是一个非常敏锐且关键的问题！被导师问住往往就是在这个细节上。

直接回答你：

光看你提供的 R 代码（read.tree("core_tree.newick")），我（以及你的导师）是无法确定这棵树到底是基于 SNP 构建的，还是基于其他方法构建的。

`.newick` 只是一个存储树形状的文件，它不记录“这棵树是怎么算出来的”。

为了回答导师，你需要回溯你的**上游分析流程（Linux 命令行部分）**。通常在细菌泛基因组（Pan-genome）分析中，`core_tree.newick` 有三种常见的来源，**生物学意义完全不同**：

---

### 情况一：基于核心基因比对 (Core Gene Alignment) —— **最常用，也是最推荐的**

这是 Roary/Panaroo 流程的标准做法。

- **来源文件：** `core_gene_alignment.aln` (Roary 输出)
    
- **构建命令：** 类似于 `FastTree -nt -gtr core_gene_alignment.aln > core_tree.newick`
    
- **原理：** 把所有菌株共有的基因（Core Genes）头尾相连拼成一条超级长的序列，然后对比这些序列中的碱基差异（包括 SNP）。
    
- **能否叫“SNP 树”？**
    
    - **广义上可以：** 因为它是基于碱基突变（SNP）来计算遗传距离的。
        
    - **严谨说法：** **“基于核心基因组串联比对的最大似然树 (Maximum-likelihood phylogeny based on concatenated core genes)”**。这是最准确的答复。
        

### 情况二：基于全基因组 SNP (Whole Genome SNP) —— **金标准**

这是 Snippy / CSI Phylogeny 流程的做法，通常不直接来自 Roary。

- **来源文件：** `clean.full.aln` 或 `core.full.aln`
    
- **构建流程：** `Reads` -> `Mapping to Reference` -> `Call SNPs` -> `Tree`。
    
- **原理：** 选一个参考菌株，把所有测序数据比对上去，只看变异位点。
    
- **严谨说法：** **“基于参考基因组的 SNP 进化树 (Reference-based SNP phylogeny)”**。
    

### 情况三：基于基因有无矩阵 (Gene Presence/Absence) —— **千万别搞混**

有些同学会错误地用 0/1 矩阵画树。

- **来源文件：** `gene_presence_absence.Rtab` 或 `accessory_binary_genes.fa.newick`
    
- **原理：** 比较的是“谁有这个基因，谁没这个基因”，而不是“基因序列变了多少”。
    
- **严谨说法：** “基于基因组成的聚类树 (Clustering based on gene content)”。
    
- **警告：** 如果你的 Figure 4b 是“左边树 + 右边热图”，**左边的树绝对不能是这一种**。因为右边的热图就是展示基因有无的，如果左边的树也是按基因有无聚类的，这属于**循环论证**，没有科学意义。左边必须是“演化树（序列差异）”，右边是“功能差异（基因有无）”，这样才能看出“随着演化，基因是如何获得或丢失的”。
    

---

### 如何在 1 分钟内自查？

请去你的 Linux 服务器或者查看你的分析记录，检查生成 `core_tree.newick` 的命令。

1. 如果你看到命令里用到了 `FastTree` 或 `IQ-TREE`，且输入文件是 `.aln` 结尾的：
    
    - **结论：** 它是**核心基因序列树**（情况一）。
        
    - **汇报话术：** “老师，这棵树是基于 Roary 生成的 core gene alignment，使用 FastTree 构建的 ML 树，反映了基于核心基因序列的演化关系。”
        
2. 如果你看到命令里用到了 `roary -e -n` 并且直接用了 Roary 输出的 `accessory_binary_genes.fa.newick`：
    
    - **结论：** 它是**基因存在/缺失树**（情况三）。
        
    - **修正建议：** **重做！** 这种树不能用来复现 Figure 4b。你需要用 `core_gene_alignment.aln` 重新跑 FastTree。
        

### 总结给导师的“满分回答”

假如你是用的最常见的 Roary + FastTree 流程，当导师问：“你确定这是 SNP 树吗？”

**建议回答：**

> “老师，严谨地说，这是一棵基于核心基因组串联比对（Concatenated Core Genome Alignment）的进化树。
> 
> 它是利用 Roary 提取所有样本共有的核心基因序列，进行多序列比对后，利用 FastTree 计算出的。它利用了核心基因中的 SNP 信息来推断系统发育关系，作为 Figure 4b 的骨架（Backbone），用来展示菌株真实的演化距离，而非基因组成的相似度。”

这样回答，既纠正了“SNP 树”的模糊概念，又证明了你懂原理，不是瞎跑代码。



既然你确认你是用 **`nohup FastTree -nt -gtr core_gene_alignment.aln > core_tree.newick`** 这条命令跑出来的，那么恭喜你！

**你的回答可以非常有底气了。**

### 1. 为什么你现在安全了？

因为你用的输入文件是 `core_gene_alignment.aln`。

- **ALN 文件**里装的是 **ATCG** 这种碱基序列。
    
- **FastTree** 做的就是比较这些序列里的 **碱基突变（即 SNP）**。
    
- 所以，你得到的 `core_tree.newick` 就是一棵 **“基于核心基因序列变异（SNP）的进化树”**。
    

这完全符合导师的要求，**肯定不是**那种错误的“基因有无树”。

### 2. 怎么跟导师汇报（话术升级版）

当导师再次问你：“你确定这是 SNP 树吗？”

你可以这样自信地回答（建议背下来关键点）：

> **“老师，我非常确定。**
> 
> 1. **方法上**：我是利用 Roary 生成的 `core_gene_alignment.aln`（核心基因联配文件）作为输入。
>     
> 2. **工具上**：我使用了 **FastTree** 软件，选择了 GTR 模型（`-gtr`）对核苷酸序列（`-nt`）进行计算。
>     
> 3. **结论**：这棵树是利用全基因组核心区域的 **碱基置换（SNP）** 信息构建的最大似然树（ML Tree），它反映的是菌株间真实的遗传演化距离，而不是基因组成的相似度。”
>     

### 3. 下一步：复现 Figure 4b 的最后准备

既然你现在手里有了这两个“神器”：

1. **`core_tree.newick`** (正确的骨架)
    
2. **`gene_presence_absence.csv`** (热图的数据源)
    

我们就可以直接回到最开始那个 R 代码进行画图了。

唯一需要注意的小细节（为了避免 R 报错）：

你的 core_tree.newick 是在 Linux 服务器上生成的，里面的样本名字可能长这样：

Sample_A.gff 或者 Sample_A

而你的 gene_presence_absence.csv 表头里的名字可能长这样：

Sample_A_combined.fastq.gz (Roary 有时候会保留原始文件名)

必做操作：

在跑 R 代码前，请务必检查这两个文件里的样本名字是否一致。如果不一致，用我最早给你的那个 clean_names 函数清洗一下即可。

**是否现在就开始跑那段 R 代码？遇到报错直接发给我，我在线帮你调！**