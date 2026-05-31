### 🚀 方案一：基于 Web 的快速比对教程 (使用 BV-BRC)

**核心逻辑**：利用 BV-BRC 的 "Comparative Genomics" (比较基因组学) 工具，将你的数据（R51）与数据库中的标准菌株（SL1344/P125109）进行 BLAST 比对。

#### 第一步：准备你的数据 (R51)

在进入网站操作前，请确保你的 R51 菌株数据已经准备好以下格式之一（推荐 fasta 格式）：

- **文件类型**：基因组草图（Scaffolds/Contigs）或完整的基因组序列。
- **格式**：`.fasta` 或 `.fna`。
- **注意**：如果数据量很大，上传可能需要一些时间。

#### 第二步：在 BV-BRC 中找到参考菌株 (SL1344 / P125109)

1. 打开网址：[https://www.bv-brc.org/](https://www.bv-brc.org/)
2. 在顶部菜单栏找到 **"Genome"**（基因组）并点击。
3. 在搜索框中输入 `Salmonella enterica`，然后按回车。
4. 在筛选条件（Filters）中：
    - **Species** (物种): 选择 _Salmonella enterica_。
    - **Assembly Status** (组装状态): 建议选择 "Complete" (完整) 以获得最好的比对效果。
5. **查找 SL1344**：
    - 在搜索结果列表中，找到 `Salmonella enterica subsp. enterica serovar Typhimurium SL1344`。
    - 点击其 **Genome ID** (通常是 `100282.1` 或类似) 进入详情页。
6. **查找 P125109**：
    - 重新搜索 `Salmonella Enteritidis P125109`。
    - 找到对应的条目（通常是 _Salmonella enterica_ subsp. _enterica_ serovar _Enteritidis_ str. P125109）。

#### 第三步：启动比较基因组工具 (Comparative Genomics)

这是最关键的一步，你需要使用 BV-BRC 内置的 **"BLAST"** 或 **"Compare Genomes"** 功能。

**方法 A：通过基因组详情页启动 (推荐)**

1. 当你进入 SL1344 (或 P125109) 的详情页后，寻找页面上的 **"Tools"** (工具) 按钮或侧边栏的 "Analyses" (分析) 选项。
2. 点击 **"Run BLAST"** 或 **"Comparative Genomics"**。
3. 在弹出的界面中，系统默认会将该菌株设为 **"Reference Genome"** (参考基因组)。

**方法 B：通过顶部菜单启动**

1. 点击顶部菜单的 **"Services"** -> **"Comparative Genomics"**。
2. 在 "Reference Genome" 一栏，点击 "Select"，然后搜索并选择 `SL1344` 或 `P125109`。

#### 第四步：上传你的 R51 数据并运行

1. 在 **"Query Genome(s)"** (查询基因组) 区域，选择 **"Upload"** (上传)。
2. 点击 "Choose File" 上传你本地的 R51 `.fasta` 文件。
3. **参数设置 (Parameters)**：
    - **Program**: 通常选择 `blastn` (核苷酸比对) 或 `tblastx` (如果关注编码区)。
    - **E-value**: 保持默认 (`1e-5`) 即可。
4. 点击 **"Run Analysis"** (运行分析)。

#### 第五步：查看结果

- **同源基因 (Orthologs)**：结果页面会列出 R51 与 SL1344 之间的同源基因对。
- **圈图 (Circular View)**：部分工具提供可视化圈图，展示基因组的共线性（Synteny）。
- **差异基因 (PAV)**：你可以导出 Presence/Absence 矩阵，查看 R51 特有而 SL1344 没有的基因。

---

### 💡 替代方案：如果 BV-BRC 操作太卡顿

如果上述网站访问速度慢，或者你更习惯使用命令行，可以使用本地软件进行更精细的比对：

1. **Artemis Comparison Tool (ACT)**：
    - **优点**：可视化效果极好，适合发表文章。
    - **操作**：下载 R51 的 GenBank 文件，下载 SL1344 的 GenBank 文件，用 ACT 打开即可看到红色/蓝色的比对条带。
2. **Roary (泛基因组分析)**：
    - 如果你有多个样本，Roary 可以快速计算出核心基因组和特有基因。
### 📝 总结

你现在的首要任务是：**把 R51 的序列文件准备好**。  
然后按照上述步骤，在 BV-BRC 网站上先选中 SL1344 作为参考，再上传 R51 进行比对。
[[泛基因组可视化]]