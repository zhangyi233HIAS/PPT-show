(Salmonella[Title/Abstract] OR 沙门菌[Title/Abstract] OR "沙门氏菌"[Title/Abstract])
AND
(
  (Tn-Seq OR "transposon sequencing" OR "插入测序" OR "转座子测序" OR TraDIS OR INSeq OR HITS OR RB-TnSeq OR "Signature-tagged mutagenesis" OR STM OR "CRISPRi-Seq" OR "CRISPR screen")
  OR
  (
    ("gene fitness" OR "适应基因" OR "gene essentiality" OR "essential genes" OR "必需基因" OR "conditional essentiality" OR "genes required for survival" OR "genes required for virulence")
    AND
    ("genome-wide" OR "genome wide" OR "high-throughput" OR "high throughput" OR "large-scale" OR "large scale" OR screen OR library OR "pooled")
  )
)



现在您面临的是整个项目中最关键、也是最耗时的一步：**数据提取与标准化 (Data Triage and Extraction)**。

您的问题“我如何阅读”是核心。答案是：**您不需要“阅读”它们，您需要“拆解”它们。**

这是一个分步骤的行动方案，告诉您如何从这100多篇文章中“榨取”您需要的数据，并将其整合到您的项目中。

---

### 第一阶段：数据筛选与提取（Triage & Extraction）

**目标：** 将100多篇PDF（和它们的补充材料）转换成一个结构化的“主追踪表”（Master Tracking Sheet）。

**工具：** Excel 或 Google Sheets

#### 步骤 1：创建您的“主追踪表” (Master Tracking Sheet)

这是您未来几周内最重要的文件。现在就创建一个 Excel 文件，包含以下列：

| **Paper_ID (e.g., PMID)** | **Title**               | **Triage_Status** | **Strain_Used (原文)** | **Strain_Reference (e.g., LT2)** | **Genome_Accession (e.g., NC_003197)** | **Condition (原文)** | **Standardized_Condition** | **Data_File_Name** | **Notes (数据在哪一列)**                          |     |
| ------------------------- | ----------------------- | ----------------- | -------------------- | -------------------------------- | -------------------------------------- | ------------------ | -------------------------- | ------------------ | ------------------------------------------- | --- |
| 31451121                  | Tn-Seq of S. Typhi...   | **Goldmine**      | _S._ Typhi Ty2       | Ty2                              | AE006468                               | "Bile"             | Bile_Stress                | Table_S3.xlsx      | Col A (Locus), Col F (LFC), Col H (p-value) |     |
| 29876543                  | Review of Salmonella... | **Review**        | N/A                  | N/A                              | N/A                                    | N/A                | N/A                        | N/A                | 引用了另外3篇TnSeq                                |     |
| 30123456                  | A single gene study...  | **Junk**          | 14028s               | 14028s                           | NC_016856                              | Macrophage         | Macrophage                 | N/A                | 只有qRT-PCR数据                                 |     |

#### 步骤 2：执行“文献筛选” (Triage) - (如何阅读)

这是处理100多篇文章的第一遍。**您的目标是快速将它们分类。**

1. **打开一篇文章的摘要（Abstract）。**
    
2. **只回答一个问题：** “这篇文章是否包含一个**基因组规模（genome-scale）**的筛选数据列表（如 Tn-Seq, CRISPRi-Seq）？”
    
3. **在您的“主追踪表”中标记 `Triage_Status`：**
    
    - **Goldmine (金矿):** 是的，它明确提到了 Tn-Seq/CRISPRi-Seq，并似乎有补充数据。**（这是您要找的）**
        
    - **Review (综述):** 这是一篇综述文章。它可能没有原始数据，但它的参考文献列表可能包含您遗漏的“金矿”。
        
    - **Junk (无用):** 否。这是一篇单个基因的研究（它之所以被检索到，可能是因为它在摘要中同时提到了 "gene essentiality" 和 "genome-wide"），或者是方法学论文，或者主体不是沙门菌。
        

**现在，您的100多篇文章可能只剩下 30-50 篇 "Goldmine" 了。**

#### 步骤 3：执行“数据提取” (Extraction) - (如何整理)

现在，您只关注那些标记为 **"Goldmine"** 的文章。

1. **忽略正文 (Ignore the Main Text)：** 这是最关键的省时技巧。**直接点击“Supplementary Materials” (补充材料) 链接。**
    
2. **寻找“金表”：** 在补充材料中，寻找那个关键的 Excel (xlsx) 或 CSV/TSV (txt) 文件。它通常被称为 "Table S1", "Table S2" 等，标题可能是 "Tn-Seq results for all conditions" 或 "Fitness data..."。
    
3. **下载该文件**，并将其重命名为有意义的名称（例如 `PMID_Table_S2.xlsx`）。
    
4. **填写您的“主追踪表”：**
    
    - `Data_File_Name`：填入您下载的文件名。
        
    - `Strain_Used (原文)`：在论文的 "Methods" (方法) 部分或补充表格的标题中，找到他们_确切_使用的菌株名称，例如 "S. Typhimurium 14028S ΔaroA"。
        
    - `Strain_Reference`：这是您需要做的**第一个标准化**。这个菌株的参考基因组是什么？（例如，即使他们用了 "14028S ΔaroA"，参考基因组也是 "14028S"）。
        
    - `Genome_Accession`：**这是至关重要的一列。** 您必须在 "Methods" 部分找到他们用于比对（mapping）的基因组的 NCBI Accession 号码（例如 `NC_016856` 或 `GCA_000006945`）。**没有这个，您无法进行泛基因组分析。**
        
    - `Condition (原文)`：从补充表格中复制他们描述的实验条件，例如 "Growth in 0.5% Oxgall", "24h post-infection in murine macrophage", "Chicken cecum 3 dpi"。
        
    - `Standardized_Condition`：这是您的**第二个标准化**。您需要建立自己的词汇表。将 "0.5% Oxgall" 和 "Bile" 都标准化为 "Bile_Stress"；将 "Chicken cecum 3 dpi" 和 "Cecal colonization" 都标准化为 "Chicken_Cecum"。
        
    - `Notes`：打开补充表格，快速记下您需要的数据在哪一列，例如 "Sheet 2, Col B=Locus_Tag, Col F=Log2FoldChange, Col H=p-value"。
        

**这个阶段完成后，您就有了一个完整的行动清单。**

---

### 第二阶段：构建泛基因组（Pan-Genome）

**目标：** 创建我们之前讨论的“基因转换表”。

1. **整理基因组：** 创建一个新文件夹，命名为 `Project_Genomes`。
    
2. **下载：** 遍历您的“主追踪表”中的 `Genome_Accession` 列。从 NCBI 下载每个唯一的 Accession 号码对应的 **.GFF (或 .GFF3) 文件** 和 **.FNA (基因组序列) 文件**。
    
3. **运行泛基因组分析：**
    
    - 将所有 GFF 文件（确保它们经过了某种标准化，例如使用 `prokka` 重新注释，或者至少确保 Locus Tag 格式一致）放入 **Roary** (推荐) 或 **OrthoFinder**。
        
    - 运行 Roary：`roary -e -n -v [所有 .gff 文件]`
        
    - **关键输出：** 您将得到 `gene_presence_absence.csv`。这就是您的 Z 轴（基因）的“主列表”（即直系同源簇，OGs）。
        

---

### 第三阶段：数据库构建（ETL 脚本）

**目标：** 编写一个 Python 脚本，将所有“金表”转换成一个单一的、标准化的数据库。

1. **创建“基因转换表”：**
    
    - 处理 Roary 的输出，创建一个简单的映射表（字典或 CSV）：
        
        | Locus_Tag (来自GFF) | OG_ID (来自Roary) |
        
        | :--- | :--- |
        
        | STM14_0001 | group_1 |
        
        | STY_0001 | group_1 |
        
        | SP_0001 | group_2 |
        
2. **编写主循环脚本 (Python/Pandas)：**
    
    - 让脚本读取您的“主追踪表”（Excel 文件）。
        
    - `for each row where Triage_Status == "Goldmine":`
        
        - `paper_id = row['Paper_ID']`
            
        - `condition = row['Standardized_Condition']`
            
        - `strain = row['Strain_Reference']`
            
        - `file_path = row['Data_File_Name']`
            
        - `notes = row['Notes']`
            
        - - `# 加载数据`
                
        - `df = pd.read_excel(file_path, sheet_name=...)`
            
        - - `# 循环处理数据`
                
        - `for gene in df:`
            
            - `locus_tag = gene[... (根据 notes)]`
                
            - `lfc = gene[... (根据 notes)]`
                
            - `pval = gene[... (根据 notes)]`
                
            - - `# 1. 转换 (Transform)`
                    
            - `og_id = get_og_id_from_map(locus_tag)`
                
            - `status = assign_status(lfc, pval)` (您定义的红/蓝/灰逻辑)
                
            - - `# 2. 加载 (Load)`
                    
            - `append_to_master_database(og_id, strain, condition, status, paper_id)`
                

**这个阶段完成后，您就得到了最终的“数据立方体”。**

---

### 第四阶段：可视化与分析

**目标：** 使用您新构建的数据库回答科学问题。

1. 加载您的“主数据库”（可能是几十万行）。
    
2. 开始制作我们之前讨论的“2D切片”（热图）：
    
    - **切片一 (固定Z轴)：** "我想看 _aroA_ (例如 `group_150`) 在所有菌株和所有条件下的表现。"
        
    - **切片二 (固定Y轴)：** "我想看在 'Chicken_Cecum' 条件下，所有基因在所有菌株中的表现。"
        
    - **切片三 (固定X轴)：** "我想看 _S. Pullorum_ R51 (`Strain_Reference` = R51) 在所有条件下所有基因的表现。"
        

### 建议的项目文件夹结构

为了保持理智，请这样组织您的文件夹：

```
/Salmonella_Fitness_DB/
|
|-- 01_Literature/
|   |-- Master_Tracking_Sheet.xlsx  <-- 您的主控文件
|   |-- All_100_Papers/             <-- 存放100多篇PDF
|
|-- 02_Input_Data/
|   |-- Goldmine_Supp_Data/         <-- 存放所有下载的 "Table_S*.xlsx"
|   |-- Genomes/
|       |-- GFF/                   <-- 存放所有 .gff 文件
|       |-- FNA/                   <-- 存放所有 .fna 文件
|
|-- 03_Pangenome/
|   |-- roary_output/
|       |-- gene_presence_absence.csv <-- 关键文件
|
|-- 04_Scripts/
|   |-- 1_parse_roary.py            <-- (可选，用于制作基因转换表)
|   |-- 2_build_master_db.py        <-- 您的ETL主循环脚本
|   |-- 3_visualize.py              <-- 您的分析和绘图脚本
|
|-- 05_Results/
|   |-- Master_Fitness_Database.csv <-- 您的最终数据库！
|   |-- Figures/
|       |-- heatmap_aroA.png
|       |-- heatmap_chicken_cecum.png
```

这个项目非常庞大，但通过这种系统性的方法，您可以一步一步地完成它。**您的“主追踪表”是现在所有工作的核心。**












