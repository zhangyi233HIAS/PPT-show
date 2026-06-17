---
tags:
  - task/任务管理
  - 科研/任务
  - 博士课题
---## Slide 1

Hangzhou Institute for Advanced Study

University of Chinese Academy of Sciences

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

2025  年  11  月  28  日

黄 蕾

2025/11/29

Chicken cecum  scRNA -seq in response to  Salmonella  Pullorum (SP) infections

## Central questions {#slide-2}

How  Salmonella  Pullorum develop  acute infections , including tissue and organ damage in hens. In other words, the pathology for Pullorum Disease in adult hens. I am also particularly interested in immune cells and responses during the acute phase .

How  Salmonella  Pullorum  establish  persistent infections  during a transition from the acute phase to the persistent phase . I am interested in which niche, including the cell and cytokine effector, promotes bacterial persistence in the ovary and other tissues, if so. I am also particularly interested in immune cells and responses   that   drive   such process .

Therefore, 180-day hatching hens were orally infected with  Salmonella  Pullorum, we sampled 2 week-post-infection ( wpi ) \[indicate acute phase\], and 11  wpi  \[indicate persistence phase\].

By comparing a 2-week  wpi  vs a 2-week PBS control group, we investigate which cells and what cellular responses are marked during the acute infection stage.

By comparing 11  wpi  vs 2  wpi , we investigate which cells and what cellular responses are marked during a transition from acute phase to persistent phase.

By comparing 11-week PBS vs 2-week PBS, we may know how the ovary develops or hatching peaks.

## Experimental  design {#slide-3}

- 10 x Genomics 单细胞转录组测序：   Cecum, Blood, Spleen, Liver, Ovary  (n=3) ； 2w dpi+11w dpi

<!-- -->

- R51 shedding in feces 规律：每周采集粪便进行 R51 计数；

探究 R51 （持续）感染期间，宿主免疫细胞谱变化以及免疫功能（免疫细胞谱）失调的机制

- 代谢组学：  Cecum, Ovary； 2w dpi

<!-- -->

- 16s rRNA 菌群测序：  Cecum, Ovary； 2w dpi

<!-- -->

- 蛋白质组学：  Cecum, Ovary； 2w dpi

<!-- -->

- 表型：产蛋率、孵化率、 R51 检出率 ( 蛋、组织、雏鸡等 )

                 组织 R51 载菌量 ( 鸡蛋、Cecum, Spleen, Liver, Ovary ) ， 2w dpi+11w dpi

- 病理切片：脾脏指数 / 观察、肠道和生殖道病理切片，  2w dpi+11w dpi

  Groups   T reatment       Numbers
  -------- ---------------- ---------
  PBS      PBS              48
  R51      10 9  CFU/bird   56

                           Blood   Cecum   Spleen   Liver   Ovary
  --------------- -------- ------- ------- -------- ------- -------
  HE 切片         2  wk    \-      √       √        √       √
                  11  wk   \-      √       √        √       √
  蛋白质          2  wk    √       √       √        √       √
                  11  wk   √       √       √        √       √
  代谢组          2  wk    √       √       √        √       √
                  11  wk   √       √       √        √       √
  16s  rRNA-seq   2  wk    \-      √       \-       \-      √
                  11  wk   \-      \-      \-       \-      \-
  scRNA -seq      2  wk    √       √       √        √       √
                  11  wk   √       √       √        √       √

标√为需补做数据，需确定具体补做哪些？

## Slide 4

数据分析

结果分析与讨论

总结与展望

7

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

R51

FQs

           Gene_1   ...   Gene_n
  -------- -------- ----- --------
  Cell_1                  
  ...                     
  Cell_n                  

PBS

FQs

Provided by: D r.   Wang  

CellRanger  

![](ppt/media/image4.jpg "图片 35")

Merge(R1, R2, R3)

CellRanger   Aggr

QC

- The number of unique genes detected in each cell.
- Low-quality cells or empty droplets will often have very few genes
- Cell doublets or  multiplets  may exhibit an aberrantly high gene count
- The percentage of reads that map to the mitochondrial genome
- Low-quality / dying cells often exhibit extensive mitochondrial contamination

NormalizeData ( )

FindVariable

Features

(n=2000,vst)

Highly expressed in some cells, 

and lowly expressed in others

ScaleData ( )

Mean = 0, 

Variance = 1

RunPCA

( npcs =100)

FindClusters

(resolution=0.5)

FindNeighbors

(dims=1:50)

RunUMAP

( ndims =1:50)

FindIntegration

Anchors

(dims=1:50, 

pbs, r51)

IntegrateData

(dims=1:50)

min.cells  \> 3

nFeature_RNA  \> 300 

nFeature_RNA  \<  30 00 

percent.mt \< 15

percent.hb  \< 5

p ercent.plt  \< 3

FindAllMarkers

( only.pos =TRUE)

doubletFinder

......

Hao, Yuhan, et al.  Nat  Biotechnol .  42.2 (2024)

## Slide 5

细胞类型注释

结果分析与讨论

总结与展望

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

![](ppt/media/image5.png "图片 3")

![](ppt/media/image6.png "图片 12")

Marker gene list for each cluster

![](ppt/media/image7.png "图片 20")

![](ppt/media/image8.png "图片 25")

![](ppt/media/image9.png "图片 27")

![](ppt/media/image10.png "图片 17")

![](ppt/media/image11.emf "图片 33")

人工校正：

Pubmed ；人、鼠标记基因； The human protein ATLAS

Karlsson, Max,  et al.   Sci Adv.  7.31 (2021)

## Slide 6

QC:  过滤红细胞   血小板 双 / 多细胞 低质量细胞

结果分析与讨论

总结与展望

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

![](ppt/media/image6.png "图片 12")

![](ppt/media/image9.png "图片 27")

- obj\[\[\"percent.mt\"\]\] \<-  PercentageFeatureSet (obj, pattern = \"\^(ND1\|ND2\|ND3\|ND4\|ND4L\|ND5\|ND6\|COX1\|COX2\|COX3\|ATP6\|ATP8\|CYTB)\$\") # mitochondrial
- obj\[\[\" percent.hb \"\]\] \<-  PercentageFeatureSet (obj, pattern = \"\^(HBBA\|HBAD\|HBA1)\$\") # erythrocytes
- obj\[\[\" percent.plt \"\]\] \<-  PercentageFeatureSet (obj, pattern = \"\^(ITGA2B\|ITGB3\|GP9\|TFPI)\$\") # thrombocytes/platelets
- 
- obj \<- subset(obj, subset =  nFeature_RNA  \>  300 (800)  &  nFeature_RNA  \< 3000 & percent.mt \<  15 (10)  &  percent.hb  \< 5 &  percent.plt  \< 3)

<!-- -->

- The number of unique genes detected in each cell.  （ 300\~ 3, 000 ）
- Low-quality cells or empty droplets will often have very few genes
- Cell doublets or  multiplets  may exhibit an aberrantly high gene count

- The percentage of reads that map to the mitochondrial genome  (percent.mt)
- Low-quality / dying cells often exhibit extensive mitochondrial contamination

https://github.com/chris-mcginnis-ucsf/DoubletFinder

## Slide 7

盲肠 组织细胞类型注释

结果分析与讨论

总结与展望

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

![](ppt/media/image6.png "图片 12")

![](ppt/media/image9.png "图片 27")

![](ppt/media/image12.png "图片 14")

![](ppt/media/image13.png "图片 10")

29-1 = 28  个细胞簇， 2 1   种细胞类型，免疫细胞共  15  种

![](ppt/media/image6.png "图片 2")

![](ppt/media/image14.emf "图片 4")

![](ppt/media/image15.png "图片 5")

![](ppt/media/image16.png "图片 11")

## Slide 8

盲肠 组织细胞 类型注释

结果分析与讨论

总结与展望

![蓝色字体透明背景的logo](ppt/media/image1.png "图片 1")

![](ppt/media/image6.png "图片 12")

![](ppt/media/image9.png "图片 27")

![](ppt/media/image12.png "图片 14")

![](ppt/media/image13.png "图片 10")

![](ppt/media/image6.png "图片 2")

![](ppt/media/image17.png "图片 4")

![](ppt/media/image18.png "图片 6")

## Slide 9

KEGG （感染急性期  vs   PBS 对照）

 

Fructose and mannose metabolism : Carbohydrate metabolism

Fatty acid biosynthesis : Lipid metabolism

Glycerophospholipid metabolism : Lipid metabolism

Arachidonic acid metabolism : Lipid metabolism

MAPK signaling pathway : Signal transduction

Wnt  signaling pathway : Signal transduction

VEGF signaling pathway : Signal transduction

Apelin signaling pathway : Signal transduction

FoxO  signaling pathway : Signal transduction

Calcium signaling pathway : Signal transduction

Phosphatidylinositol signaling system : Signal transduction

mTOR signaling pathway : Signal transduction

Cytokine-cytokine receptor interaction : Signaling molecules and interaction

ECM-receptor interaction : Signaling molecules and interaction

Peroxisome : Transport and catabolism

Autophagy - animal : Transport and catabolism

Efferocytosis : Transport and catabolism

Oocyte meiosis : Cell growth and death

Apoptosis : Cell growth and death

Ferroptosis : Cell growth and death

Cellular senescence : Cell growth and death

Focal adhesion : Cellular community - eukaryotes

Gap junction : Cellular community - eukaryotes

Cytoskeleton in muscle cells : Cell motility

Regulation of actin cytoskeleton : Cell motility

Toll-like receptor signaling pathway : Immune system

NOD-like receptor signaling pathway : Immune system

C-type lectin receptor signaling pathway : Immune system

GnRH signaling pathway : Endocrine system

Progesterone-mediated oocyte maturation : Endocrine system

Vascular smooth muscle contraction : Circulatory system

![](ppt/media/image19.png "图片 3")

## Slide 10

KEGG （ SP  持续期  vs SP  急性期）

 

![](ppt/media/image20.png "图片 2")

## Slide 11

KEGG （ PBS W11   vs   PBS   W2 ）

 

![](ppt/media/image21.png "图片 2")

## Slide 12

Cells

![](ppt/media/image22.png "图片 2")

![](ppt/media/image23.emf "图片 3")

## Slide 13

All cells

![](ppt/media/image24.png "图片 2")

![](ppt/media/image25.png "图片 4")

![](ppt/media/image16.png "图片 6")

![](ppt/media/image26.png "图片 8")

## Slide 14

Immune  cells

![](ppt/media/image27.png "图片 3")

![](ppt/media/image28.png "图片 7")

![](ppt/media/image29.png "图片 11")

## Slide 15

Innate cells

![](ppt/media/image30.png "图片 2")

![](ppt/media/image31.png "图片 4")

![](ppt/media/image32.png "图片 6")

## Slide 16

Structure cells

![](ppt/media/image33.png "图片 2")

![](ppt/media/image34.png "图片 4")

![](ppt/media/image35.png "图片 6")

## Slide 17

T  cells

![](ppt/media/image36.png "图片 2")

![](ppt/media/image37.png "图片 4")

![](ppt/media/image38.png "图片 6")

## Slide 18

B cells

![](ppt/media/image39.png "图片 2")

![](ppt/media/image40.png "图片 4")

![](ppt/media/image41.png "图片 6")

## Slide 19

Inflammatory factors

![](ppt/media/image42.png "图片 3")

## Slide 20

Innate immune cells markers

![](ppt/media/image43.png "图片 4")

## Slide 21

T cells markers

![](ppt/media/image44.png "图片 3")

## Slide 22

B cells markers

![](ppt/media/image45.png "图片 4")
