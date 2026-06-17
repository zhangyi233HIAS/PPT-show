结果非常明确：**样品 MY0331 与你的参考菌株 (AM933173.1) 完全相同。**

Mash 的输出结果`0 0 1000/1000`意味着：

- **距离 = 0**：基因组距离为零（100% 同一性）。
    
- **1000/1000**：每一个“草图”（基因组特征）都完全匹配。
    

### 这对你的分析意味着什么？

这意味着您的 574 个样本集已经包含了“黄金标准”参考序列。为了避免系统发育树中出现冗余和潜在错误（例如某个分支长度为零），您最终的序列比对结果中**不应**同时包含`MY0331`参考序列和原始样本。

---

### 如何处理这种情况（两种方案）

#### 方案一：清洁方式（推荐）

保留 NCBI **SG_ref.fasta**作为参考（因为它是一个完整的、闭合的染色体），但从你的参考序列中**删除 MY0331**`mapping_file.txt`。

- **好处**：您可以使用最高质量的序列进行映射，但您的样本量仍为 574。
    
- **操作**：编辑您的`mapping_file.txt`文件并删除该行`MY0331`。
    

#### 方案二：复制方式

两个都运行。

- **结果**：在最终的系统发育树中，NCBI 参考文献`MY0331`将位于系统发育树上的完全相同的位置。
    
- **风险**：在论文中两次展示完全相同的菌株看起来有点不专业。
    

---

### 下一步（行动计划）

我推荐**方案一**。以下是完成 Snippy 设置的步骤：

**1. 从映射文件中删除重复项：**

巴什

```
# Create a new mapping file excluding MY0331
grep -v "MY0331" mapping_file.txt > mapping_file_final.txt
```

2. 开始 Snippy-multi 运行：

现在您可以充满信心地开始繁重的工作了，因为您知道您的参考菌株是高质量的，而不是“惊喜”的新菌株。

巴什

```
source ~/.bashrc
biostack

# Generate the script with the cleaned mapping file
snippy-multi mapping_file_final.txt --reference SG_ref.fasta --cpus 40 > run_snippy.sh

# Run it
chmod +x run_snippy.sh
nohup ./run_snippy.sh > snippy_run.log 2>&1 &
```

**3. 接下来会发生什么？**

- 这将需要一些时间（573 个样本大约需要 1-3 小时）。
    
- 完成后，你将跑去`snippy-core`获取`core.full.aln`。
    
- 然后我们对该文件应用**Gubbins重组过滤器。**
    

**这样说得通吗？如果您同意删除重复的 MY0331，那就开始运行 Snippy 吧！**

```
$ cp core_gene_alignment.aln  quchongzu/
TBAMR01@localhost 20:10:41 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ biostack
TBAMR01@localhost 20:13:45 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ chmod +x run_roary_gubbins.sh
chmod: cannot access 'run_roary_gubbins.sh': No such file or directory
TBAMR01@localhost 20:15:08 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ cd quchongzu/
TBAMR01@localhost 20:15:23 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/quchongzu
$ chmod +x run_roary_gubbins.sh
TBAMR01@localhost 20:15:26 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/quchongzu
$ nohup ./run_roary_gubbins.sh > final_run.log 2>&1 &
[1] 523171
TBAMR01@localhost 20:15:36 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/quchongzu
$ cd ..
[1]+  Exit 126                nohup ./run_roary_gubbins.sh > final_run.log 2>&1  (wd: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/quchongzu)
(wd now: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015)
TBAMR01@localhost 21:20:18 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ jobs
TBAMR01@localhost 21:20:25 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ tail -n 20 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/R51.gff
tail: cannot open '/public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/R51.gff' for reading: No such file or directory
TBAMR01@localhost 21:21:37 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ tail -n 20 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/TH259.fasta.gff
>NODE_79_length_229_cov_0.638158
GGGCCAACCAGATGGGCCCGGTCGGGGTGCGAGCTTCCGCGGTGTGTTCGTTCGCCAAGG
CGCGCGCCCGGGGACGGTCCCATTGCGGCGGTCCGCGGCGCGGGGGCGCCCGGGGGGGTG
GGCGGTGCCGGTGTCTGAGCGCGCCGTTGCGGTGGTGGGGATGGCGGGCCGTTCCGGCGT
TGCGGGGCGGGCGCAGGCGCGGGCGTGGGGTGCGCTGCGGAGGTTGGGG
>NODE_80_length_229_cov_0.631579
GCTGTCGACCGATCTTGAGACATCGATCACAGTCATCATCAACTCCTCCCACTCGGCCTA
CTTCCGAGCACTGGACCCAACTCCTCCGCCCCCCCCTCCCCGTGGCCACGAAGTACGCCC
CCCAACCAAACTCCGAAGCTCGGCCCACGCACGCGCTTCGGCCCGCTGATTAGCCCCTGC
GCCACCCGTTGATAAAGCTCCTCAATACCCCCATCGGTCCTGGCATAGC
>NODE_81_length_228_cov_1.470199
AAATGGTATTTATCTGAAATATATAAGATAATTCTTTAGTGATATAAAACAAAGCACGAA
GTACATCAAAAAAAGTCTATATTTCACTTTGCCCGCGCCGCCAAAGTCACTGATACTGCG
CCGCGTTCATGTCCTCAAAATGGCGTAACGTCCTATGCTACATTTGTGTGCTGGCCTGGA
TTTACATACCGGGCTTGTATTATTGCTTGCTCTGGCTTTTGTGCTGTT
>NODE_82_length_215_cov_63.557971
GCACACGTAGACTGCCCGGGGCACGCCGACTATGTTAAAAACATGATCACCGGTGCTGCT
CAGATGGACGGCGCGATTCTGGTTGTTGCTGCGACTGACGGCCCGATGCCGCAGACCCGT
GAGCACATCCTGCTGGGGCGTCAGGTAGGCGTTCCGTACATCATCGTGTTCCTGAACAAA
TGCGACATGGTTGATGACGAAGAGCTGCTGGAACT
TBAMR01@localhost 21:22:16 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ # 创建存放提取出的 Fasta 的目录
mkdir -p ./snippy_input_fasta
mapping_file="mapping_file.txt"
> $mapping_file  # 初始化（清空旧文件）

echo "正在从 GFF 中提取序列并生成 Mapping 文件..."

# 遍历 GFF 文件夹
for gff in /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/*.gff; do
    # 提取不含路径的文件名
    sample_name=$(basename "$gff" .fasta.gff)

    # 提取 GFF 中从第一个 > 开始的所有内容（即 FASTA 部分）
    # 并保存为 .fasta 文件
    sed -n '/^>/,$p' "$gff" > "./snippy_input_fasta/${sample_name}.fasta"

    # 将样本名和对应的 Fasta 绝对路径写入 mapping 文件
    echo -e "${sample_name}\t$(pwd)/snippy_input_fasta/${sample_name}.fasta" >> $mapping_file
done

echo "处理完成！"
echo "共生成了 $(wc -l < $mapping_file) 个样本的索引。"
echo "请检查 mapping_file.txt 确认内容是否正确。"
正在从 GFF 中提取序列并生成 Mapping 文件...
^C
处理完成！
共生成了 417 个样本的索引。
请检查 mapping_file.txt 确认内容是否正确。
TBAMR01@localhost 21:23:19 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ [200~# 1. Create directory for the extracted sequences
bash: [200~#: command not found...
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ mkdir -p ./snippy_input_fasta
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ mapping_file="mapping_file.txt"
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ > $mapping_file
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ # 2. Loop through GFF files and extract the FASTA section
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ # Path: /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/
TBAMR01@localhost 21:26:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ for gff in /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/fixed_input_files/*.gff; do
>     # Extract filename without extension
>     sample_name=$(basename "$gff" .fasta.gff)
>
>     # Extract content starting from the first '>' (FASTA portion)
>     sed -n '/^>/,$p' "$gff" > "./snippy_input_fasta/${sample_name}.fasta"
>
>     # Write to mapping_file: SampleID [TAB] Absolute_Path_to_Fasta
>     echo -e "${sample_name}\t$(pwd)/snippy_input_fasta/${sample_name}.fasta" >> $mapping_file
> done
^[[A^[[A^[[ATBAMR01@localhost 21:27:39 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$
TBAMR01@localhost 21:27:39 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ cd snippy_input_fasta/
TBAMR01@localhost 21:29:53 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta
$ wc -l
^C
TBAMR01@localhost 21:30:51 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta
$ ls -l | grep "^-" | wc -l
574
TBAMR01@localhost 21:31:14 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta
$ cd ..
TBAMR01@localhost 21:33:36 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ mv mapping_file.txt SNP
TBAMR01@localhost 21:33:46 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015
$ cd SNP
TBAMR01@localhost 21:36:36 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP
$ wget -O SG_ref.fasta "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=AM933173.1&rettype=fasta"
--2026-01-12 21:37:07--  https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=AM933173.1&rettype=fasta
Resolving eutils.ncbi.nlm.nih.gov (eutils.ncbi.nlm.nih.gov)... 130.14.29.110
Connecting to eutils.ncbi.nlm.nih.gov (eutils.ncbi.nlm.nih.gov)|130.14.29.110|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/plain]
Saving to: ‘SG_ref.fasta’

SG_ref.fasta                                                   [                                                                                                                                  <=>    ]   4.51M  40.9KB/s    in 3m 2s

2026-01-12 21:40:10 (25.4 KB/s) - ‘SG_ref.fasta’ saved [4725346]

TBAMR01@localhost 21:40:10 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP
$ # Get the exact length of the reference
ref_len=$(grep -v ">" /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta | tr -d '\n' | wc -m)
echo "Reference Length: $ref_len bp"

# Check all 574 samples
for f in /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta/*.fasta; do
    name=$(basename "$f" .fasta)
    len=$(grep -v ">" "$f" | tr -d '\n' | wc -m)
    diff=$((len - ref_len))
    abs_diff=${diff#-}

    # If the difference is less than 1000 bp, it might be the same strain
    if [ $abs_diff -lt 1000 ]; then
        echo "MATCH FOUND: Sample $name is nearly the same length as Reference (Diff: $diff bp)"
    fi
done
Reference Length: 4658697 bp
MATCH FOUND: Sample MY0331 is nearly the same length as Reference (Diff: 0 bp)
TBAMR01@localhost 21:42:56 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP
$ # 1. Sketch the reference
mash sketch /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta

# 2. Compare the reference sketch against all your samples
# The output format is: [Reference] [Sample] [Distance] [P-value] [Matching-hashes]
for f in /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta/*.fasta; do
    mash dist /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta.msh "$f"
done | awk '$3 < 0.0001 {print $0}' # Only show very close matches
Sketching /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta...
Writing to /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta.msh...
/public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP/SG_ref.fasta /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/snippy_input_fasta/MY0331.fasta  0       0       1000/1000
TBAMR01@localhost 21:45:09 /public/lab/zhangyi/pangenome/03_roary_redo_1766666015/SNP

```
### 如何处理这种情况（两种方案）

#### 方案一：清洁方式（推荐）

保留 NCBI **SG_ref.fasta**作为参考（因为它是一个完整的、闭合的染色体），但从你的参考序列中**删除 MY0331**`mapping_file.txt`。

- **好处**：您可以使用最高质量的序列进行映射，但您的样本量仍为 574。
    
- **操作**：编辑您的`mapping_file.txt`文件并删除该行`MY0331`。
    

#### 方案二：复制方式

两个都运行。

- **结果**：在最终的系统发育树中，NCBI 参考文献`MY0331`将位于系统发育树上的完全相同的位置。
    
- **风险**：在论文中两次展示完全相同的菌株看起来有点不专业。
    

---

### 下一步（行动计划）

我推荐**方案一**。以下是完成 Snippy 设置的步骤：

**1. 从映射文件中删除重复项：**

巴什

```
# Create a new mapping file excluding MY0331
grep -v "MY0331" mapping_file.txt > mapping_file_final.txt
```

**2. 开始 Snippy-multi 运行：** 现在您可以充满信心地开始繁重的工作了，因为您知道您的参考菌株是高质量的，而不是“惊喜”的新菌株。

巴什

```
source ~/.bashrc
biostack

# Generate the script with the cleaned mapping file
snippy-multi mapping_file_final.txt --reference SG_ref.fasta --cpus 40 > run_snippy.sh

# Run it
chmod +x run_snippy.sh
nohup ./run_snippy.sh > snippy_run.log 2>&1 &
```

**3. 接下来会发生什么？**

- 这将需要一些时间（573 个样本大约需要 1-3 小时）。
    
- 完成后，你将跑去`snippy-core`获取`core.full.aln`。
    
- 然后我们对该文件应用**Gubbins重组过滤器。**
    

**这样说得通吗？如果您同意删除重复的 MY0331，那就开始运行 Snippy 吧！**