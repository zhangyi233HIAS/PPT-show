---
tags:
  - task/任务管理
  - 科研/任务
  - 博士课题
---第一步 删除FC低于1的，按基因id，整理成operon（看起来像是在一个，保留最大的差异值,其它行删掉，如果operon太长，加颜色）


第二步：把Down<-1.5的具体信息提出来，这一步，把operon的基因名和product从表1/2都提出来


第三步：把越来越必需的基因标红字体，把共有基因标绿色字体，找到这些基因对应RNA-seq的数据

第四步：查找文献或数据库，将以上基因分类，确定最终感兴趣基因

- 删除FC值低于1的基因，剩余的依据基因ID名称与距离将其按操控子（operon）整理。同一操控子内的基因，选取最大差异值的基因。
- 提取FC值小于-1.5的基因，结合表1和表2，列出与这些基因相关的名称及其对应的功能（product）。
- 将逐渐必需的基因用红色字体标出，而共有基因用绿色字体标记。进一步整合这些基因与RNA-seq数据，进行比对分析。
- 查阅相关文献及数据库，基因功能，调查相关上下游调控通路，互作结构功能。最终确定感兴趣的基因组。


Here is the optimized version in English, with academic writing standards:

1. Remove genes with a fold change (FC) value less than 1. Organize the remaining genes into operons based on gene IDs. For each operon, retain the gene with the highest differential expression value and remove the others. If an operon is particularly long, highlight it using color coding.
2. Extract genes with a FC value less than -1.5, and from Tables 1 and 2, list the corresponding gene names and their functional annotations (products).
3. Highlight genes that are increasingly essential in red font, while marking shared genes in green font. Additionally, correlate these genes with RNA-seq data to examine expression patterns.
4. Consult relevant literature and databases to categorize the identified genes, and ultimately select the genes of interest for further investigation.

This version streamlines the steps while maintaining clarity and precision for an academic audience.****




- remove genes with a fold change (FC) value below 1. Organize the remaining genes into operons based on gene ID and their genomic proximity. Within each operon, select the gene with the highest differential expression value.
- Extract genes with a FC value less than -1.5, and, in conjunction with Tables 1 and 2, compile a list of these genes along with their names and corresponding functional annotations (products).
- Highlight genes that are increasingly essential in red font and shared genes in green font. Further integrate these genes with RNA-seq data for comparative analysis.
- Review relevant literature and databases to explore gene functions, investigate associated upstream and downstream regulatory pathways, and examine interactions and structural functions. Ultimately, identify genes of interest for further investigation.
![[Pasted image 20241107222302.png]]


4332 其中质粒160
![[Pasted image 20241107230506.png]]
160 （71   +89）

90？
1v2  4336  4175------40+9
重要 read abbi
![[Pasted image 20241107230304.png]]
![[Pasted image 20241107230235.png]]



