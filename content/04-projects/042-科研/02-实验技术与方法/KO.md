基因敲除流程
![[Pasted image 20240918133330.png]]为什么构建KO敲除细胞系一定要筛单克隆❓



⭐CRISPR/Cas9系统敲除基因的原理
CRISPR/Cas9系统是利用一段与靶序列互补的gRNA引导cas9核酸酶对特异靶向的DNA进行识别和切割，造成双链DNA断裂，细胞启动NHEJ修复机制，在修复过程中通常会发生碱基插入或缺失的错配现象，如果插入或缺失3的非整数倍个的碱基，则会造成基因的移码突变，从而使靶基因无法编码正确的蛋白质，以此实现基因敲除效果。
⭐基于CRISPR/Cas9的原理，在细胞中转染cas9/gRNA表达载体后，cas9-gRNA表达并切割，此时细胞分为四种：转染阴性、转染阳性（未被编辑、被编辑但未成功敲除、成功敲除）；通过抗性可筛选出转染阳性细胞，但不能筛选出成功敲除的细胞，假设敲除目的基因后抑制细胞增殖，未被敲除的细胞就会占有生长优势，混合克隆的目的基因表达会回复，所以必须进行单克隆筛选以得到稳定的KO细胞系❗

载体解读and如何选择合适的载体⁉️

整合了部分质粒载体信息，分享给大家～  
🔎1、各类型质粒载体解读（图2～5）  
✅主要包含：  
过表达型（普通载体and慢病毒载体）  
KO型（Cas9-sg；慢病毒载体）  
Tet-on型（诱导型载体；慢病毒载体）  
不同荧光标签的载体  
➡️pRP/pCDH病毒载体包装病毒滴度较高  
ps : 部分是自有载体图谱序列，部分来自云舟生物VectorBuilder  
  
🔎2、如何选择合适的载体❓  
不同的实验需求用到不同类型的载体。  
例如：贴壁细胞转染使用普通类型的载体即可，几乎不超过5000bp；悬浮细胞使用慢病毒载体，几乎都大于9000bp。  
  
🥸同类型载体可能也不止一种，那如何选择合适的载体去构建质粒or买质粒呢⁉️  
💡这时候大家可以去使用云舟生物的VectorBuilder（🔗如图所示）。  
  
👉🏻这个网站包含了各种不同类型的载体供我们选择参考，哺乳动物，斑马鱼，果蝇，线虫等…  
👉🏻例如我们较常用的哺乳动物型载体，直接点击对应栏进入🔎，点击【指南】可以看载体的具体信息，也有文献参考～载体的关键元件具体信息也有详细列出。  
👉🏻除了载体图谱信息可查看之外，也可以查看整个载体的碱基序列！🉑下载pdf文档，也可使用VectorBee查看～  
  
👉🏻如果载体需要添加or删除原件，点击VectorBuilder里的设计载体即可，可以自己设计，并且在设计的过程中会自动提示是否正确，除此之外，也有设计载体的教学视频可以看～尊滴很方便‼️  
  
👉🏻VectorBee也是云舟生物开发的一个🆓软件，建议搭配使用，VectorBuilder所有的载体序列都可以看，也可以借此软件打开自己拥有的载体图谱查看（如图所示）～  
在Builder里可以看到🔗，直接点击后可以下载⏬，就能一直使用啦！🤗  
  
  
👉🏻通过这一番操作，选择好我们需要的载体后，就可以直接买质粒or构建啦。  
👉🏻类似于snapgene，但是个人更喜欢用VectorBee。  
👉🏻比snapgene界面更丰富，且可以同时查看质粒图谱and碱基序列，二者可在同一界面（左侧图谱，右侧碱基序列），方便很多，而snapgene并没有这一功能。
![[c8b1ae27eb0c96da8f2fc7772ad2450e.jpg]]
![[d8c10fac1631bfa89827af4d6f1a874e.jpg]]
![[ad42ad143a2abed2147686277701b046.jpg]]
![[f707332284eed9f620bf6f22e0aca491.jpg]]

我选择敲除
JI728_16200 差像异构
16195  外排
16240  rfbD
16170  rfbK  O-antigen biosynthesis phosphomannomutase RfbK
16185 糖基转移酶
16180  O antigen biosynthesis rhamnosyltransferase RfbN|



# 流程

https://www.ncbi.nlm.nih.gov/nuccore/CP068386.1
## 注意事项：
sgRNA的方向
overlap 20bp
### 设计四段组成：
KO-L/R
vector DNA
sgRNA

[Salmonella enterica subsp. enterica serovar Gallinarum/Pullorum strain - Nucleotide - NCBI (nih.gov)](https://www.ncbi.nlm.nih.gov/nuccore/NZ_CP068386.1/)
![[Pasted image 20240929225431.png]]
![[Pasted image 20240929225459.png]]
![[Pasted image 20240929225553.png]]
# 流程

https://www.ncbi.nlm.nih.gov/nuccore/CP068386.1
NOTE:
sgRNA的方向
overlap 20bp

### 设计四段组成：
KO-L/R
vector DNA
sgRNA


康潇蔓:
https://benchling.com/editor

康潇蔓:
https://www.ncbi.nlm.nih.gov/assembly/GCF_027474565.1 biovar Pullorum R51

康潇蔓:
https://www.ncbi.nlm.nih.gov/nuccore/NZ_CP068386.1



康潇蔓:
第一步，确认要敲除的基因区域。（考虑基因簇：判断原则即与上下游基因的距离或者转录反向）

康潇蔓:
第二步，设计sgRNA（注意上传信息是整个基因组信息，不是要敲除片段的信息）

康潇蔓:
第三步，设计同源臂引物（可能会导致敲除区域稍微有变化，注意向敲除片段内部缩进，不要向外扩展）

康潇蔓:
第四步，将sgRNA和同源臂LR套入模板。（注意sgRNA的方向，5’到3'）

康潇蔓:
第五步，确定最终引物序列。（注意overlap是刚刚好20bp，不要长也不要短）

康潇蔓:
另外，我建议每个基因设计两个sgRNA。




康潇蔓:
克隆验证，上游引物：sgRNA的20nt特异性序列
下游引物：鉴 定 donor DNA 是否重组-R：aaatagtcggtggtgataaacttat
测序引物：鉴 定 donor DNA 是否重组-F：gtgcggtatttcacaccgcatatgc和鉴 定 donor DNA 是否重组-R

康潇蔓:
上游引物：sgRNA的20nt特异性序列每个人的是特异的  今天合成出去

康潇蔓:
下游引物：鉴 定 donor DNA 是否重组-R：aaatagtcggtggtgataaacttat
测序引物：鉴 定 donor DNA 是否重组-F：gtgcggtatttcacaccgcatatgc
