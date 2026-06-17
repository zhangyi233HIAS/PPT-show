---
tags:
  - task/任务管理
  - 科研/任务
  - 博士课题
---先直接说结论：这三篇文章讲的 **Salmonella 的 IpaJ 都是同一个来源——鸡白痢沙门菌 S. Pullorum 的小质粒 pSPI12 上的 ipaJ 基因**，而不是染色体上的 SPI 基因。你要做序列比对，最关键的是把 **pSPI12（GU949535）** 和 **ipaJ 蛋白（ADF43835.1）** 这两个序列拉下来对比你自己的菌。
- [ ] Construction of pSPI 12-cured Salmonella enterica serovar Pullorum and identification of IpaJ as an immune response modulator
	- [ ] The Salmonella T 3 SS 1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway
	- [ ] The Invasion Plasmid Antigen J (IpaJ) from Salmonella Inhibits NF-κB Activation by Suppressing IκBα Ubiquitination

---

## 1️⃣ 三篇文章的链接

### (1) Construction of pSPI12-cured Salmonella enterica serovar Pullorum and identification of IpaJ as an immune response modulator

- 期刊：**Avian Pathology (2018) 47(4): 410–417**
    
- DOI 链接（可直接点）：
    
    - Avian Pathology: [https://doi.org/10.1080/03079457.2018.1471195](https://doi.org/10.1080/03079457.2018.1471195) ([PubMed](https://pubmed.ncbi.nlm.nih.gov/29712441/?utm_source=chatgpt.com "Construction of pSPI12-cured Salmonella enterica serovar ..."))
        

---

### (2) The Salmonella T3SS1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway

- 期刊：**PLOS Pathogens (2022) 18(12): e1011005**
    
- 文章链接：
    
    - PLOS 官方全文：[https://journals.plos.org/plospathogens/article?id=10.1371/journal.ppat.1011005](https://journals.plos.org/plospathogens/article?id=10.1371/journal.ppat.1011005) ([PLOS](https://journals.plos.org/plospathogens/article?id=10.1371%2Fjournal.ppat.1011005&utm_source=chatgpt.com "The Salmonella T3SS1 effector IpaJ is regulated by ItrA and ..."))
        

---

### (3) The Invasion Plasmid Antigen J (IpaJ) from Salmonella Inhibits NF-κB Activation by Suppressing IκBα Ubiquitination

- 期刊：**Infection and Immunity (2020) 88:e00875-19**
    
- DOI 链接：
    
    - ASM 期刊页面：[https://journals.asm.org/doi/10.1128/IAI.00875-19](https://journals.asm.org/doi/10.1128/IAI.00875-19) ([ASM Journals](https://journals.asm.org/doi/10.1128/iai.00875-19?utm_source=chatgpt.com "The Invasion Plasmid Antigen J (IpaJ) from Salmonella ..."))
        

---

## 2️⃣ 这些文章中 ipaJ 基因的“存放位置”

### 2.1 共同点（核心结论）

三篇文献研究的 **ipaJ 都来自 S. Pullorum 携带的多拷贝小质粒 pSPI12**：

- **pSPI12**：约 4,080 bp 的小质粒，在鸡白痢沙门菌 S. Pullorum 中高度流行。([PubMed](https://pubmed.ncbi.nlm.nih.gov/24468333/?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
    
- 2014 年 Li 等在 _J Microbiol Methods_ 中给出了 pSPI12 的完整序列，并说明：
    
    > “The complete nucleotide sequence was deposited with the GenBank Database under Accession Number **GU949535**.” ([科学直接](https://www.sciencedirect.com/science/article/abs/pii/S0167701214000232?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
    
- 后续的快速检测、ELISA、NF-κB 文章都用这个序列设计 ipaJ 引物，并明确说：
    
    - “the ipaJ gene harbored in pSPI12 (Accession Number: **GU949535**) from S. Pullorum…” ([Taylor & Francis Online](https://www.tandfonline.com/doi/full/10.1080/03079457.2017.1412084?utm_source=chatgpt.com "A rapid method to identify Salmonella enterica serovar ..."))
        
- 2020 年的 _Infection and Immunity_ 文章也直接写：
    
    > “The ipaJ gene is located in the pSPI12 plasmid, which is prevalent in 99.08% of S. Pullorum isolates.” ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7035918/?utm_source=chatgpt.com "The Invasion Plasmid Antigen J (IpaJ) from Salmonella ..."))
    
- 2022 年 _PLOS Pathogens_ 的 MAPK 那篇在 Results 开头也再强调：
    
    > “ipaJ is located in the pSPI12 plasmid [15] …” ([PLOS](https://journals.plos.org/plospathogens/article?id=10.1371%2Fjournal.ppat.1011005 "The Salmonella T3SS1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway | PLOS Pathogens"))
    

也就是说：  
👉 **所有这些工作研究的 ipaJ = S. Pullorum 的质粒 pSPI12 上那个 ipaJ，不是染色体 SPI 上的新基因。**

---

### 2.2 各篇文章具体说的是哪个菌 / 哪个复制子？

#### (1) Avian Pathology 2018 – pSPI12-cured S. Pullorum

- 背景菌株：**S. Pullorum S06004**（多药耐药株）([科学直接](https://www.sciencedirect.com/science/article/abs/pii/S0167701214000232?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
    
- pSPI12：S06004 携带的 4,080 bp 小质粒，只有一个明确的毒力相关 ORF 被注释为 **ipaJ**。([PubMed](https://pubmed.ncbi.nlm.nih.gov/24468333/?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
    
- 这篇文章做的事：
    
    - 构建 **pSPI12 缺失株（ΔpSPI12）**，即把整个质粒“剔除”，从而间接敲掉 ipaJ；
        
    - 用感染鸡的模型看炎症因子，证明 **pSPI12 上的 ipaJ 具有免疫调节（抗炎）作用**。([PubMed](https://pubmed.ncbi.nlm.nih.gov/29712441/?utm_source=chatgpt.com "Construction of pSPI12-cured Salmonella enterica serovar ..."))
        

👉 对于你要比对的序列来说：**参考的 ipaJ 就是 S06004 的 pSPI12:GU949535 上的 ipaJ。**

---

#### (2) PLOS Pathogens 2022 – ItrA & MAPK

- 背景菌株：**S. Pullorum C79-13**（同样携带 pSPI12）([PLOS](https://journals.plos.org/plospathogens/article?id=10.1371%2Fjournal.ppat.1011005 "The Salmonella T3SS1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway | PLOS Pathogens"))
    
- 文中直接写：
    
    > “ipaJ is located in the pSPI12 plasmid [15] …” ([PLOS](https://journals.plos.org/plospathogens/article?id=10.1371%2Fjournal.ppat.1011005 "The Salmonella T3SS1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway | PLOS Pathogens"))
    
- 他们做的主要是：
    
    - 在 C79-13 背景下，对 **ipaJ 启动子 P_ipaJ 做 Tn-Seq 筛选**找调控因子，发现 **ItrA 是直接结合 P_ipaJ 的转录调控因子**；
        
    - 证明 IpaJ 通过 T3SS1 分泌，抑制宿主 **MAPK 通路**。([PLOS](https://journals.plos.org/plospathogens/article?id=10.1371%2Fjournal.ppat.1011005 "The Salmonella T3SS1 effector IpaJ is regulated by ItrA and inhibits the MAPK signaling pathway | PLOS Pathogens"))
        

> 注意：这里的 ipaJ 仍然是 **pSPI12 质粒上的同一个 ipaJ**，只是在不同菌株背景下研究表达调控和分泌机制。

---

#### (3) Infection and Immunity 2020 – NF-κB & IκBα ubiquitination

- 背景主要菌株：同样是 **S. Pullorum（实验中常用 S06004/C79-13 等）**，外加把 ipaJ 克隆到 **S. Enteritidis** 中做功能验证。([ResearchGate](https://www.researchgate.net/figure/A-HEK293-cells-were-co-transfected-with-NF-kB-reporter-plasmids-and-vector-alone-or_fig4_234106160 "(A) HEK293 cells were co-transfected with NF-κB reporter plasmids and... | Download Scientific Diagram"))
    
- 明确说明：
    
    > “The ipaJ gene is located in the pSPI12 plasmid, which is prevalent in 99.08% of S. Pullorum isolates …” ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7035918/?utm_source=chatgpt.com "The Invasion Plasmid Antigen J (IpaJ) from Salmonella ..."))
    
- 功能上证明：IpaJ 通过 **抑制 IκBα 泛素化 → 稳定 IκBα → 抑制 NF-κB 激活**，从而下调炎症因子（IL-1β, IL-6, IL-8）。([ResearchGate](https://www.researchgate.net/figure/A-HEK293-cells-were-co-transfected-with-NF-kB-reporter-plasmids-and-vector-alone-or_fig4_234106160 "(A) HEK293 cells were co-transfected with NF-κB reporter plasmids and... | Download Scientific Diagram"))
    

👉 这里功能非常明确，但从序列角度还是同一条 **pSPI12-ipaJ**。

---

## 3️⃣ 你要拿来做比对的“标准 ipaJ 序列”在哪里？

你可以把下面两个 accession 当成 **“金标准参考序列”** 来和你自己的株比对：

### 3.1 质粒层面：pSPI12 全序列

- **NCBI Nucleotide**：
    
    - 名称：plasmid **pSPI12**, from _Salmonella enterica_ serovar Pullorum
        
    - **GenBank 登录号：GU949535**（约 4,080 bp，小质粒）。([科学直接](https://www.sciencedirect.com/science/article/abs/pii/S0167701214000232?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
        
- Li et al. 2014 在 _J Microbiol Methods_ 中声明：“The complete nucleotide sequence was deposited with the GenBank Database under Accession Number GU949535.” ([科学直接](https://www.sciencedirect.com/science/article/abs/pii/S0167701214000232?utm_source=chatgpt.com "A gene knock-in method used to purify plasmid pSPI12 ..."))
    

> 操作建议：
> 
> - 在 NCBI Nucleotide 搜索框输入 `GU949535` → 打开条目 → “FASTA” 下载全质粒序列；
>     [GU949535.1-ipaj](file:///K:\A-实验\2025-12-ipaj\GU949535.1-ipaj.fna)
```
> atg
     3361 cggttaaaat ttatcaggcg cgatcgcggc agtttttcgg gtggtttgtt gccattttta
     3421 cctgtctgct gccgtgatcg cgatgaacgc gttttagcgg tgcgtacaat aagggattat
     3481 gttaaaccac gtatgaggtg ttatgtgatt aatccatctg ctcatgacat atcaaaatgg
     3541 actattagtt atagagttga gtgtcagcag cgctctgcgc aactcatcgc ccaccaagag
     3601 aagaagcagc tatatgctaa ttcttgcggt gcatgtgctt tgttggttgc tgctaaagag
     3661 cttggaatcg aacatatgcc agtgttaact ggtctttact ctgaattaac aggagggagg
     3721 ctggccttaa ctaacgaatg tgaatctgat ttgtataaaa taaccagtaa ttcaacttcg
     3781 tatcgcgata gttgtagtaa cctagccgac gctggttatt caatgcctca aggtatcgtt
     3841 gttgcatgca ggcttttggg aatgggctgc gatgttactg aggagaaaaa tcttttttcc
     3901 aaagcattat cttggctgta cccagaagta aaagcacaat gtcaagctat tggtgttcag
     3961 gtaagagaag gtataagaga ggattttgat aagtatcgct taaaggcaat ggctgttagt
     4021 tttatcggta tgccagttgg attacactgg gtgcttcagc gacctgatgg cagttttatg
     
      1 gatcccggcg tggggaaaaa tagcttgagt tttgatgagt tagttcaaaa ctcaaggagc
       61 gatttcaggt ttgcagggta ttacgacact ggtatttcta ttgtcttgtc agcttga
//
```
> - 在 “FEATURES” 里找到 `gene=ipaJ` or `CDS` 注释，即为你要比对的 CDS 区域。

- [GenBank](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1/#)

#### [Send to:](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1/#)

# Salmonella enterica subsp. enterica serovar Pullorum strain S06004 plasmid pSPI12, complete sequence

GenBank: GU949535.1

[FASTA](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1?report=fasta) [Graphics](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1?report=graph) 

[Go to:](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1/#goto294847658_0)

LOCUS       GU949535                4080 bp    DNA     circular BCT 06-APR-2020
DEFINITION  Salmonella enterica subsp. enterica serovar Pullorum strain S06004
            plasmid pSPI12, complete sequence.
ACCESSION   GU949535
VERSION     GU949535.1
DBLINK      BioSample: [SAMN14225531](https://www.ncbi.nlm.nih.gov/biosample/SAMN14225531)
KEYWORDS    .
SOURCE      Salmonella enterica subsp. enterica serovar Pullorum
  ORGANISM  [Salmonella enterica subsp. enterica serovar Pullorum](https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=605)
            Bacteria; Pseudomonadati; Pseudomonadota; Gammaproteobacteria;
            Enterobacterales; Enterobacteriaceae; Salmonella.
REFERENCE   1  (bases 1 to 4080)
  AUTHORS   Li,Q., Jiao,X. and Xu,Y.
  TITLE     Gene organization of plasmid pSPI12 from Salmonella pullorum and
            characterization of ipaJ gene
  JOURNAL   Unpublished
REFERENCE   2  (bases 1 to 4080)
  AUTHORS   Jiao,X. and Xu,Y.
  TITLE     Direct Submission
  JOURNAL   Submitted (02-MAR-2010) Yangzhou University, Jiangsu Key Laboratory
            of Zoonosis, 88 South Daxue Road, Yangzhou, Jiangsu 225009, P.R.
            China
FEATURES             Location/Qualifiers
     source          1..4080
                     /organism="Salmonella enterica subsp. enterica serovar
                     Pullorum"
                     /mol_type="genomic DNA"
                     /strain="S06004"
                     /serovar="Pullorum"
                     /sub_species="enterica"
                     /db_xref="taxon:[605](https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=605)"
                     /plasmid="pSPI12"     [CDS](https://www.ncbi.nlm.nih.gov/nuccore/GU949535.1?location=3358:4080,1:117)             join(3358..4080,1..117)
                     /codon_start=1
                     /transl_table=[11](https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?mode=c#SG11)
                     /product="putative IpaJ protein"
                     /protein_id="[ADF43835.1](https://www.ncbi.nlm.nih.gov/protein/294847659)"
                     /translation="MRLKFIRRDRGSFSGGLLPFLPVCCRDRDERVLAVRTIRDYVKP
                     RMRCYVINPSAHDISKWTISYRVECQQRSAQLIAHQEKKQLYANSCGACALLVAAKEL
                     GIEHMPVLTGLYSELTGGRLALTNECESDLYKITSNSTSYRDSCSNLADAGYSMPQGI
                     VVACRLLGMGCDVTEEKNLFSKALSWLYPEVKAQCQAIGVQVREGIREDFDKYRLKAM
                     AVSFIGMPVGLHWVLQRPDGSFMDPGVGKNSLSFDELVQNSRSDFRFAGYYDTGISIV
                     LSA"

---

### 3.2 蛋白层面：IpaJ 氨基酸序列

- **NCBI Protein**：
    
    - 描述：_Salmonella pullorum_ **invasion plasmid antigen J (IpaJ)**
        
    - **蛋白 accession：ADF43835.1**（即 pSPI12 上 ipaJ 的翻译产物）。([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC12621324/?utm_source=chatgpt.com "Development of a dual-target RAA-LFD assay for point ..."))
        





很多后续工作（如 2025 年前沿 Vet Sci 的 RAA-LFD 检测）明确写道：

> “Gene sequences for … _S. pullorum_ **ipaj (GenBank: ADF43835.1)** were retrieved from NCBI.” ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC12621324/?utm_source=chatgpt.com "Development of a dual-target RAA-LFD assay for point ..."))

> 操作建议：
> 
> - 在 NCBI Protein 搜索 `ADF43835.1` → 打开后选择 “FASTA” 下载氨基酸序列；
>     
> - 用这个蛋白序列去对比你自己菌株的 IpaJ（BLASTp / 多序列比对）。
>     

---

## 4️⃣ 给你一个简单的“比对思路”建议

你后面要做的序列研究，大致可以按下面的路线来：

1. **下载参考序列**
    
    - Nucleotide：GU949535（整质粒）
        
    - Protein：ADF43835.1（IpaJ）
        
2. **从你自己的菌株中拿出候选 ipaJ 序列**
    
    - 如果有全基因组序列：用 BLASTn/BLASTp 对 GU949535 / ADF43835.1 搜索；
        
    - 如果只是 PCR 产物：按文献设计的 ipaJ 引物扩增（文献很多套，基本都基于 GU949535）。([Taylor & Francis Online](https://www.tandfonline.com/doi/full/10.1080/03079457.2017.1412084?utm_source=chatgpt.com "A rapid method to identify Salmonella enterica serovar ..."))
        
3. **多序列比对（MUSCLE / MAFFT 等）**
    
    - 比对氨基酸序列：看 **保守位点 + 关键催化残基** 有没有变异；
        
    - 必要的话再看核苷酸层面的同源性，关注非同义突变。
        
4. **结合功能文献理解突变意义**
    
    - MAPK 抑制、NF-κB 抑制这些功能位点，如果你看到氨基酸替换，后面就可以设计“功能验证小课题”。
        

---

如果你愿意，下次可以把你菌株的 ipaJ 序列（FASTA）贴给我，我可以直接帮你和 ADF43835.1 做多序列比对，顺便标一标可能重要的氨基酸变异位点，用于后面功能实验设计。



### 最简单（在线 BLAST，适合你先快速看一眼）

#### 1️⃣ 查两个质粒有没有 ipaJ

1. 打开 NCBI BLAST：选择 **“tblastn”**（Protein vs Nucleotide）。
    
2. Query 粘贴：`ipaJ_ref.faa` 的氨基酸序列。
    
3. Subject：
    
    - 粘贴 `my_plasmid1.fna` 的核苷酸序列（或者上传 FASTA 文件）；
        
    - 再单独对 `my_plasmid2.fna` 运行一次。
        
4. 重要指标：
    
    - **% identity（相似度）**
        
    - **Query coverage（覆盖度）**
        
    - E-value（越小越好，一般 1e-20 以下就很稳）
        

> 结果判断：
> 
> - 如果出现一条 alignment，覆盖了 IpaJ 的大部分长度（>90%）且相似度很高（>90%），那就基本可以说这个质粒带 ipaJ。
>     
> - 如果只有短短一段、或者覆盖度很低，那可能只是一个远缘的蛋白家族成员或随机同源，不一定是真正的 ipaJ。
>     

#### 2️⃣ 看你的质粒是否整体是 pSPI12 型

1. 在 NCBI Nucleotide 搜索 `GU949535`，下载 pSPI12 的 FASTA。
    
2. 打开 BLAST：选择 **“blastn”**（Nucleotide vs Nucleotide）。
    
3. Query：粘贴 pSPI12（GU949535）的 FASTA。
    
4. Subject：粘贴 `my_plasmid1.fna` / `my_plasmid2.fna`。
    

> 如果结果显示：
> 
> - 一整条几乎 1:1 对齐（长度接近、identity 高）：你的质粒就是 pSPI12 或非常近缘；
>     
> - 只有中间一个小小的高同源片段：说明你的质粒只是“捡了”其中的一部分（可能包括 ipaJ），而不是完整 pSPI12。

# Ipaj 和 R 51 -p 1 比较










