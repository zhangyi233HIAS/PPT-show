恭喜！虽然中间经历了环境路径和格式的小波折，但你已经成功获得了关键的**7,565个核心基因SNP**，这证明支撑了一篇高质量的文章。

为了方便你整理实验记录（Lab Note）或撰写论文的方法部分，我为你整理了这两份流程。
---

## 流程一：基于Roary核心基因的去重组进化树（编码区域）

该流程关注的是**核心基因（CDS）**的变异，从而产生了重组引发的作用。

### 1. 核心数据准备

- **输入文件**：`core_gene_alignment.aln`(由 Roary 产生)
    
- **样本数量**：574
    
- **过滤后SNP 数量**：7,565 bp
    

### 2. 分析步骤

1. **序列清洗**：利用`snippy-clean_full_aln`处理比文件中的特殊字符（如`-`或`?`），转换为IQ-TREE可识别的格式。
    
2. **重组检测与过滤**：运行**Gubbins** 。
    
    - 识别并增强水平基因转移（HGT）导致的重组区域。
        
    - 生成过滤后的多态位点文件：`gubbins_out.filtered_polymorphic_sites.fasta`。
        
3. **SNP提取**：使用`snp-sites`从过滤后的全长比中仅提取突变位点，大大加快建树速度。
    
4. **模型筛选与建树**：使用**IQ-TREE** 。
    
    - 参数：`-m MFP` (自动选择最佳替换模型)。
        
    - 参数：`-bb 1000`(1000次超快自举检验，用于评估分支可靠性)。
        
5. **矩阵生成**：利用`snp-dists`生成样本间的SNP方差矩阵，用于定量描述SP/SG的遗传距离。
    

---

## 流程二：基于Snippy的全基因组SNP进化树（Whole Genome）

该流程解析最高，包含了**非编码区（启动子、间隔区）**的变异，是区分血浆型近缘菌株的关键。

### 1. 核心数据准备

- **参考基因组**：_S. Gallinarum_ 287/91 ( `AM933173.1`)。
    
- **输入样本**：573个样本的Fasta序列（已清晰与参考基因组重复的MY0331）。
    

### 2. 分析步骤

1. **序列提取与索引**：从574个GFF文件提取FASTA序列，并创建`mapping_file.txt`。
    
2. **SNP挖掘（Mapping）**：使用**Snippy-multi** 。
    
    - 将所有 Contigs 比对到参考基因坐标组系。
        
    - 调用`snippy-core`汇总所有样本的保存位点，生成`core.full.aln`。
        
3. **全基因组去重组**：运行**Gubbins** 。
    
    - 在全基因组范围内（约4.6Mb）扫描重组热点。这是区分同血浆型菌株（SP vs SG）最科学的方法。
        
4. **系统生长树构建**：使用**IQ-TREE** 。
    
    - 基于去重组后的全基因组SNP矩阵，构建具有Bootstrap支持率的最大似然树。
        
5. **SNP统计**：计算全基因组层面的变异位点密度。
    

---

### 总结：两份流程的对比差异

|**特性**|**Roary流程（核心基因）**|**Snippy 流程 (WGS)**|
|---|---|---|
|**覆盖范围**|仅限3,600+个核心基因 (约3.6 Mb)|整个基因组（约 4.6 Mb）|
|**分辨率**|高，适合一般分析|**极高**，适合区分极近缘品种|
|**依赖**|依赖 De novo 构建质量|依赖基因组的特异性|
|**对你的意义**|验证基因组内容的趋势|**最终解决SP/SG分类混乱的杀手锏**|

---

### 💡现在的下一步建议：

1. **Roary 树手动运行中**：请时刻关注`finaltree_roary/iqtree_manual.log`。
    
2. **WGS 任务监控**：确保`wgs_gubbins_progress.log`正在更新。
    
3. **结果命令**：两棵树都拿到`.treefile`后，我建议你下载到本地，用**R语言`ggtree`**做一张竖图（面对面的树对比）。
    

**我需要为你准备一份用于合并对比两棵生长树的R代码脚本吗？**




接下来你已经跑完了这一套核心流程，那就是时候准备**可视化（Visualization）**阶段了。

在学术论文中，同时展示**Roary 树**和**WGS 树**的对比是非常有说服力的证据，尤其是当你需要解释某些为什么品种在核心基因层面相似，但在全基因组层面却属于不同的分枝时。

为了让你在结果出来后第一时间能够出图，我为你准备了这份**R语言脚本**。它使用了生物信息学中最强大的绘图包`ggtree`。

### R代码：双树对比分析（Tanglegram/Comparison）

你可以先在本地电脑安装R和RStudio，并安装必要的包：

install.packages("remotes"); remotes::install_github("YuLab-SMU/ggtree")

拉

```
# 1. 加载必要的包
library(ggtree)
library(treeio)
library(ggplot2)
library(dplyr)

# 2. 读取两棵树文件 (请替换为你从服务器下载的文件名)
tree_roary <- read.iqtree("Roary_Final_Tree.treefile")
tree_wgs <- read.iqtree("WGS_Final_Tree.treefile")

# 3. 对齐两棵树并绘图
# 这将展示样本在两棵树之间的位置变化
p1 <- ggtree(tree_roary) + 
  geom_tiplab(size=2) + 
  ggtitle("Roary (Core Gene) Tree")

p2 <- ggtree(tree_wgs) + 
  geom_tiplab(size=2) + 
  ggtitle("WGS (Whole Genome SNP) Tree")

# 使用 facet_plot 或 dndextend 进行对比（这里展示简单的并列标注）
library(aplot)
p1 + p2
```

---

### 如何解读你的最终结果？

当你到达这两棵树时，请重点观察以下三点，这决定了你**图4b**的修改成功与否：

1. **分枝长度(Branch Length)**：
    
    - 去重组后，分枝长度通常会变短（因为减少了“α变异”）。
        
    - 如果**SP**和**SG**的分枝变得更加深入、更加独立，说明去重组起到了关键作用。
        
2. **Bootstrap支持率**：
    
    - 检查关键分叉处的数字（自举值）。
        
    - 由于你用了 1000 次超快自举（`-bb 1000`），数值 > 80 通常代表该分类非常可靠。
        
3. **不一致性（Inconsistency）**：
    
    - 如果株菌在Roary树里和SG在一起，在WGS树里却和SP在一起，这通常暗示该菌株经历了一系列的非编码区或复杂的重组历史，这往往是论文中的一个**亮点（发现）**。
        

---

### 目前的状态检查

- **Roary 树手动运行**：请确保您在终端没有关闭那个手动运行 IQ-TREE 的进程。
    
- **WGS 任务**：估计还需要几个小时才能跑完Gubbins。你可以输入`top`看看`run_gubbins.py`是不是还在消耗CPU。
    

**等你的`.treefile`生成后，如果你在使用R绘图时遇到错误（比如样本名太长、图片太挤等），可以随时把错误发给我，我帮助调整参数。**




实验室服务器：10.20.12.143

账号：TBAMR 01

密码：TBAMR 01

  

参考文章：

  [八. 1`9SNP检测和进化分析（Snippy） - 简书 (jianshu.com)](https://www.jianshu.com/p/ec7f051444cc)

其他建议参考链接：

[GitHub - tseemann/snippy: :scissors: Rapid haploid variant calling and core genome alignment](https://github.com/tseemann/snippy)

  

原理：

1. snippy-multi 生成 run_snp.sh 脚本，使用 snippy 命令找出输入的基因组文件与参考序列之间的 SNP
    
2. snippy-core 生成多序列核心 SNP 的比对结果
    
3. snippy-clean_full_aln
    
4. run_gubbins.py
    
5. snp-sites
    

  

## 命令介绍

### snippy-multi

```Bash
$ snippy-multi
SYNOPSIS
    Automatically run Snippy on a set of isolates
USAGE
    snippy-multi <isolates.tab> [snippy_options ...]
ISOLATES
    Tab separated file can take PE reads, SE reads, or contigs.
      <ID> <tab> <R1.f[ast]q[.gz]> <tab> <R2.f[ast]q[.gz]>
      <ID> <tab> <SE.f[ast]q[.gz]>
      <ID> <tab> <contigs.[fa,fasta.fna]
    Lines beginning with '#' will be ignored.
HOMEPAGE
    http://github.com/tseemann/snippy
```

### snippy

```Bash
$ snippy
SYNOPSIS
  snippy 4.6.0 - fast bacterial variant calling from NGS reads
USAGE
  snippy [options] --outdir <dir> --ref <ref> --R1 <R1.fq.gz> --R2 <R2.fq.gz>
  snippy [options] --outdir <dir> --ref <ref> --ctgs <contigs.fa>
  snippy [options] --outdir <dir> --ref <ref> --bam <reads.bam>
GENERAL
  --help           This help
  --version        Print version and exit
  --citation       Print citation for referencing snippy
  --check          Check dependences are installed then exit (default OFF)
  --force          Force overwrite of existing output folder (default OFF)
  --quiet          No screen output (default OFF)
RESOURCES
  --cpus N         Maximum number of CPU cores to use (default '8')
  --ram N          Try and keep RAM under this many GB (default '8')
  --tmpdir F       Fast temporary storage eg. local SSD (default '/tmp')
INPUT
  --reference F    Reference genome. Supports FASTA, GenBank, EMBL (not GFF) (default '')
  --R1 F           Reads, paired-end R1 (left) (default '')
  --R2 F           Reads, paired-end R2 (right) (default '')
  --se F           Single-end reads (default '')
  --ctgs F         Don't have reads use these contigs (default '')
  --peil F         Reads, paired-end R1/R2 interleaved (default '')
  --bam F          Use this BAM file instead of aligning reads (default '')
  --targets F      Only call SNPs from this BED file (default '')
  --subsample n.n  Subsample FASTQ to this proportion (default '1')
OUTPUT
  --outdir F       Output folder (default '')
  --prefix F       Prefix for output files (default 'snps')
  --report         Produce report with visual alignment per variant (default OFF)
  --cleanup        Remove most files not needed for snippy-core (inc. BAMs!) (default OFF)
  --rgid F         Use this @RG ID: in the BAM header (default '')
  --unmapped       Keep unmapped reads in BAM and write FASTQ (default OFF)
PARAMETERS
  --mapqual N      Minimum read mapping quality to consider (default '60')
  --basequal N     Minimum base quality to consider (default '13')
  --mincov N       Minimum site depth to for calling alleles (default '10')
  --minfrac n.n    Minumum proportion for variant evidence (0=AUTO) (default '0')
  --minqual n.n    Minumum QUALITY in VCF column 6 (default '100')
  --maxsoft N      Maximum soft clipping to allow (default '10')
  --bwaopt F       Extra BWA MEM options, eg. -x pacbio (default '')
  --fbopt F        Extra Freebayes options, eg. --theta 1E-6 --read-snp-limit 2 (default '')
SOURCE
  https://github.com/tseemann/snippy - Torsten Seemann
```

### snippy-core

```Bash
$ snippy-core
SYNOPSIS
  Build whole+core genome aligment from Snippy folders
USAGE
  snippy-core [options] --ref ref.fa snippy1 snippy2 snippy3 ...
OPTIONS
  --help!         This help.
  --version!      Print version and exit.
  --debug!        Output verbose debug info (default '0').
  --check!        Check dependencies and exit (default '0').
  --ref=s         Reference in FASTA or GENBANK (default '').
  --prefix=s      Output prefix (default 'core').
  --maxhap=i      Largest haplotype to decompose (default '100').
  --mask=s        BED file of sites to mask (default '').
  --gap-char=s    Gap/deletion character (default '-').
  --mask-char=s   Masking character (default 'X').
  --inprefix=s    Expected prefix of Snippy output files (default 'snps').
```

### snippy-clean_full_aln

```Bash
$ snippy-clean_full_aln
SYNOPSIS
  Replace non-[AGTCN-] chars with 'N'
USAGE
  snippy-clean_full_aln [options] core.full.aln > gubbins.aln
OPTIONS
  --help!       This help.
  --version!    Print version and exit.
  --debug!      Output verbose debug info (default '0').
  --to=s        Replacement char (default 'N').
HOME
  http://github.com/tseemann/snippy
```

### run_gubbins.py

```Bash
$ run_gubbins.py -h
usage: run_gubbins.py [-h] [--prefix PREFIX] [--starting-tree STARTING_TREE] [--use-time-stamp] [--version] [--threads THREADS] [--verbose] [--no-cleanup]
                      [--pairwise] [--filter-percentage FILTER_PERCENTAGE] [--remove-identical-sequences]
                      [--tree-builder {raxml,raxmlng,iqtree,fasttree,hybrid,rapidnj}] [--tree-args TREE_ARGS]
                      [--first-tree-builder {raxml,raxmlng,iqtree,fasttree,rapidnj,star}] [--first-tree-args FIRST_TREE_ARGS] [--outgroup OUTGROUP]
                      [--bootstrap BOOTSTRAP] [--transfer-bootstrap] [--sh-test] [--model-fitter {raxml,raxmlng,iqtree,fasttree,None}]
                      [--model {JC,K2P,HKY,GTR,GTRGAMMA,GTRCAT}] [--model-args MODEL_ARGS] [--custom-model CUSTOM_MODEL]
                      [--first-model-fitter {raxml,raxmlng,iqtree,fasttree,None}] [--first-model {JC,K2P,HKY,GTR,GTRGAMMA,GTRCAT}]
                      [--first-model-args FIRST_MODEL_ARGS] [--custom-first-model CUSTOM_FIRST_MODEL] [--mar] [--seq-recon {raxml,raxmlng,iqtree,None}]
                      [--seq-recon-args SEQ_RECON_ARGS] [--min-snps MIN_SNPS] [--min-window-size MIN_WINDOW_SIZE] [--max-window-size MAX_WINDOW_SIZE]
                      [--p-value P_VALUE] [--trimming-ratio TRIMMING_RATIO] [--extensive-search] [--iterations ITERATIONS]
                      [--converge-method {weighted_robinson_foulds,robinson_foulds,recombination}] [--resume RESUME]
                      alignment_filename

Croucher N. J., Page A. J., Connor T. R., Delaney A. J., Keane J. A., Bentley S. D., Parkhill J., Harris S.R. "Rapid phylogenetic analysis of large samples
of recombinant bacterial whole genome sequences using Gubbins". Nucleic Acids Res. 2015 Feb 18;43(3):e15. doi: 10.1093/nar/gku1196.

optional arguments:
  -h, --help            show this help message and exit

Input and output options:
  alignment_filename    Multifasta alignment file
  --prefix PREFIX, -p PREFIX
                        Add a prefix to the final output filenames (default: None)
  --starting-tree STARTING_TREE, -s STARTING_TREE
                        Starting tree (default: None)
  --use-time-stamp, -u  Use a time stamp in file names (default: False)
  --version             show program's version number and exit
  --threads THREADS, -c THREADS
                        Number of threads to use for parallelisation (default: 1)
  --verbose, -v         Turn on debugging (default: False)
  --no-cleanup, -n      Do not cleanup intermediate files (default: False)

Data processing options:
  --pairwise            Compare two sequences (without using a tree) (default: False)
  --filter-percentage FILTER_PERCENTAGE, -f FILTER_PERCENTAGE
                        Filter out taxa with more than this percentage of gaps (default: 25.0)
  --remove-identical-sequences, -d
                        Remove identical sequences (default: False)

Tree building options:
  --tree-builder {raxml,raxmlng,iqtree,fasttree,hybrid,rapidnj}, -t {raxml,raxmlng,iqtree,fasttree,hybrid,rapidnj}
                        Application to use for tree building (default: raxml)
  --tree-args TREE_ARGS
                        Quoted string of further arguments passed to tree building algorithm (start string with a space if there is a risk of being
                        interpreted as a flag) (default: None)
  --first-tree-builder {raxml,raxmlng,iqtree,fasttree,rapidnj,star}
                        Application to use for building the first tree (default: None)
  --first-tree-args FIRST_TREE_ARGS
                        Further arguments passed to first tree building algorithm (default: None)
  --outgroup OUTGROUP, -o OUTGROUP
                        Outgroup name for rerooting. A list of comma separated names can be used if they form a clade (default: None)
  --bootstrap BOOTSTRAP, -# BOOTSTRAP
                        Number of bootstrap replicates to perform with final alignment (default: 0)
  --transfer-bootstrap  Calculate bootstrap supporting transfer bootstrap expectation (default: False)
  --sh-test             Perform an SH test of node likelihoods (default: False)

Nucleotide substitution model options:
  --model-fitter {raxml,raxmlng,iqtree,fasttree,None}, -F {raxml,raxmlng,iqtree,fasttree,None}
                        Application to use for model fitting [if unspecified: same as tree builder if possible, else raxml] (default: None)
  --model {JC,K2P,HKY,GTR,GTRGAMMA,GTRCAT}, -M {JC,K2P,HKY,GTR,GTRGAMMA,GTRCAT}
                        Nucleotide substitution model (not all available for all tree building algorithms) (default: GTRGAMMA)
  --model-args MODEL_ARGS
                        Quoted string of further arguments passed to model fitting algorithm (start string with a space if there is a risk of being
                        interpreted as a flag) (default: None)
  --custom-model CUSTOM_MODEL
                        String corresponding to a substitution model for the selected tree building algorithm (default: None)
  --first-model-fitter {raxml,raxmlng,iqtree,fasttree,None}
                        Application to use for model fitting in first iteration [if unspecified: same as tree builder if possible, else raxml] (default:
                        None)
  --first-model {JC,K2P,HKY,GTR,GTRGAMMA,GTRCAT}
                        Nucleotide substitution model used for first tree (default: None)
  --first-model-args FIRST_MODEL_ARGS
                        Further arguments passed to model fitting algorithm used in firstiteration (if unspecified: same as --first-tree-builder-args)
                        (default: None)
  --custom-first-model CUSTOM_FIRST_MODEL
                        String corresponding to a substitution model for the selected tree building algorithm for the first iteration (default: None)

Ancestral sequence reconstruction options:
  --mar                 Use marginal, rather than joint, ancestral reconstruction (default: False)
  --seq-recon {raxml,raxmlng,iqtree,None}
                        Algorithm to use for marginal reconstruction [if unspecified: same as tree builder if possible, else raxml; requires --mar flag]
                        (default: None)
  --seq-recon-args SEQ_RECON_ARGS
                        Further arguments passed to sequence reconstruction algorithm (start string with a space if there is a risk of being interpreted as
                        a flag) (default: None)

Recombination detection options:
  --min-snps MIN_SNPS, -m MIN_SNPS
                        Min SNPs to identify a recombination block (default: 3)
  --min-window-size MIN_WINDOW_SIZE, -a MIN_WINDOW_SIZE
                        Minimum window size (default: 100)
  --max-window-size MAX_WINDOW_SIZE, -b MAX_WINDOW_SIZE
                        Maximum window size (default: 10000)
  --p-value P_VALUE     Uncorrected p value used to identify recombinations (default: 0.05)
  --trimming-ratio TRIMMING_RATIO
                        Ratio of log probabilities used to trim recombinations (default: 1.0)
  --extensive-search    Undertake slower, more thorough, search for recombination (default: False)

Algorithm start/stop options:
  --iterations ITERATIONS, -i ITERATIONS
                        Maximum No. of iterations (default: 5)
  --converge-method {weighted_robinson_foulds,robinson_foulds,recombination}, -z {weighted_robinson_foulds,robinson_foulds,recombination}
                        Criteria to use to know when to halt iterations (default: weighted_robinson_foulds)
  --resume RESUME       Intermediate tree from previous run (must include "iteration_X" in file name) (default: None)
```

  

### snp-sites

```Bash
$ snp-sites
Usage: snp-sites [-rmvpcbhV] [-o output_filename] <file>
This program finds snp sites from a multi FASTA alignment file.
 -r     output internal pseudo reference sequence
 -m     output a multi fasta alignment file (default)
 -v     output a VCF file
 -p     output a phylip file
 -o STR specify an output filename [STDOUT]
 -c     only output columns containing exclusively ACGT
 -C     only output count of constant sites (suitable for IQ-TREE -fconst) and nothing else
 -b     output monomorphic sites, used for BEAST
 -h     this help message
 -V     print version and exit
 <file> input alignment file which can optionally be gzipped

Example: creating files for BEAST
 snp-sites -cb -o outputfile.aln inputfile.aln

If you use this program, please cite:
"SNP-sites: rapid efficient extraction of SNPs from multi-FASTA alignments",
Andrew J. Page, Ben Taylor, Aidan J. Delaney, Jorge Soares, Torsten Seemann, Jacqueline A. Keane, Simon R. Harris,
Microbial Genomics 2(4), (2016). http://dx.doi.org/10.1099/mgen.0.000056
```

### FastTree

```CSS
 FastTree
Usage for FastTree version 2.1.11 SSE3:
  FastTree protein_alignment > tree
  FastTree < protein_alignment > tree
  FastTree -out tree protein_alignment
  FastTree -nt nucleotide_alignment > tree
  FastTree -nt -gtr < nucleotide_alignment > tree
  FastTree < nucleotide_alignment > tree
FastTree accepts alignments in fasta or phylip interleaved formats

Common options (must be before the alignment file):
  -quiet to suppress reporting information
  -nopr to suppress progress indicator
  -log logfile -- save intermediate trees, settings, and model details
  -fastest -- speed up the neighbor joining phase & reduce memory usage
        (recommended for >50,000 sequences)
  -n <number> to analyze multiple alignments (phylip format only)
        (use for global bootstrap, with seqboot and CompareToBootstrap.pl)
  -nosupport to not compute support values
  -intree newick_file to set the starting tree(s)
  -intree1 newick_file to use this starting tree for all the alignments
        (for faster global bootstrap on huge alignments)
  -pseudo to use pseudocounts (recommended for highly gapped sequences)
  -gtr -- generalized time-reversible model (nucleotide alignments only)
  -lg -- Le-Gascuel 2008 model (amino acid alignments only)
  -wag -- Whelan-And-Goldman 2001 model (amino acid alignments only)
  -quote -- allow spaces and other restricted characters (but not ' ) in
           sequence names and quote names in the output tree (fasta input only;
           FastTree will not be able to read these trees back in)
  -noml to turn off maximum-likelihood
  -nome to turn off minimum-evolution NNIs and SPRs
        (recommended if running additional ML NNIs with -intree)
  -nome -mllen with -intree to optimize branch lengths for a fixed topology
  -cat # to specify the number of rate categories of sites (default 20)
      or -nocat to use constant rates
  -gamma -- after optimizing the tree under the CAT approximation,
      rescale the lengths to optimize the Gamma20 likelihood
  -constraints constraintAlignment to constrain the topology search
       constraintAlignment should have 1s or 0s to indicates splits
  -expert -- see more options
For more information, see http://www.microbesonline.org/fasttree/
```

### iqtree

```Bash
$ iqtree
IQ-TREE multicore version 1.6.12 for Linux 64-bit built Aug 15 2019
Developed by Bui Quang Minh, Nguyen Lam Tung, Olga Chernomor,
Heiko Schmidt, Dominik Schrempf, Michael Woodhams.

Command-line examples (replace 'iqtree ...' by actual path to executable):

1. Infer maximum-likelihood tree from a sequence alignment (example.phy)
   with the best-fit model automatically selected by ModelFinder:
     iqtree -s example.phy

2. Perform ModelFinder without subsequent tree inference:
     iqtree -s example.phy -m MF
   (use '-m TEST' to resemble jModelTest/ProtTest)

3. Combine ModelFinder, tree search, ultrafast bootstrap and SH-aLRT test:
     iqtree -s example.phy -alrt 1000 -bb 1000

4. Perform edge-linked proportional partition model (example.nex):
     iqtree -s example.phy -spp example.nex
   (replace '-spp' by '-sp' for edge-unlinked model)

5. Find best partition scheme by possibly merging partitions:
     iqtree -s example.phy -sp example.nex -m MF+MERGE
   (use '-m TESTMERGEONLY' to resemble PartitionFinder)

6. Find best partition scheme followed by tree inference and bootstrap:
     iqtree -s example.phy -spp example.nex -m MFP+MERGE -bb 1000

7. Use 4 CPU cores to speed up computation: add '-nt 4' option

---
PoMo command-line examples:
1. Standard tree inference (HKY model, empirical nucleotide frequencies):
     iqtree -s counts_file.cf -m HKY+P

2. Set virtual population size to 15:
     iqtree -s counts_file.cf -m HKY+P+N15

3. Use GTR model and estimate state frequencies with maxmimum lilelihood:
     iqtree -s counts_file.cf -m GTR+P+FO

4. Polymorphism-aware mixture model with N=5 and weighted binomial sampling:
     iqtree -s counts_file.cf -m "MIX{HKY+P{EMP},JC+P}+N5+WB"

---
To show all available options: run 'iqtree -h'

Have a look at the tutorial and manual for more information:
     http://www.iqtree.org
```

  

  

  

## 准备工作

新建文件夹，把测序文件放进去

```Bash
mkdir raw_data
```

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=N2MzMGIwOThhMzU1YTEzY2VjM2YwZTgyMDQ3MzcyNzZfZU5USW9WOE9ZRDRyZ1kyZzQ1Mk1iM1hQUXRrV1dTTnBfVG9rZW46VlFhUGJ5OTlnb2swS1Z4T2tnSWNsSEM3bjBjXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

使用命令生成 mapping_file.txt

```Bash
ls raw_data/| awk '{print $1}' | sed 's/\.fna$//' | awk -v prefix="$(pwd)/raw_data" '{print "snp_result/"$1 "\t" prefix "/" $1 ".fasta"}' > mapping_file.txt
```

```Plain
ls raw_data/ | sed 's/\.fasta$//' | awk -v prefix="$(pwd)/raw_data" '{print "snp_result/" $1 "\t" prefix "/" $1 ".fasta"}' > mapping_file.txt
```

  

mapping_file.txt 文件内容及格式如下：

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=ZWIxOGYzOWEyZWIwNWRmNGZhYjRhMDBkYmUzM2FjMWRfSE1QNmFCbFdzUzR4T1ZGRG9WTURFWWZEeFF5bU1GVnFfVG9rZW46QUR0eWJwZUYyb05hOFV4NjdabWNXVXNIbmRjXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

  

将物种的参考序列放进来，这里跑的是大肠，选的参考序列是：GCA_000005845.2_ASM 584 v 2_genomic.fna

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=MmYwOGM0MmRmOGU0YjY0ZmFjMzdmN2ZmYzg4NzhiY2Nfc2dQQTJ2VUNmUTJYM2d2aXBJZEhJSmVRaTZRTUFPS1hfVG9rZW46VXNWVGI1QmRHbzFMNEV4VDhGZGN4aDh2bjFkXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

参考序列改成 fasta 后缀

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=ZTYzNDI3OGVhMDNhOTg3MzA3NTU4OGM3ZDU4YjNhYjNfNEZoNTlwbjN1WlhqMkUzVUcyM2Z2SmxXSXllRURac3NfVG9rZW46REd5bGJuMzRyb3RIZER4UWZTNGNlNGc5bk9WXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

## snippy-multi 命令生成 run_snp.sh 脚本并后台执行（一分钟两个，基因组越多越慢）

使用 snippy-multi 命令生成 shell 脚本文件批量执行，其中--reference 后面的内容是需要修改的，改成参考序列文件的名字

食堂服务器需要 biostack 才能找到 snippy-multi

```Bash
snippy-multi mapping_file.txt --reference ZX5.fna --cpus 40 > run_snp.sh
```

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=YWUyY2FlNGMyNTJmOGU4YTRkNmI0NDc4YmY1ZjUwMGNfV0M4eUpEeXZ6ZHk2dnVTVHdsajU3Z3I3QVgxa1huODFfVG9rZW46RkRqWmJYdTNybzZrR294d2hHdGNGV1N6bjVnXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

run_snp.sh 文件内容及格式如下：

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=MTNiZGRhNjY3MTA3N2Q3YmU2ZDMyNzFkNDMyNTk3MThfYk84dkpDZEF1VDlkWW5sMm96cUZCaEhCWUxEYVVrcWhfVG9rZW46UnN4aGJjUHJ5b05FYmR4cDZRMmM4dkJWbnZiXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

但其最后一行是这样的（用到了 snippy-core）

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=NTIyM2EyYjI1Y2UyYjQxMjA0ZTFmYjAxYjFiZTVjNjhfbGJWQWU4cGlNald5WEFpa1l6eURIMUFwVHkyQTVwRGFfVG9rZW46T0Ywb2JRU09kb3pPTkt4ZWdNYWM5cW92bjhjXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

赋予 run_snp.sh 执行权限（run_snp.sh 名字会变绿），后台运行，一分钟跑好两个

```Bash
chmod +x run_snp.sh
nohup bash run_snp.sh &
```

查看跑到哪里了，可以用下面的命令：

  

```Bash
tail -f nohup.out
```

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=OGU1OTJjMzk2NTBlNTczY2NmOTI4ZWM1OWI4ZWM2NThfSW5qN2xOdW13dElnc3hhQnBzVzJ2RlloRmFaQmg2SmtfVG9rZW46Vmk3OWIyZmpMb0F3NEN4eXU5OGM3blNlbk9iXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

snp_result 文件夹下有输入的基因组文件与参考序列之间的 SNP 信息；以 core 开头的是 snippy-core 命令的运行结果；nohup.out 是后台运行日志，可以找到运行流程。

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=NjBkMDc2ZWM0Yzc1MDA4NGE0M2M0ODZkZGEzOThmM2NfSUxPQm9kQkNVQTVvNnRSamI0a2JqbjdSQ0RwdFZvVVpfVG9rZW46RmdCY2J0UEt1b3BlQTl4bTRRMGNYYmRWbk5kXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

## snippy 是如何运行的：

```Bash
$ cat nohup.out
[15:49:01] This is snippy 4.6.0
[15:49:01] Written by Torsten Seemann
[15:49:01] Obtained from https://github.com/tseemann/snippy
[15:49:01] Detected operating system: linux
[15:49:01] Enabling bundled linux tools.
[15:49:01] Found bwa - /biostack/tools/alignment/bwa-0.7.17/bwa
[15:49:01] Found bcftools - /biostack/tools/sam_utils/bcftools-1.15.1/bcftools
[15:49:01] Found samtools - /biostack/tools/sam_utils/samtools-1.15.1/samtools
[15:49:01] Found java - /biostack/tools/devtools/jdk-17.0.2/bin/java
[15:49:01] Found snpEff - /biostack/tools/variation/snippy-4.6.0/binaries/noarch/snpEff
[15:49:01] Found samclip - /biostack/tools/sam_utils/samclip-0.4.0/samclip
[15:49:01] Found seqtk - /biostack/tools/fastx_utils/seqtk-1.3/seqtk
[15:49:01] Found parallel - /biostack/tools/utils/parallel-20220522/bin/parallel
[15:49:01] Found freebayes - /biostack/tools/variation/snippy-4.6.0/binaries/linux/freebayes
[15:49:01] Found freebayes-parallel - /biostack/tools/variation/snippy-4.6.0/binaries/noarch/freebayes-parallel
[15:49:01] Found fasta_generate_regions.py - /biostack/tools/variation/snippy-4.6.0/binaries/noarch/fasta_generate_regions.py
[15:49:01] Found vcfstreamsort - /biostack/tools/variation/snippy-4.6.0/binaries/linux/vcfstreamsort
[15:49:01] Found vcfuniq - /biostack/tools/variation/snippy-4.6.0/binaries/linux/vcfuniq
[15:49:01] Found vcffirstheader - /biostack/tools/variation/snippy-4.6.0/binaries/noarch/vcffirstheader
[15:49:01] Found gzip - /usr/bin/gzip
[15:49:01] Found vt - /biostack/tools/variation/snippy-4.6.0/binaries/linux/vt
[15:49:01] Found snippy-vcf_to_tab - /biostack/tools/variation/snippy-4.6.0/bin/snippy-vcf_to_tab
[15:49:01] Found snippy-vcf_report - /biostack/tools/variation/snippy-4.6.0/bin/snippy-vcf_report
[15:49:01] Checking version: samtools --version is >= 1.7 - ok, have 1.15
[15:49:01] Checking version: bcftools --version is >= 1.7 - ok, have 1.15
[15:49:01] Checking version: freebayes --version is >= 1.1 - ok, have 1.3.1
[15:49:02] Checking version: snpEff -version is >= 4.3 - ok, have 4.3
[15:49:02] Checking version: bwa is >= 0.7.12 - ok, have 0.7.17
[15:49:02] Using reference: /project/TBAMR01/yangyue/tree/GCA_000005845.2_ASM584v2_genomic.fasta
[15:49:02] Treating reference as 'fasta' format.
[15:49:02] Will use 60 CPU cores.
[15:49:02] Using read file: /project/TBAMR01/yangyue/tree/raw_data/EC23HZZ001.fasta
[15:49:02] Creating folder: snp_result/EC23HZZ001
[15:49:02] Changing working directory: snp_result/EC23HZZ001
[15:49:02] Creating reference folder: reference
[15:49:02] Extracting FASTA and GFF from reference.
[15:49:02] Wrote 1 sequences to ref.fa
[15:49:02] Wrote 0 features to ref.gff
[15:49:02] Shredding /project/TBAMR01/yangyue/tree/raw_data/EC23HZZ001.fasta into pseudo-reads
[15:49:04] Wrote 391494 fake 250bp reads (20x, stride 25bp) to fake_reads.fq
[15:49:04] Freebayes will process 119 chunks of 39656 bp, 60 chunks at a time.
[15:49:04] Using BAM RG (Read Group) ID: EC23HZZ001
[15:49:04] Running: samtools faidx reference/ref.fa 2>> snps.log
[15:49:04] Running: bwa index reference/ref.fa 2>> snps.log
[15:49:05] Running: mkdir -p reference/genomes && cp -f reference/ref.fa reference/genomes/ref.fa 2>> snps.log
[15:49:05] Running: ln -sf reference/ref.fa . 2>> snps.log
[15:49:05] Running: ln -sf reference/ref.fa.fai . 2>> snps.log
[15:49:05] Running: mkdir -p reference/ref && gzip -c reference/ref.gff > reference/ref/genes.gff.gz 2>> snps.log
[15:49:05] Running: bwa mem  -Y -M -R '@RG\tID:EC23HZZ001\tSM:EC23HZZ001' -t 60 reference/ref.fa fake_reads.fq | samclip --max 10 --ref reference/ref.fa.fai | samtools sort -n -l 0 -T /tmp --threads 29 -m 266M | samtools fixmate -m --threads 29 - - | samtools sort -l 0 -T /tmp --threads 29 -m 266M | samtools markdup -T /tmp --threads 29 -r -s - - > snps.bam 2>> snps.log
[M::bwa_idx_load_from_disk] read 0 ALT contigs
[samclip] samclip 0.4.0 by Torsten Seemann (@torstenseemann)
[samclip] Loading: reference/ref.fa.fai
[samclip] Found 1 sequences in reference/ref.fa.fai
[M::process] read 391494 sequences (97873500 bp)...
[M::mem_process_seqs] Processed 391494 reads in 65.251 CPU sec, 1.171 real sec
[samclip] Processed 100000 records...
[samclip] Processed 200000 records...
[samclip] Processed 300000 records...
[main] Version: 0.7.17-r1188
[main] CMD: bwa mem -Y -M -R @RG\tID:EC23HZZ001\tSM:EC23HZZ001 -t 60 reference/ref.fa fake_reads.fq
[main] Real time: 2.468 sec; CPU: 66.072 sec
[samclip] Total SAM records 396806, removed 17666, allowed 2185, passed 379140
[samclip] Header contained 3 lines
[samclip] Done.
[bam_sort_core] merging from 0 files and 29 in-memory blocks...
[bam_sort_core] merging from 0 files and 29 in-memory blocks...
[15:49:08] Running: samtools index snps.bam 2>> snps.log
[15:49:09] Running: fasta_generate_regions.py reference/ref.fa.fai 39656 > reference/ref.txt 2>> snps.log
[15:49:09] Running: freebayes-parallel reference/ref.txt 60 -p 2 -P 0 -C 2 -F 0.05 --min-coverage 10 --min-repeat-entropy 1.0 -q 13 -m 60 --strict-vcf   -f reference/ref.fa snps.bam > snps.raw.vcf 2>> snps.log
[15:49:11] Running: bcftools view --include 'FMT/GT="1/1" && QUAL>=100 && FMT/DP>=10 && (FMT/AO)/(FMT/DP)>=0' snps.raw.vcf  | vt normalize -r reference/ref.fa - | bcftools annotate --remove '^INFO/TYPE,^INFO/DP,^INFO/RO,^INFO/AO,^INFO/AB,^FORMAT/GT,^FORMAT/DP,^FORMAT/RO,^FORMAT/AO,^FORMAT/QR,^FORMAT/QA,^FORMAT/GL' > snps.filt.vcf 2>> snps.log
normalize v0.5

options:     input VCF file                                  -
         [o] output VCF file                                 -
         [w] sorting window size                             10000
         [m] no fail on masked reference inconsistency       false
         [n] no fail on reference inconsistency              false
         [q] quiet                                           false
         [d] debug                                           false
         [r] reference FASTA file                            reference/ref.fa


stats: biallelic
          no. left trimmed                      : 34
          no. right trimmed                     : 187
          no. left and right trimmed            : 12
          no. right trimmed and left aligned    : 0
          no. left aligned                      : 0

       total no. biallelic normalized           : 233

       multiallelic
          no. left trimmed                      : 0
          no. right trimmed                     : 0
          no. left and right trimmed            : 0
          no. right trimmed and left aligned    : 0
          no. left aligned                      : 0

       total no. multiallelic normalized        : 0

       total no. variants normalized            : 233
       total no. variants observed              : 22419
       total no. reference observed             : 0

Time elapsed: 0.21s

[15:49:12] Running: cp snps.filt.vcf snps.vcf 2>> snps.log
[15:49:12] Running: /biostack/tools/variation/snippy-4.6.0/bin/snippy-vcf_to_tab --gff reference/ref.gff --ref reference/ref.fa --vcf snps.vcf > snps.tab 2>> snps.log
[15:49:12] Running: /biostack/tools/variation/snippy-4.6.0/bin/snippy-vcf_extract_subs snps.filt.vcf > snps.subs.vcf 2>> snps.log
[15:49:12] Running: bcftools convert -Oz -o snps.vcf.gz snps.vcf 2>> snps.log
[15:49:12] Running: bcftools index -f snps.vcf.gz 2>> snps.log
[15:49:13] Running: bcftools consensus --sample EC23HZZ001 -f reference/ref.fa -o snps.consensus.fa snps.vcf.gz 2>> snps.log
[15:49:13] Running: bcftools convert -Oz -o snps.subs.vcf.gz snps.subs.vcf 2>> snps.log
[15:49:13] Running: bcftools index -f snps.subs.vcf.gz 2>> snps.log
[15:49:13] Running: bcftools consensus --sample EC23HZZ001 -f reference/ref.fa -o snps.consensus.subs.fa snps.subs.vcf.gz 2>> snps.log
[15:49:13] Running: rm -f snps.subs.vcf.gz snps.subs.vcf.gz.csi snps.subs.vcf.gz.tbi 2>> snps.log
[15:49:13] Running: rm -f fake_reads\.fq 2>> snps.log
[15:49:13] Generating reference aligned/masked FASTA relative to reference: snps.aligned.fa
[15:49:16] Marked 651 heterozygous sites with 'n'
[15:49:16] Creating extra output files: BED GFF CSV TXT HTML
[15:49:16] Identified 22419 variants.
[15:49:16] Result folder: snp_result/EC23HZZ001
[15:49:16] Result files:
[15:49:16] * snp_result/EC23HZZ001/snps.aligned.fa
[15:49:16] * snp_result/EC23HZZ001/snps.bam
[15:49:16] * snp_result/EC23HZZ001/snps.bam.bai
[15:49:16] * snp_result/EC23HZZ001/snps.bed
[15:49:16] * snp_result/EC23HZZ001/snps.consensus.fa
[15:49:16] * snp_result/EC23HZZ001/snps.consensus.subs.fa
[15:49:16] * snp_result/EC23HZZ001/snps.csv
[15:49:16] * snp_result/EC23HZZ001/snps.filt.vcf
[15:49:16] * snp_result/EC23HZZ001/snps.gff
[15:49:16] * snp_result/EC23HZZ001/snps.html
[15:49:16] * snp_result/EC23HZZ001/snps.log
[15:49:16] * snp_result/EC23HZZ001/snps.raw.vcf
[15:49:16] * snp_result/EC23HZZ001/snps.subs.vcf
[15:49:16] * snp_result/EC23HZZ001/snps.tab
[15:49:16] * snp_result/EC23HZZ001/snps.txt
[15:49:16] * snp_result/EC23HZZ001/snps.vcf
[15:49:16] * snp_result/EC23HZZ001/snps.vcf.gz
[15:49:16] * snp_result/EC23HZZ001/snps.vcf.gz.csi
[15:49:16] Walltime used: 15 seconds
[15:49:16] Have a suggestion? Tell me at https://github.com/tseemann/snippy/issues
[15:49:16] Done.
```

## snippy-core 是如何运行的：

```Bash
This is snippy-core 4.6.0
Obtained from http://github.com/tseemann/snippy
Enabling bundled tools for linux
Found any2fasta - /biostack/tools/fastx_utils/any2fasta-0.4.2/any2fasta
Found samtools - /biostack/tools/sam_utils/samtools-1.15.1/samtools
Found minimap2 - /biostack/tools/alignment/minimap2-2.24/minimap2
Found bedtools - /biostack/tools/sam_utils/bedtools-2.30.0/bin/bedtools
Found snp-sites - /biostack/tools/variation/snp-sites-2.5.1/bin/snp-sites
Saving reference FASTA: core.ref.fa
This is any2fasta 0.4.2
Opening 'snp_result/EC23HZZ001/ref.fa'
Detected FASTA format
Read 77362 lines from 'snp_result/EC23HZZ001/ref.fa'
Wrote 1 sequences from FASTA file.
Processed 1 files.
Done.
Loaded 1 sequences totalling 4641652 bp.
Will mask 0 regions totalling 0 bp ~ 0.00%
0       EC23HZZ001      snp=26338       del=389 ins=237 het=651 unaligned=452194
1       EC23HZZ003      snp=13004       del=187 ins=198 het=721 unaligned=381402
2       EC23HZZ007      snp=12995       del=175 ins=198 het=732 unaligned=380797
3       EC23HZZ008      snp=50172       del=549 ins=502 het=563 unaligned=484286
4       EC23HZZ010      snp=50088       del=547 ins=500 het=744 unaligned=484255
5       EC23HZZ013      snp=13001       del=175 ins=198 het=722 unaligned=381615
6       EC23HZZ014      snp=49035       del=520 ins=541 het=398 unaligned=475696
7       EC23HZZ015      snp=26354       del=389 ins=237 het=659 unaligned=452000
8       EC23HZZ016      snp=26354       del=389 ins=237 het=658 unaligned=452094
9       EC23HZZ018      snp=26342       del=328 ins=237 het=638 unaligned=452150
10      EC23HZZ107      snp=28007       del=440 ins=413 het=1095        unaligned=374959
11      EC23HZZ108      snp=19757       del=349 ins=319 het=1039        unaligned=460129
12      EC23HZZ109      snp=49581       del=491 ins=538 het=705 unaligned=445126
13      EC23HZZ112      snp=32010       del=323 ins=323 het=1637        unaligned=538444
14      EC23HZZ113      snp=50036       del=586 ins=629 het=574 unaligned=461278
15      EC23HZZ114      snp=10837       del=124 ins=193 het=1805        unaligned=333995
16      EC23HZZ117      snp=11621       del=229 ins=185 het=101 unaligned=346795
17      EC23HZZ118      snp=49909       del=502 ins=554 het=756 unaligned=455816
18      EC23HZZ119      snp=49830       del=597 ins=581 het=510 unaligned=453059
19      EC23HZZ120      snp=11620       del=229 ins=185 het=102 unaligned=346800
20      EC23HZZ201      snp=18329       del=232 ins=288 het=388 unaligned=445718
21      EC23HZZ202      snp=29805       del=267 ins=341 het=3539        unaligned=424746
22      EC23HZZ204      snp=31315       del=340 ins=318 het=880 unaligned=563345
23      EC23HZZ206      snp=31553       del=332 ins=301 het=910 unaligned=589018
24      EC23HZZ209      snp=29284       del=354 ins=297 het=1294        unaligned=379622
25      EC23JHZ010A     snp=2846        del=112 ins=69  het=339 unaligned=291238
26      EC23JHZ012      snp=27395       del=327 ins=274 het=1197        unaligned=470335
27      EC23JHZ013A     snp=48536       del=506 ins=642 het=815 unaligned=521642
28      EC23JHZ013B     snp=34051       del=519 ins=369 het=696 unaligned=509295
29      EC23JHZ014      snp=16750       del=221 ins=259 het=834 unaligned=374595
30      EC23JHZ015A     snp=2831        del=112 ins=68  het=345 unaligned=291369
31      EC23JHZ016B     snp=18468       del=331 ins=274 het=631 unaligned=427885
32      EC23JHZ019A     snp=17488       del=250 ins=250 het=948 unaligned=347348
33      EC23JHZ019B     snp=34060       del=519 ins=369 het=739 unaligned=509113
34      EC23JHZ021B     snp=49895       del=519 ins=645 het=1635        unaligned=458679
35      EC23JHZ09B      snp=16481       del=387 ins=263 het=282 unaligned=413261
36      EC23JHZ105      snp=49725       del=569 ins=541 het=607 unaligned=482354
37      EC23JHZ106      snp=85586       del=636 ins=729 het=1043        unaligned=596340
38      EC23JHZ107      snp=23308       del=455 ins=291 het=1013        unaligned=492569
39      EC23JHZ108      snp=18989       del=342 ins=319 het=288 unaligned=420657
40      EC23JHZ110      snp=48712       del=564 ins=537 het=914 unaligned=409829
41      EC23JHZ124      snp=32602       del=406 ins=381 het=182 unaligned=442396
42      EC23SXZ005      snp=32322       del=422 ins=427 het=666 unaligned=344640
43      EC23SXZ009      snp=48557       del=532 ins=460 het=1210        unaligned=368432
44      EC23SXZ012      snp=8350        del=108 ins=159 het=542 unaligned=363563
45      EC23SXZ013      snp=8384        del=109 ins=158 het=544 unaligned=364841
46      EC23SXZ014      snp=49461       del=708 ins=599 het=1468        unaligned=468966
47      EC23SXZ015      snp=18257       del=338 ins=364 het=962 unaligned=457766
48      EC23SXZ019      snp=49595       del=651 ins=585 het=792 unaligned=474413
49      EC23SXZ024      snp=49062       del=692 ins=596 het=726 unaligned=507568
50      EC23SXZ025      snp=18263       del=338 ins=284 het=904 unaligned=453747
Opening: core.tab
Opening: core.vcf
Processing contig: U00096.3
Generating core.full.aln
Creating TSV file: core.txt
Running: snp-sites -c -o core.aln core.full.aln
Found a bug? Post it at http://github.com/tseemann/snippy/issues
Done.
```

```Bash
mv nohup.out run_snp.nohup.out && mkdir core-file && find . -maxdepth 1 -type f -name 'core*' -exec mv {} core-file \;
```

## 运行 snippy-clean_full_aln（挺快的）

```Bash
nohup snippy-clean_full_aln core-file/core.full.aln > clean.full.aln &
```

这一步将 core-file/core.full.aln 小写的 atgc 变成大写的。/..

## 执行 run_gubbins.py，最慢

```Bash
nohup run_gubbins.py --threads 40 -p gubbins clean.full.aln &
```

## run_gubbins.py 是如何运行的(示例)：

日志信息显示了一个使用 RAxML 和 Gubbins 进行的复杂生物信息学分析流程，主要涉及构建系统发育树、祖先序列重建、检测重组事件等步骤。以下是对您提供日志的总结分析：

  

  

1. **RAxML 分析**:
    
    1. 使用了 RAxML 软件版本 8.2.12。
        
    2. 采用 GTRGAMMA 模型进行序列演化模型的优化。
        
    3. 多次迭代过程中，alpha 参数（反映速率异质性的参数）的值多次超过 10，提示可能需要进行模型测试以确认是否真的需要纳入速率异质性模型。如果不需要，可以使用 CAT 模型并指定"-V"选项来运行。
        

  

2. **祖先序列重建**:
    
    1. 使用了 pyjar 工具进行联合祖先序列重建。
        
    2. 在每次迭代中，祖先序列被重建并转移到原始的校正重组的树上。
        

  

3. **Gubbins 分析**:
    
    1. 使用 Gubbins 工具检测重组事件。
        
    2. 在每次迭代中，使用 Gubbins 分析处理过的序列和树，并使用参数来定义最小和最大窗口大小，以及显著性水平。
        

  

4. **迭代过程**:
    
    1. 整个分析过程进行了多次迭代，每次迭代包括构建树、祖先序列重建和重组检测。
        
    2. 每次迭代后，都会检查收敛性，确定是否需要进一步迭代。
        

  

5. **最终输出**:
    
    1. 在三次迭代后，分析达到了收敛，树结构没有变化。
        
    2. 最终输出包括最终的系统发育树和执行日志文件。
        

  

6. **警告信息**:
    
    1. 日志中多次出现警告，提示 alpha 参数的值过大，建议进行模型测试。
        

  

7. **路径和文件**:
    
    1. 分析涉及到多个文件和路径，包括序列对齐文件、树文件、输出文件等。
        
    2. 路径包括绝对路径和相对路径，但 RAxML 提示只接受绝对路径。
        

  

8. **运行时间**:
    
    1. 日志显示了每个步骤的运行时间，从几秒到几十秒不等。
        

  

9. **命令行调用**:
    
    1. 日志显示了用于执行分析的完整命令行调用，包括参数和选项。
        

  

10. **版本和贡献者**:
    
    1. 日志列出了 RAxML 的版本信息和代码贡献者。
        

  

这个流程是一个典型的使用 RAxML 和 Gubbins 进行的分子系统发育分析，包括了模型选择、参数优化、祖先状态重建和重组事件检测等步骤。通过迭代过程，分析逐渐收敛到一个稳定的结果。

```Bash
Warning, you specified a working directory via "-w"
Keep in mind that RAxML only accepts absolute path names, not relative ones!

RAxML can't, parse the alignment file as phylip file 
it will now try to parse it as FASTA file



Using BFGS method to optimize GTR rate parameters, to disable this specify "--no-bfgs" 


This is the RAxML Master Pthread

This is RAxML Worker Pthread Number: 4

This is RAxML Worker Pthread Number: 2

This is RAxML Worker Pthread Number: 1

This is RAxML Worker Pthread Number: 5

This is RAxML Worker Pthread Number: 6

This is RAxML Worker Pthread Number: 3

This is RAxML Worker Pthread Number: 7

This is RAxML Worker Pthread Number: 13

This is RAxML Worker Pthread Number: 10

This is RAxML Worker Pthread Number: 14

This is RAxML Worker Pthread Number: 12

This is RAxML Worker Pthread Number: 11

This is RAxML Worker Pthread Number: 16

This is RAxML Worker Pthread Number: 9

This is RAxML Worker Pthread Number: 8

This is RAxML Worker Pthread Number: 17

This is RAxML Worker Pthread Number: 15

This is RAxML Worker Pthread Number: 18

This is RAxML Worker Pthread Number: 21

This is RAxML Worker Pthread Number: 19

This is RAxML Worker Pthread Number: 20

This is RAxML Worker Pthread Number: 22

This is RAxML Worker Pthread Number: 25

This is RAxML Worker Pthread Number: 24

This is RAxML Worker Pthread Number: 23

This is RAxML Worker Pthread Number: 28

This is RAxML Worker Pthread Number: 26

This is RAxML Worker Pthread Number: 27

This is RAxML Worker Pthread Number: 29

This is RAxML Worker Pthread Number: 30

This is RAxML Worker Pthread Number: 37

This is RAxML Worker Pthread Number: 33

This is RAxML Worker Pthread Number: 34

This is RAxML Worker Pthread Number: 32

This is RAxML Worker Pthread Number: 35

This is RAxML Worker Pthread Number: 36

This is RAxML Worker Pthread Number: 31

This is RAxML Worker Pthread Number: 38

This is RAxML Worker Pthread Number: 40

This is RAxML Worker Pthread Number: 42

This is RAxML Worker Pthread Number: 41

This is RAxML Worker Pthread Number: 39

This is RAxML Worker Pthread Number: 44

This is RAxML Worker Pthread Number: 45

This is RAxML Worker Pthread Number: 43

This is RAxML Worker Pthread Number: 48

This is RAxML Worker Pthread Number: 47

This is RAxML Worker Pthread Number: 46

This is RAxML Worker Pthread Number: 49

This is RAxML Worker Pthread Number: 50

This is RAxML Worker Pthread Number: 51

This is RAxML Worker Pthread Number: 52

This is RAxML Worker Pthread Number: 53

This is RAxML Worker Pthread Number: 55

This is RAxML Worker Pthread Number: 54

This is RAxML Worker Pthread Number: 56

This is RAxML Worker Pthread Number: 57

This is RAxML Worker Pthread Number: 58

This is RAxML Worker Pthread Number: 59


This is RAxML version 8.2.12 released by Alexandros Stamatakis on May 2018.

With greatly appreciated code contributions by:
Andre Aberer      (HITS)
Simon Berger      (HITS)
Alexey Kozlov     (HITS)
Kassian Kobert    (HITS)
David Dao         (KIT and HITS)
Sarah Lutteropp   (KIT and HITS)
Nick Pattengale   (Sandia)
Wayne Pfeiffer    (SDSC)
Akifumi S. Tanabe (NRIFS)
Charlie Taylor    (UF)


Alignment has 1036 distinct alignment patterns

Proportion of gaps and completely undetermined characters in this alignment: 2.50%

RAxML Model Optimization up to an accuracy of 0.100000 log likelihood units

Using 1 distinct models/data partitions with joint branch length optimization


All free model parameters will be estimated by RAxML
GAMMA model of rate heterogeneity, ML estimate of alpha-parameter

GAMMA Model parameters will be estimated up to an accuracy of 0.1000000000 Log Likelihood units

Partition: 0
Alignment Patterns: 1036
Name: No Name Provided
DataType: DNA
Substitution Matrix: GTR




RAxML was called as follows:

raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_1_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_1.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem 



WARNING the alpha parameter with a value of 14.522213 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 30.290513 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 65.827586 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 147.513463 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 327.243560 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 742.781299 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


Model parameters (binary file format) written to: /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_binaryModelParameters.clean.full.iteration_1_reconstruction
0.148934 -310961.063521


Overall Time for Tree Evaluation 0.149016
Final GAMMA  likelihood: -310961.063521

Number of free parameters for AIC-TEST(BR-LEN): 22
Number of free parameters for AIC-TEST(NO-BR-LEN): 9


Model Parameters of Partition 0, Name: No Name Provided, Type of Data: DNA
alpha: 1000.000000
Tree-Length: 3.117331
rate A <-> C: 0.966412
rate A <-> G: 11.842626
rate A <-> T: 0.373033
rate C <-> G: 0.095087
rate C <-> T: 11.712111
rate G <-> T: 1.000000

freq pi(A): 0.221114
freq pi(C): 0.279947
freq pi(G): 0.272200
freq pi(T): 0.226738

Final tree written to:                 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_result.clean.full.iteration_1_reconstruction
Execution Log File written to:         /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_log.clean.full.iteration_1_reconstruction

--- Gubbins 3.2.1 ---

Croucher N. J., Page A. J., Connor T. R., Delaney A. J., Keane J. A., Bentley S. D., Parkhill J., Harris S.R. "Rapid phylogenetic analysis of large samples of recombinant bacterial whole genome sequences using Gubbins". Nucleic Acids Res. 2015 Feb 18;43(3):e15. doi: 10.1093/nar/gku1196.

Checking dependencies and input files...

Checking input alignment file...

Filtering input alignment...
...done. Run time: 1.79 s

Running Gubbins to detect SNPs...
gubbins /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.aln
...done. Run time: 2.96 s

Entering the main loop.

*** Iteration 1 ***

Constructing the phylogenetic tree with raxmlHPC-PTHREADS-AVX2...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -f d -p 1 -s /project/TBAMR01/songyu/partners/zhangyi/clean.full.aln.phylip -n clean.full.iteration_1 > /dev/null 2>&1
...done. Run time: 3.28 s

Reconstructing ancestral sequences with pyjar...

Fitting substitution model to tree...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_1_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_1.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem

Running joint ancestral reconstruction with pyjar
Warning, you specified a working directory via "-w"
Keep in mind that RAxML only accepts absolute path names, not relative ones!

RAxML can't, parse the alignment file as phylip file 
it will now try to parse it as FASTA file



Using BFGS method to optimize GTR rate parameters, to disable this specify "--no-bfgs" 


This is the RAxML Master Pthread

This is RAxML Worker Pthread Number: 2

This is RAxML Worker Pthread Number: 1

This is RAxML Worker Pthread Number: 4

This is RAxML Worker Pthread Number: 3

This is RAxML Worker Pthread Number: 5

This is RAxML Worker Pthread Number: 6

This is RAxML Worker Pthread Number: 8

This is RAxML Worker Pthread Number: 7

This is RAxML Worker Pthread Number: 9

This is RAxML Worker Pthread Number: 10

This is RAxML Worker Pthread Number: 12

This is RAxML Worker Pthread Number: 11

This is RAxML Worker Pthread Number: 13

This is RAxML Worker Pthread Number: 16

This is RAxML Worker Pthread Number: 14

This is RAxML Worker Pthread Number: 15

This is RAxML Worker Pthread Number: 17

This is RAxML Worker Pthread Number: 18

This is RAxML Worker Pthread Number: 22

This is RAxML Worker Pthread Number: 19

This is RAxML Worker Pthread Number: 20

This is RAxML Worker Pthread Number: 21

This is RAxML Worker Pthread Number: 23

This is RAxML Worker Pthread Number: 24

This is RAxML Worker Pthread Number: 25

This is RAxML Worker Pthread Number: 26

This is RAxML Worker Pthread Number: 27

This is RAxML Worker Pthread Number: 28

This is RAxML Worker Pthread Number: 29

This is RAxML Worker Pthread Number: 32

This is RAxML Worker Pthread Number: 31

This is RAxML Worker Pthread Number: 30

This is RAxML Worker Pthread Number: 33

This is RAxML Worker Pthread Number: 35

This is RAxML Worker Pthread Number: 39

This is RAxML Worker Pthread Number: 37

This is RAxML Worker Pthread Number: 36

This is RAxML Worker Pthread Number: 38

This is RAxML Worker Pthread Number: 34

This is RAxML Worker Pthread Number: 40

This is RAxML Worker Pthread Number: 41

This is RAxML Worker Pthread Number: 42

This is RAxML Worker Pthread Number: 43

This is RAxML Worker Pthread Number: 44

This is RAxML Worker Pthread Number: 45

This is RAxML Worker Pthread Number: 46

This is RAxML Worker Pthread Number: 47

This is RAxML Worker Pthread Number: 48

This is RAxML Worker Pthread Number: 49

This is RAxML Worker Pthread Number: 50

This is RAxML Worker Pthread Number: 51

This is RAxML Worker Pthread Number: 53

This is RAxML Worker Pthread Number: 52

This is RAxML Worker Pthread Number: 54

This is RAxML Worker Pthread Number: 55

This is RAxML Worker Pthread Number: 56

This is RAxML Worker Pthread Number: 57

This is RAxML Worker Pthread Number: 58

This is RAxML Worker Pthread Number: 59


This is RAxML version 8.2.12 released by Alexandros Stamatakis on May 2018.

With greatly appreciated code contributions by:
Andre Aberer      (HITS)
Simon Berger      (HITS)
Alexey Kozlov     (HITS)
Kassian Kobert    (HITS)
David Dao         (KIT and HITS)
Sarah Lutteropp   (KIT and HITS)
Nick Pattengale   (Sandia)
Wayne Pfeiffer    (SDSC)
Akifumi S. Tanabe (NRIFS)
Charlie Taylor    (UF)


Alignment has 1036 distinct alignment patterns

Proportion of gaps and completely undetermined characters in this alignment: 2.50%

RAxML Model Optimization up to an accuracy of 0.100000 log likelihood units

Using 1 distinct models/data partitions with joint branch length optimization


All free model parameters will be estimated by RAxML
GAMMA model of rate heterogeneity, ML estimate of alpha-parameter

GAMMA Model parameters will be estimated up to an accuracy of 0.1000000000 Log Likelihood units

Partition: 0
Alignment Patterns: 1036
Name: No Name Provided
DataType: DNA
Substitution Matrix: GTR




RAxML was called as follows:

raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_2_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_2.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem 



WARNING the alpha parameter with a value of 14.522213 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 30.290513 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 65.827586 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 147.513463 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 327.243560 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 742.781299 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


Model parameters (binary file format) written to: /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_binaryModelParameters.clean.full.iteration_2_reconstruction
0.134592 -310961.063521


Overall Time for Tree Evaluation 0.134682
Final GAMMA  likelihood: -310961.063521

Number of free parameters for AIC-TEST(BR-LEN): 22
Number of free parameters for AIC-TEST(NO-BR-LEN): 9


Model Parameters of Partition 0, Name: No Name Provided, Type of Data: DNA
alpha: 1000.000000
Tree-Length: 3.117331
rate A <-> C: 0.966412
rate A <-> G: 11.842626
rate A <-> T: 0.373033
rate C <-> G: 0.095087
rate C <-> T: 11.712111
rate G <-> T: 1.000000

freq pi(A): 0.221114
freq pi(C): 0.279947
freq pi(G): 0.272200
freq pi(T): 0.226738

Final tree written to:                 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_result.clean.full.iteration_2_reconstruction
Execution Log File written to:         /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_log.clean.full.iteration_2_reconstruction

Transferring pyjar results onto original recombination-corrected tree

Done transfer
...done. Run time: 9.34 s

Running Gubbins to detect recombinations...
gubbins -r -v clean.full.aln.gaps.vcf -a 100 -b 10000 -f /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.aln -t clean.full.iteration_1.tre -m 3 -p 0.05 -i 1.0 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_1.internal.joint.aln
...done. Run time: 25.03 s

Checking for convergence...
...done. Run time: 25.03 s

*** Iteration 2 ***

Constructing the phylogenetic tree with raxmlHPC-PTHREADS-AVX2...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -f d -p 1 -s /project/TBAMR01/songyu/partners/zhangyi/clean.full.iteration_1.tre.phylip -n clean.full.iteration_2 -t /project/TBAMR01/songyu/partners/zhangyi/clean.full.iteration_1.tre > /dev/null 2>&1
...done. Run time: 25.42 s

Reconstructing ancestral sequences with pyjar...

Fitting substitution model to tree...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_2_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_2.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem

Running joint ancestral reconstruction with pyjar
Warning, you specified a working directory via "-w"
Keep in mind that RAxML only accepts absolute path names, not relative ones!

RAxML can't, parse the alignment file as phylip file 
it will now try to parse it as FASTA file



Using BFGS method to optimize GTR rate parameters, to disable this specify "--no-bfgs" 


This is the RAxML Master Pthread

This is RAxML Worker Pthread Number: 3

This is RAxML Worker Pthread Number: 6

This is RAxML Worker Pthread Number: 1

This is RAxML Worker Pthread Number: 4

This is RAxML Worker Pthread Number: 2

This is RAxML Worker Pthread Number: 9

This is RAxML Worker Pthread Number: 7

This is RAxML Worker Pthread Number: 5

This is RAxML Worker Pthread Number: 8

This is RAxML Worker Pthread Number: 10

This is RAxML Worker Pthread Number: 11

This is RAxML Worker Pthread Number: 12

This is RAxML Worker Pthread Number: 14

This is RAxML Worker Pthread Number: 13

This is RAxML Worker Pthread Number: 15

This is RAxML Worker Pthread Number: 16

This is RAxML Worker Pthread Number: 17

This is RAxML Worker Pthread Number: 19

This is RAxML Worker Pthread Number: 18

This is RAxML Worker Pthread Number: 20

This is RAxML Worker Pthread Number: 22

This is RAxML Worker Pthread Number: 24

This is RAxML Worker Pthread Number: 21

This is RAxML Worker Pthread Number: 25

This is RAxML Worker Pthread Number: 23

This is RAxML Worker Pthread Number: 26

This is RAxML Worker Pthread Number: 28

This is RAxML Worker Pthread Number: 27

This is RAxML Worker Pthread Number: 29

This is RAxML Worker Pthread Number: 30

This is RAxML Worker Pthread Number: 32

This is RAxML Worker Pthread Number: 31

This is RAxML Worker Pthread Number: 34

This is RAxML Worker Pthread Number: 33

This is RAxML Worker Pthread Number: 35

This is RAxML Worker Pthread Number: 37

This is RAxML Worker Pthread Number: 40

This is RAxML Worker Pthread Number: 39

This is RAxML Worker Pthread Number: 36

This is RAxML Worker Pthread Number: 38

This is RAxML Worker Pthread Number: 42

This is RAxML Worker Pthread Number: 43

This is RAxML Worker Pthread Number: 44

This is RAxML Worker Pthread Number: 45

This is RAxML Worker Pthread Number: 46

This is RAxML Worker Pthread Number: 48

This is RAxML Worker Pthread Number: 47

This is RAxML Worker Pthread Number: 49

This is RAxML Worker Pthread Number: 50

This is RAxML Worker Pthread Number: 52

This is RAxML Worker Pthread Number: 51

This is RAxML Worker Pthread Number: 41

This is RAxML Worker Pthread Number: 53

This is RAxML Worker Pthread Number: 55

This is RAxML Worker Pthread Number: 57

This is RAxML Worker Pthread Number: 56

This is RAxML Worker Pthread Number: 54

This is RAxML Worker Pthread Number: 59

This is RAxML Worker Pthread Number: 58


This is RAxML version 8.2.12 released by Alexandros Stamatakis on May 2018.

With greatly appreciated code contributions by:
Andre Aberer      (HITS)
Simon Berger      (HITS)
Alexey Kozlov     (HITS)
Kassian Kobert    (HITS)
David Dao         (KIT and HITS)
Sarah Lutteropp   (KIT and HITS)
Nick Pattengale   (Sandia)
Wayne Pfeiffer    (SDSC)
Akifumi S. Tanabe (NRIFS)
Charlie Taylor    (UF)


Alignment has 1036 distinct alignment patterns

Proportion of gaps and completely undetermined characters in this alignment: 2.50%

RAxML Model Optimization up to an accuracy of 0.100000 log likelihood units

Using 1 distinct models/data partitions with joint branch length optimization


All free model parameters will be estimated by RAxML
GAMMA model of rate heterogeneity, ML estimate of alpha-parameter

GAMMA Model parameters will be estimated up to an accuracy of 0.1000000000 Log Likelihood units

Partition: 0
Alignment Patterns: 1036
Name: No Name Provided
DataType: DNA
Substitution Matrix: GTR




RAxML was called as follows:

raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_3_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_3.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem 



WARNING the alpha parameter with a value of 14.522213 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 30.290513 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 65.827586 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 147.513463 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 327.243560 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 742.781299 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


WARNING the alpha parameter with a value of 1000.000000 estimated by RAxML for partition number 0 with the name "No Name Provided"
is larger than 10.000000. You should do a model test and confirm that you actually need to incorporate a model of rate heterogeneity!
You can run inferences with a plain substitution model (without rate heterogeneity) by specifyng the CAT model and the "-V" option!


Model parameters (binary file format) written to: /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_binaryModelParameters.clean.full.iteration_3_reconstruction
0.138820 -310961.063521


Overall Time for Tree Evaluation 0.138901
Final GAMMA  likelihood: -310961.063521

Number of free parameters for AIC-TEST(BR-LEN): 22
Number of free parameters for AIC-TEST(NO-BR-LEN): 9


Model Parameters of Partition 0, Name: No Name Provided, Type of Data: DNA
alpha: 1000.000000
Tree-Length: 3.117331
rate A <-> C: 0.966412
rate A <-> G: 11.842626
rate A <-> T: 0.373033
rate C <-> G: 0.095087
rate C <-> T: 11.712111
rate G <-> T: 1.000000

freq pi(A): 0.221114
freq pi(C): 0.279947
freq pi(G): 0.272200
freq pi(T): 0.226738

Final tree written to:                 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_result.clean.full.iteration_3_reconstruction
Execution Log File written to:         /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/RAxML_log.clean.full.iteration_3_reconstruction

Transferring pyjar results onto original recombination-corrected tree

Done transfer
...done. Run time: 31.21 s

Running Gubbins to detect recombinations...
gubbins -r -v clean.full.aln.gaps.vcf -a 100 -b 10000 -f /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.aln -t clean.full.iteration_2.tre -m 3 -p 0.05 -i 1.0 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_2.internal.joint.aln
...done. Run time: 46.82 s

Checking for convergence...
...done. Run time: 46.82 s

*** Iteration 3 ***

Constructing the phylogenetic tree with raxmlHPC-PTHREADS-AVX2...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -f d -p 1 -s /project/TBAMR01/songyu/partners/zhangyi/clean.full.iteration_2.tre.phylip -n clean.full.iteration_3 -t /project/TBAMR01/songyu/partners/zhangyi/clean.full.iteration_2.tre > /dev/null 2>&1
...done. Run time: 47.09 s

Reconstructing ancestral sequences with pyjar...

Fitting substitution model to tree...
raxmlHPC-PTHREADS-AVX2 -T 60 -safe -m GTRGAMMA -s clean.full.aln.snp_sites.aln -n clean.full.iteration_3_reconstruction -t /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_3.tre.rooted -f e -w /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem

Running joint ancestral reconstruction with pyjar

Transferring pyjar results onto original recombination-corrected tree

Done transfer
...done. Run time: 52.77 s

Running Gubbins to detect recombinations...
gubbins -r -v clean.full.aln.gaps.vcf -a 100 -b 10000 -f /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.aln -t clean.full.iteration_3.tre -m 3 -p 0.05 -i 1.0 /project/TBAMR01/songyu/partners/zhangyi/tmp2w1yvlem/clean.full.iteration_3.internal.joint.aln
...done. Run time: 68.20 s

Checking for convergence...
Convergence after 3 iterations: Tree observed before.

Exiting the main loop.

Creating the final output...
...finished. Total run time: 68.25 s
```

## 修改日志文件名称

修改后台运行 run_gubbins.py 的日志文件 nohup.out 的名称，改为 gubbins.nohup.out；同时把 run_gubbins.py 运行结果文件移到新建的 gubbins-file 文件夹

```Bash
mv nohup.out gubbins.nohup.out && mkdir gubbins-file && mv gubbins.* gubbins-file
```

  

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=NWNmZWU2N2Q1MDJkOWU3MGIzOWY1ZjllZTgxZWEyNmNfWmxCQlpjM01Oc0ZHZkp5MWlMUW82NERRUUdJWTlFazJfVG9rZW46VUhWMWJUTUllb1NpQnd4a0FNb2NER3VFbnZoXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

## 后台运行 snp-sites

```Bash
nohup snp-sites -c gubbins-file/gubbins.filtered_polymorphic_sites.fasta > clean.core.aln &
```

## 改名字

```Bash
cp clean.core.aln final_clean.core.aln
```

## 根据比对文件生成树文件（有两种选择）

### FastTree 建树（ML 法建树中最快）

```Bash
nohup FastTree -gtr -nt final_clean.core.aln > final_clean.core.tree &
```

### iqtree 建树（贾程皓师兄）

赋予 iqtree.sh 脚本执行权限并运行即可

```Bash
chmod +x iqtree.sh
nohup bash iqtree.sh &
```

iqtree.sh 脚本内容

```Bash
$ cat iqtree.sh
iqtree -s final_clean.core.aln -m TESTNEW -nt AUTO
mkdir ./finaltree
cd ./finaltree        
cp ../final_clean.core.aln .
model=cat ../*log | grep 'Best-fit model:' | cut -f 3 -d ' ' && echo $model
iqtree -s final_clean.core.aln -bb 1000 -nt AUTO  -m $model
```

运行结束后，可以在 final_clean.core.aln.log 查看最优模型

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=MjhlOGMwYjBiYjJmMzIyODU2MzZmNmQyMDk0OWRlODlfbk56SzN5ZjduUnhla1o1TDE4TFFocG5RUzdTaVh4NjNfVG9rZW46S0MwZmJrTlA0b0YwVE14UXg2N2NSQzY3bm5nXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

```Bash
cat final_clean.core.aln.log | grep 'Best-fit model:' | cut -f 3 -d ' '
```

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=MzU3YjM0NDg5YjNkMDVkZGViZWU0NTU3NmE3OTY3MTZfYTJsRFVXd05jOXpvd1NGbUhYb2FMTTExdno1SG5XeHpfVG9rZW46WVpoRGI1d2VXbzg2ZFZ4d0tIVGN2aVpBbkJoXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

在 finaltree 目录下可以找到 final_clean.core.aln.treefile，这就是使用最优模型及进行 1000 次 bootstrap 获得的树文件

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=MzVmNjNkNWQxMjZiZGU0OTdlM2E5ODJjNmQzN2ViYmRfcWxnY3lOSGZBYTdMSnFrUXo1MnRvOWtlNTcydkVmRWhfVG9rZW46WWRzRWJoZnlkb0JJbm54WThaQmNBWWxYbmloXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

## 使用 iTOL 在线网站对树文件进行可视化

账号是 tb_411 密码是 streptomyces@2011

将 finaltree 目录下的 final_clean.core.aln.treefile 导 mkd 入到 iTOL 在线网站即可，参考:

[系统发育树的美化（iTOL）_itol美化进化树-CSDN博客](https://blog.csdn.net/qq_45735120/article/details/131121748)

[进化树专题（八）系统进化树美化-iTOL (yunbios.net)](https://www.yunbios.net/iTOL.html)

已购买会员，可通过表格对树进行注释，表格如下：

暂时无法在飞书文档外展示此内容

下载后点击 Login 可能出现无法使用 VBA 宏（可以理解为 Excel 内置编程语言）的提示：

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=Zjg3ZjU1MDAyZmE3OTQxMjJkYTAxOWQ5YjE1YjY4MzFfUzJHVk1VU2d1VlFKRDFjc3gxdVVLR0RlcVJDSDNqM01fVG9rZW46UUdhemJXd3N6b3hUaHp4eVRQcWNGb2FZbmNnXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

可通过如下方法解决：

若 Excel 显示其为受保护的视图，先点击“启用编辑”；从文件夹中打开该 Excel 的属性面板，常规项目中勾选“解除锁定”选项，应用后重新打开文件；点击“启用内容”后即可正常登录。

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=NWI0MWQwNDY5NDM1YWY1NmE0NTEyMTNkZjQxYzk1ZGFfTzlwWjg2WDZRODlLMFlUajhsVXhlYU8yaGR5UEpueEVfVG9rZW46UVZ0bGJqM0w0b0RVTTR4ZU9tWGNGZUcybnhkXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=ZWY0NDc4NzM5NTdhYWNjNjFkYjlhYTlhYTUyN2Q2YjJfQkxwekhSMzlMM1F5WlQxOVUySGs4VklWRUg4UkExanNfVG9rZW46SjIyTmJJaFJsb2FvZWN4SjVjcWNCQWNObnFiXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

![](https://fdqbn08860.feishu.cn/space/api/box/stream/download/asynccode/?code=OWQxZWE5ODEyYzBjNDhjNTQ0ODgyM2U2MjE5OTZmOWFfVlF5OW9aUlVvYjZhVXl4WUJRRldzWDh3SUFkU3VueVZfVG9rZW46Q2dlbWIzVFlnb0M2cnR4TkJuaWNLTG1KblpQXzE3Nzg3NjA2ODk6MTc3ODc2NDI4OV9WNA)

表格的使用方法可参考以下网站和视频：

[iTOL annotation editor help（iTOL注释入门）](https://itoleditor.letunic.com/help.html)