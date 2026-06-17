---
tags:
  - task/任务管理
  - 科研/任务
  - 博士课题
---# # 1-概览

K2-K5是蛋清筛选选的实验组
进行基因公式4和6定量进行的筛选
## 1-蛋清筛选方法4

[[全部基因的插入指数显著变化]]（不区分up down）
fitness基因的插入指数显著变化（down）

![[../../../../40 - Obsidian/附件/Pasted image 20250330152425.png|300]] ![[../../../../40 - Obsidian/附件/Pasted image 20250330152825.png|300]]

![[../../../../40 - Obsidian/附件/蛋清压力差异基因汇总DOWN-kxm-240915.xlsx]]

总共23个基因，12个基因簇
## 1.2-KEGG   每个圈的KEGG结果是？

![[../../../../40 - Obsidian/附件/Pasted image 20250330153227.png|500]]   K2
![[../../../../40 - Obsidian/附件/Pasted image 20250330153402.png|500]]    k3
![[../../../../40 - Obsidian/附件/Pasted image 20250330153728.png|500]]  K4
![[../../../../40 - Obsidian/附件/Pasted image 20250330153803.png|500]]   K5
[^2]黄色及以上 交集
[^3]kimi生成交集
1. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
    - Input基因：JI728_16170, JI728_16200, JI728_16205, JI728_16210, JI728_16215, JI728_16220, JI728_16225, JI728_22490, JI728_22495
2. **Polyketide sugar unit biosynthesis (ko00523)**：
    - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245
3. **Streptomycin biosynthesis (ko00521)**：
    - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245

2和3是相同的

# 2-蛋清筛选方法6
## 2.1-6方法 -FC Pvalue
![[../../../../40 - Obsidian/附件/916-egg3-FCP-Conditional_essentiality2.xls]]
#### 直接展示FC
![[../../../../40 - Obsidian/附件/Pasted image 20250331082043.png]]
上面汇总如下：
JI728_07060 22405 07330 01790 08705 04285 14040 
## 2.2-6方法 -定义FWER0.01-求交集
FWER，即家族wise错误率，Bonferroni校正是控制FWER的一种严格方法，而BH方法控制的是FDR（错误发现率）。通常，当研究目的是尽量减少假阳性时，比如在验证性研究中，会使用FWER（如Bonferroni）。而探索性分析可能更倾向于使用FDR（BH方法），因为它较不严格，能保留更多的发现。 但用户的问题是关于两个FWER列：第9列（必需基因的Bonferroni校正）和第12列（改进适应度的Bonferroni校正）。用户需要确定在分析条件优势、劣势、必需基因时，该选择哪个FWER。

必需基因分析（条件优势） 使用第9列 FWER（Essential） 原因：Bonferroni校正是最严格的校正方法，能有效控制假阳性（如将FWER控制在5%以下）。 适用场景：当目标是确认基因是否为生存必需（条件优势，即基因缺失导致显著生长缺陷），需严格控制假阳性（如验证性研究）。 2. 改进适应度分析（条件劣势） 使用第12列 FWER（Improved fitness） 原因：改进适应度的分析（如基因破坏后可能增强适应性）需独立控制其错误率，第12列专为此类假设设计。 适用场景：当关注基因破坏可能带来适应性优势（条件劣势），需避免错误关联非因果基因

严格的 必需 第9列 第12列 不严格 我要定义 必需 非必需 条件优势 条件劣势

## 日程




![[../../../../40 - Obsidian/附件/916-egg4-K1-6-FWER.Essential_genes.xls]]
上方是6-定义FWER<0.01   从K1-K5求共有
![[../../../../40 - Obsidian/附件/Pasted image 20250312182707.png|300]]![[../../../../40 - Obsidian/附件/Pasted image 20250312182753.png|300]]
# 3-方法初始hit---属于方法6延申
## 3.1hit初始为0
![[../../../../40 - Obsidian/附件/Pasted image 20250331083922.png]]
1.在定量FWER中已经剔除。研究条件必需基因剔除
2.必需基因值得研究 [[2.必需基因]]
![[../../../../40 - Obsidian/附件/Pasted image 20250331084243.png]]
  
要求是AVER(K2+K3+K4+K5)/K1  >3  AND  每个大于K1 AND
K1<100 保证基因插入密度和该基因的功能性

![[../../../../40 - Obsidian/附件/Pasted image 20250324110520.png]]
# 4.总结
总结
方法4FC交集 
	JI72801130
	JI7288_05270
	JI72805275
	JI72806930
	JI72809155
	JI72809295
	JI728_16165-245簇
	JI7283_16360
	JI72816905
	JI72817105
	JI72821095
	JI72822230
	JI72822240
方法4FC的KEGG交集
1. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
    - Input基因：JI728_16170, JI728_16200, JI728_16205, JI728_16210, JI728_16215, JI728_16220, JI728_16225, JI728_22490, JI728_22495
2. **Polyketide sugar unit biosynthesis (ko00523)**：
    - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245
方法4FC交集AND越来越AND RNAseq AND 双组分
	JI728_05275/70
	JI72822460/50/65/70/75
	JI728_01130
	JI728_16835
	JI728_16200
	JI728_16905
	JI728_21095
	JI728_01935/40
	JI728_09155
	JI728_22240/35/30/20
	JI728_01680/85
	JI728_21815
	JI728_02775
	JI728_12455
	JI728 09995/80
方法6FC最显著  
	JI728_07060（07070-KOB正在） 22405（22450 rffC） 07330 01790 08705 04285 14040 
方法6   FWER  条件必需基因15 
	|JI728_16180
	|JI728_16360
	|JI728_16905
	|JI728_16215
	|JI728_01765
	|JI728_16210
	|JI728_17565
	|JI728_16175
	|JI728_11455
	|JI728_00610
	|JI728_16200
	|JI728_14485
	|JI728_17570
	|JI728_22345
	|JI728_11030
[[../A1敲除基因/15个条件必需基因列表|15个条件必需基因列表]]
方法hit   
	JI1728_16905
	J1728_16235
	J1728_05495
	J1728_01770
	J1728_16205
	JI728_16180
	JI1728_16365
	JI728_16195
	J1728_16190
	J1728_09280
	JI728_14485
	J1728_09295
	J1728_16165
	JI728_16215
	J1728_16220
	J1728_01130
	J1728_16225
	J1728_12455
	JI728_16200

更细致的KEGG分类
**Amino sugar and nucleotide sugar metabolism (ko00520)**：对这个通路的绘图包 以及
# 5.附录

[^2]: 好的！我将对这四个文件进行分析，找出共有的重要通路（DEG较大且pvalue较小的通路），并提取这些通路的名称和对应的Input基因。以下是分析步骤和结果：
	
	### 分析步骤
	
	1. **读取文件**：读取四个文件的内容。
	2. **筛选重要通路**：根据pvalue和Input.number筛选出重要的通路。
	3. **找出共有通路**：找出四个文件中共有的通路。
	4. **提取通路名称和Input基因**：提取共有通路的名称和对应的Input基因。
	
	### 筛选条件
	
	- **pvalue**：选择pvalue较小的通路（例如，pvalue < 0.05）。
	- **Input.number**：选择Input.number较大的通路（例如，Input.number > 3）。
	
	### 分析结果
	
	#### 文件1中的重要通路
	
	1. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input.number: 4
	   - pvalue: 9.89420214109208e-06
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	2. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input.number: 9
	   - pvalue: 8.27978721673617e-05
	   - Input: JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16220|JI728_16225|JI728_22490|JI728_22495
	
	3. **Streptomycin biosynthesis (ko00521)**：
	   - Input.number: 4
	   - pvalue: 0.000126685512271685
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	#### 文件2中的重要通路
	
	1. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input.number: 14
	   - pvalue: 4.49099612387371e-07
	   - Input: JI728_03495|JI728_12055|JI728_12060|JI728_13830|JI728_16170|JI728_16175|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16220|JI728_16225|JI728_22490|JI728_22495
	
	2. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input.number: 5
	   - pvalue: 6.26496353039632e-07
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245|JI728_22485
	
	3. **Streptomycin biosynthesis (ko00521)**：
	   - Input.number: 5
	   - pvalue: 3.03566859068986e-05
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245|JI728_22485
	
	#### 文件3中的重要通路
	
	1. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input.number: 3
	   - pvalue: 0.000164228910513898
	   - Input: JI728_16230|JI728_16240|JI728_16245
	
	2. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input.number: 7
	   - pvalue: 0.000250332437588652
	   - Input: JI728_03495|JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16225
	
	3. **Streptomycin biosynthesis (ko00521)**：
	   - Input.number: 3
	   - pvalue: 0.000868990328624086
	   - Input: JI728_16230|JI728_16240|JI728_16245
	
	#### 文件4中的重要通路
	
	1. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input.number: 4
	   - pvalue: 3.60943293036383e-06
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	2. **Streptomycin biosynthesis (ko00521)**：
	   - Input.number: 4
	   - pvalue: 4.71670996045059e-05
	   - Input: JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	3. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input.number: 7
	   - pvalue: 0.000576737713956277
	   - Input: JI728_03495|JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16225
	
	### 共有的重要通路
	
	1. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input基因：JI728_16170, JI728_16200, JI728_16205, JI728_16210, JI728_16215, JI728_16220, JI728_16225, JI728_22490, JI728_22495
	
	2. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245
	
	3. **Streptomycin biosynthesis (ko00521)**：
	   - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245
	
	### 总结
	
	共有的重要通路及其Input基因为：
	
	1. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - Input基因：JI728_16170, JI728_16200, JI728_16205, JI728_16210, JI728_16215, JI728_16220, JI728_16225, JI728_22490, JI728_22495
	
	2. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245
	
	3. **Streptomycin biosynthesis (ko00521)**：
	   - Input基因：JI728_16230, JI728_16235, JI728_16240, JI728_16245

---

[^3]: 根据提供的四个文件，以下是高频条目（在3组以上共有的通路）及其对应的Input基因列表：
	
	#### 高频条目（3组以上共有）
	
	1. **Biofilm formation - Pseudomonas aeruginosa (ko02025)**：
	   - **K2**：JI728_16175|JI728_16180|JI728_21095
	   - **K3**：JI728_16180|JI728_21095
	   - **K4**：JI728_16180|JI728_21095
	   - **K5**：JI728_16180|JI728_21095
	
	2. **Sulfur relay system (ko04122)**：
	   - **K2**：JI728_01930|JI728_01935|JI728_01940
	   - **K3**：JI728_01935|JI728_01940
	   - **K4**：JI728_01935|JI728_01940
	   - **K5**：JI728_01935|JI728_01940
	
	3. **Protein export (ko03060)**：
	   - **K2**：JI728_22230|JI728_22235|JI728_22240
	   - **K3**：JI728_22230|JI728_22240
	   - **K4**：JI728_22230|JI728_22235|JI728_22240
	   - **K5**：JI728_22230|JI728_22235|JI728_22240
	
	4. **Acarbose and validamycin biosynthesis (ko00525)**：
	   - **K2**：JI728_16235|JI728_16245|JI728_22485
	   - **K3**：JI728_16245
	   - **K4**：JI728_16235|JI728_16245
	   - **K5**：JI728_16235|JI728_16245
	
	5. **Biosynthesis of vancomycin group antibiotics (ko01055)**：
	   - **K2**：JI728_16245|JI728_22485
	   - **K3**：JI728_16245
	   - **K4**：JI728_16245
	   - **K5**：JI728_16245
	
	6. **Streptomycin biosynthesis (ko00521)**：
	   - **K2**：JI728_16230|JI728_16235|JI728_16240|JI728_16245|JI728_22485
	   - **K3**：JI728_16230|JI728_16240|JI728_16245
	   - **K4**：JI728_16230|JI728_16235|JI728_16240|JI728_16245
	   - **K5**：JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	7. **Polyketide sugar unit biosynthesis (ko00523)**：
	   - **K2**：JI728_16230|JI728_16235|JI728_16240|JI728_16245|JI728_22485
	   - **K3**：JI728_16230|JI728_16240|JI728_16245
	   - **K4**：JI728_16230|JI728_16235|JI728_16240|JI728_16245
	   - **K5**：JI728_16230|JI728_16235|JI728_16240|JI728_16245
	
	8. **Amino sugar and nucleotide sugar metabolism (ko00520)**：
	   - **K2**：JI728_03495|JI728_12055|JI728_12060|JI728_13830|JI728_16170|JI728_16175|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16220|JI728_16225|JI728_22490|JI728_22495
	   - **K3**：JI728_03495|JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16225
	   - **K4**：JI728_03495|JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16225
	   - **K5**：JI728_03495|JI728_16170|JI728_16200|JI728_16205|JI728_16210|JI728_16215|JI728_16225
	
	### 特有条目
	#### K2特有条目
	1. **Fructose and mannose metabolism (ko00051)**：
	   - Input基因：JI728_12055|JI728_12060|JI728_13830|JI728_16170|JI728_16175
	
	2. **Arabinogalactan biosynthesis - Mycobacterium (ko00572)**：
	   - Input基因：JI728_22505
	
	3. **ABC transporters (ko02010)**：
	   - Input基因：JI728_01345|JI728_11445|JI728_19435|JI728_19440|JI728_19445|JI728_19450|JI728_21720|JI728_21725|JI728_21730|JI728_21735|JI728_21740|JI728_22810|JI728_22815|JI728_22820|JI728_22825
	
	4. **Biofilm formation - Vibrio cholerae (ko05111)**：
	   - Input基因：JI728_21775|JI728_22490|JI728_22495
	#### K5特有条目
	1. **Bacterial secretion system (ko03070)**：
	   - Input基因：JI728_22230|JI728_22235|JI728_22240
	
	2. **Biofilm formation - Escherichia coli (ko02026)**：
	   - Input基因：JI728_01680|JI728_01685|JI728_05270
	https://kimi.moonshot.cn
