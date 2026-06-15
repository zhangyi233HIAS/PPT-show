
A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/49a9bccb1033d360b502ad34b9aecee9271add59506e526df8b774f487863d8d.jpg)



图7.5 同时绘制树与多序列比对结果



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/c505f3e2946e29dc6e00b622aee3db4b4ce8be9c14684ecbf7a2758073f3e4bf.jpg)



图7.5 同时绘制树与多序列比对结果（续）


我们将整个MSA序列及矩形布局的树一起进行了可视化（A）。附有一段序列窗口的环形布局的树（B）。

为了更好地将多序列比对结果与树和其他关联数据一起可视化，我们开发了ggmsa包。它能做到标注序列，并且能使用不同的配色方案为序列 着 色 ［ 4 ］ 。 ggmsa 包 的 输 出 能 与 geom_facet （ ） 图 层 函 数 和ggtreeExtra：：geom_fruit（）图层函数兼容，因此也可以将它们结合起来，对进化树、多序列比对结果及各种不同类型的关联数据进行可视化，探索这些数据之间的潜在联系。

## 7.5 复合图

除了使用geom_facet（）图层函数或ggtreeExtra：：geom_fruit（）图层 函 数 将 图 自 动 与 树 对 齐 ， 以 及 需 要 使 用 gheatmap （ ） 函 数 和msaplot（）函数的特殊情况，还可以通过cowplot包、patchwork包、gtable包[2]或其他的包来构建复合图，但这样需要用户手动将所有的图对齐。这时，ggtree：：get_taxa_name（）函数就非常有用了，它可以获取分类单元标签及它们的顺序，帮助用户根据树的结构对数据进行重新排序。为了使拼图的过程不再这么麻烦，我们开发了aplot包，它可以自动对ggplot对象中的内部数据进行重新排序，并生成与树正确对齐的复合图。

下面示例对一个带有两个关联数据集的树进行了可视化。

```r
library(ggplot2)
library(ggtree)

set.seed(2019-10-31)
tr <- rtree(10)

d1 <- data.frame(
    # 不是所有的标签都匹配
    label = c(tr$tip.label[sample(5, 5)], "A"),
    value = sample(1:6, 6))

d2 <- data.frame(
    label = rep(tr$tip.label, 5),
    category = rep(LETTERS[1:5], each=10),
    value = rnorm(50, 0, 3))

g <- ggtree(tr) + geom_tiplab(align=TRUE)

p1 <- ggplot(d1, aes(label, value)) + geom_col(aes(fill=label)) +
    geom_text(aes(label=label, y=value+.1)) +
    coord_flip() + theme_tree2() +
    theme(legend.position='none')

p2 <- ggplot(d2, aes(x=category, y=label)) +
    geom_tile(aes(fill=value)) + scale_fill_viridis_c() +
    theme_minimal() + xlab(NULL) + ylab(NULL)
```

如果尝试使用cowplot包将它们对齐就会发现，复合图并不会像我们预期的那样正确地对齐，如图7.6A所示。

```txt
cowplot::plot_grid(g, p2, p1, ncol=3) 
```

而aplot包则会帮我们完成所有的操作，自动将所有的子图正确地对齐，如图7.6B所示。

```r
library(aplot)
p2 %> % insert_left(g) %> % insert_right(p1, width=.5) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/fbcc793c3dff02569a5bfa2d456c8a76c1147666efb8adf7a26f793e774910ab.jpg)



图7.6 将树与数据并排对齐以创建复合图的示例


cowplot包只是简单地将子图拼在一起（A），而aplot包则会做些额外的工作，以确保这些与树关联的子图能正确地与树对齐。需要注意的是，柱状图中的“A”由于跟树不匹配而没有被绘制出来。

## 7.6 总结

虽然有很多包都支持对系统发育树进行可视化，但对于那些含有关联数据的树，它们能提供的帮助往往十分有限。也有一些包为存储含有特定领域数据的进化树定义了自己的S4类，如OutbreakTools包［5］定义了用于存储带有流行病学数据的树的obkData，又如phyloseq包［6］定义了用于存储带有微生物组数据的树的phyloseq。但这些包对存储的外部数据提供的可视化支持并不完善，它们只支持将部分存储于对象中的数据呈现于树上。例如，phyloseq包并不支持将可视化存储在phyloseq对象中的物种丰度信息。而且这些包也并没有提供任何工具来整合外部数据以进行进化树的可视化，更不支持将这些外部数据可视化，并对生成的图根据树的结构进行对齐。

ggtree包提供了两种用于整合数据的通用解决方法。第一种方法是使用“％＜+％”操作符，它可以整合与内外部节点相关联的数据，并将之映射 为 视 觉 特 征 ， 以 便 于 对 树 及 在 geom_facet （ ） 图 层 函 数 或ggtreeExtra：：geom_fruit（）图层函数中使用的数据集进行可视化。第二种方法是使用geom_facet（）图层函数或ggtreeExtra：：geom_fruit（）图层函数来整合数据，这种方法对输入的数据没有限制，只要存在能够将 数 据 绘 制 出 来 的 geom （ ） 图 层 函 数 即 可 （ 如 使 用geom_density_ridges（）图层函数来呈现物种丰度）。用户可以自由组合多个面板，以及在同一个面板中组合不同的几何图层。

我们总结了一些ggtree包［2］拥有而许多其他的包没有实现的独特功能。

（1）对与节点或分支关联的数据进行整合，并将之映射为树或其他数据集的视觉特征（见图7.1）。

（2）支持解析表达式（数学符号或文本格式）、表情符号及图像文件。

（3）geom_facet（）图层函数并没有限制输入数据的类型或绘制数据方式。

（4）支持通过组合不同的geom（）图层函数来对关联数据进行可视化。

（5）支持在同一个面板上对不同的数据集进行可视化。

（6）支持在geom_facet（）图层函数中使用“％＜+％”操作符整合数据。

（7）支持向特定图层添加更多的注释。

（8）通过对树的可视化、数据整合及图的对齐进行分离，来实现模块化设计。

独特的模块化设计使得ggtree从众多包中脱颖而出。我们可以先对存储在树对象中的数据，或者由“％＜+％”操作符连接的外部数据与树一起进行可视化，并对树使用多个注释图层实现完全的注释（见图7.1），再逐步调用geom_facet（）图层函数，添加多个面板，或者在同一个面板中添加多个图层，使得我们能够绘制出一个完全注释，且带有包含多个图层的复杂数据面板的树。

ggtree包非常贴合R的生态系统，并拓展了现有的系统发育学相关R包在对数据与树进行整合及可视化方面的功能。利用ggtree包，我们可以使用phyloseq对象绘制物种丰度的分布，这在之前是很难做到的。我们还可以通过“％＜+％”操作符将外部数据连接到树对象，以及使用geom_facet（）图层函数将图与树对齐。在现有的流程中加入ggtree包，将极大地拓展呈现系统发育相关数据的功能，并拓宽在此方面的应用，特别是对于比较研究来说更是如此。

## 本章练习题

随机生成一棵树，并创建一个可以与之合并的外部数据，具体要求如下。

（1）将相关特征映射至树上。

（2）将这棵树与其外部数据生成组合图（geom_facet（）图层函数或facet_plot（）函数）。

（3）请创建一个能与其合并的热图数据并将其可视化，设置其宽度为树图的一半（width参数），调整两图的距离。

## 参考文献



［ 1 ］ Wang L ， Lam T T ， Xu S ， et al.treeio ： an R package for phylogenetic tree input and output with richly annotated and associated data［J］.Molecular Biology and Evolution，2020，37（2）：599-603. 





［2］Yu G，Lam T T，Zhu H，et al.Two methods for mapping and visualizing associated data on phylogeny using ggtree［J］.Mol Biol Evol， 2018，35（12）：3041-3043. 





［3］Xu S，Dai Z，Guo P，et al.ggtreeExtra：Compact visualization of richly annotated phylogenetic data［J］.Mol Biol Evol，2021，38（9）： 4039-4042. 





［ 4 ］ Yu G.Using ggtree to visualize data on tree-like structures［J］.Current Protocols in Bioinformatics，2020，69（1）：e96. 





［5］Jombart T，Aanensen D M，Baguelin M，et al.outbreakTools：a new platform for disease outbreak analysis using the R software［J］.Epidemics，2014，7：28-34. 





［ 6 ］ McMurdie P J H S.phyloseq ： an R package for reproducible interactive analysis and graphics of microbiome census data［J］.2013. 



## 第8章 使用轮廓图和子图注释进化树

## 8.1 使用图像注释进化树

通常我们会以文字的形式，也就是通过展示分类单元的名称来添加分类单元标签。如果此处的文字是一个图像的文件名（本地文件或远程文件皆可），ggtree包就会读取图像并将实际图像展示为分类单元的标签，如图8.1所示。有了ggimage包提供的支持，geom_tiplab（）图层函数和geom_nodelab（）图层函数还可用于渲染轮廓图。

iTOL［1］和EvolView［2］等线上工具均支持在进化树上展示子图，但它们仅支持展示柱状图或饼图。有时，用户可能想以一些其他的可视化方法来对节点关联的数据进行可视化，如小提琴图［3］、维恩图［4］、序列标识图等，并将它们展示在进化树上。此时，这些工具就不能很好地提供帮助。而在ggtree包中，子图会被先输出为图像文件，再被作为标签添加至对应节点，这样用户便可以在进化树上添加任何种类的子图。

```r
library(ggimage)
library(ggtree)

nwk <- paste0((((bufonidae, dendrobatidae), ceratophryidae), "(centrolenidae, leptodactylidae), hylidae);")

imgdir <- system.file("extdata/frogs", package = "TDbook")

x = read.tree(text = nwk)

ggtree(x) + xlim(NA, 7) + ylim(NA, 6.2) +
    geom_tiplab(aes(image=paste0(imgdir, '/', label, '.jpg')), geom="image", offset=2, align=2, size=.2) + 
```

```txt
geom_tiplab(geom='label', offset=1, hjust=.5) +
geom_image(x=.8, y=5.5, image=paste0(imgdir, "/frog.jpg"), size=.2) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/8c131fe52a0db889e692570abb90159932062bdd5208ef8f8da0c8a2ddcd9c52.jpg)



图8.1 使用图像作为分类单元标签


用户需要指定geom=＂image＂，并将图像文件名映射到image美学属性。

## 8.2 使用phylopic注释进化树

phylopic网站中包含3200多张轮廓图，几乎涵盖了所有的生命形式。ggtree包支持使用phylopic[1]来对进化树进行注释，只需设置geom=＂phylopic＂，并将phylopic UID映射到image美学属性即可。ggimage包还支持通过学名获取phylopic UID，这样就可以非常方便地使用phylopic来注释进化树。下面的示例通过叶节点标签获取了phylopic UID，并将对应的phylopic作为第二层叶节点标签对树进行标注。最重要的是，我们还可以使用数值或分类变量对图像进行着色或缩放。本示例使用体重来对图像的颜色进行调整，如图8.2所示。

```r
library(ggtree)
newick <- paste0("((Pongo_abelii, (Gorilla_gorilla_gorilla, (Pan_paniscus, ", "Pan_troglodytes) Pan, Homo_sapiens) Homininae) Hominidae, ", "Nomascus_leucogenys) Hominoidea;")

tree <- read.tree(text=newick)

d <- ggimage::phylopic_uid(tree$tip.label)
d$body_mass <- c(52, 114, 47, 45, 58, 6)

p <- ggtree(tree) %<+% d +
    geom_tiplab(aes(image=uid, colour=body_mass), geom="phylopic", offset=2.5) +
    geom_tiplab(aes(label=label), offset = .2) + xlim(NA, 7) +
    scale_color_viridis_c() 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/740b53380ecde1873e1efa59157966ae2bf6fa2576ccb04a4c436335ef4eb72a.jpg)



图8.2 使用phylopic作为分类单元标签


ggtree包会自动通过提供的UID 下载对应的phylopic图像，也支持使用分类变量或数值变量对图像着色。

## 8.3 使用子图注释进化树

ggtree包中的geom_inset（）图层函数可用于将子图添加到系统发育树中。其需要一个由对应节点编号命名的ggplot图形对象（任何类型的图表均可以）组成的命名列表作为输入。用户还可以通过ggplotify将其他函数（甚至是由Base绘图系统实现的函数）生成的图转换为ggplot对象，再在geom_inset（）图层函数中进行使用。为了更加方便地添加柱状图和饼图（如呈现祖先重构结果的汇总数据等），ggtree包还提供了nodepie（）函数和nodebar（）函数来创建由饼图或柱状图构成的列表。

## 8.3.1 使用柱状图进行注释

本示例使用ape：：ace（）函数估计祖先特征状态。我们将对应的似然值以堆叠柱状图的形式进行可视化，再使用geom_inset（）图层函数将其覆盖到进化树的内部节点上，如图8.3A所示。

```r
library (phytools)
data (anoletree)
x <- getStates (anoletree, "tips")
tree <- anoletree

cols <- setNames (palette() [1:length(unique(x))], sort(unique(x)))
fitER <- ape::ace(x, tree, model="ER", type="discrete")
ancstats <- as.data.frame (fitER$lik.anc)
ancstats$node <- 1:tree$Nnode+Ntip(tree)

## cols 参数表明哪些列用于存储 stats 信息
bars <- nodebar (ancstats, cols=1:6)
bars <- lapply (bars, function(g) g+scale_fill_manual(values = cols))

tree2 <- full_join(tree, data.frame(label = names(x), stat = x),
    by = 'label')
p <- ggtree(tree2) + geom_tiplab() +
    geom_tippoint(aes(color = stat)) +
    scale_color_manual(values = cols) +
    theme(legend.position = "right") +
    xlim(NA, 8)

p1 <- p + geom_inset (bars, width = .08, height = .05, x = "branch")
```

参数x是指放置子图的位置，通过将其设置为“node”或“branch”可以将子图放置于节点或分支上，还可以通过设置参数hjust和vjust分别对其进行水平及垂直方向的调整。插入子图的大小则可以通过设置参数width和height来调整。

## 8.3.2 使用饼图进行注释

用户也可以先使用nodepie（）函数生成由饼图组成的列表，再将这些图表放置于对应的节点上进行注释，如图8.3B所示。nodebar（）函数和nodepie（）函数都可以通过设置alpha参数来改变图表的透明度。

```r
pies <- nodepie(ancstats, cols = 1:6)
pies <- lapply(pies, function(g) g + scale_fill_manual(values = cols))
p2 <- p + geom_inset(pies, width = .1, height = .1)

plot_list(p1, p2, guides='collect', tag_levels='A') 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/cf18c672558c5d4db1c1acbb2f733c113b4620b79680d6f35e7dd9eb9a51a3cb.jpg)



图8.3 使用柱状图或饼图注释内部节点



使用柱状图（A）或饼图（B）呈现内部节点的汇总数据。


## 8.3.3 使用多种不同类型的图表进行注释

geom_inset（）图层函数需要接收一个由ggplot图形对象组成的列表，而这些输入的对象并不局限于饼图或柱状图，它们可以是任意类型的图表，也可以是这些图表的组合。geom_inset（）图层函数也不单单可以用于呈现祖先数据。我们也可以用它来对不同类型的、与树中指定节点关联的数据进行可视化。下面示例通过组合饼图及柱状图来对树进行注释，如图8.4所示。

```r
pies_and_bars <- pies
i <- sample(length(pies), 20)
pies_and_bars[i] <- bars[i]
p + geom_inset(pies_and_bars, width=.08, height=.05) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/e7f013de3a4c12566533e4654735a9573c66bbc3f4a310cebab33ccd7ff6221a.jpg)



图8.4 使用不同类型的子图注释内部节点


## 8.4 玩转phylomoji

phylomoji是由表情符号组成的系统发育树，其寓教于乐[2]，能帮助我们更好地理解进化的概念，非常适合在教学中使用。ggtree包自2015年[3]起便支持生成phylomoji。本示例通过使用ggtree包重新绘制图8.5中的phylomoji[4]，结果如图8.6所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/df1d0b9b2e51a3201367b62fc2028ec26f29cf1e30bec5a023a6aa26b43e94d4.jpg)



图8.5 原始图


```r
library(ggplot2)
library(ggtree)

tt = '((snail,mushroom),(((sunflower,evergreen_tree),leaves),green_salad));'

tree = read.tree(text = tt)

d <- data.frame(label = c('snail', 'mushroom', 'sunflower',
    'evergreen_tree', 'leaves', 'green_salad'),
    group = c('animal', 'fungi', 'flowering plant',
    'conifers', 'ferns', 'mosses'))

p <- ggtree(tree, linetype = "dashed", size=1, color='firebrick') %<+% d +
    xlim(0, 4.5) + ylim(0.5, 6.5) +
    geom_tiplab(parse="emoji", size=15, vjust=.25) +
    geom_tiplab(aes(label = group), geom="label", x=3.5, hjust=1) 
```

需要注意的是，最终呈现的结果可能取决于用户系统中安装的表情符号字体[5]。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/12c4b5fde4e057ede185f04302d9a8b72362daae4d93bc2e1e62d1d51269430d.jpg)



图8.6 将节点标签解析为表情符号


ggtree包支持将文本（如节点标签）解析为表情符号。

通过ggtree包，我们可以很轻松地生成phylomoji，其中的表情符号被视作如“abc”一般的文本。我们可以使用表情符号对分类单元、进化枝进行标注，也可以随意对表情符号进行旋转或着色。这个功能主要通过emojifont包在内部提供支持来实现。

## 8.4.1 在环形布局或扇形布局的树中使用表情符号

我们也可以在环形布局或扇形布局的树中使用表情符号，如图8.7所示。

```r
p <- ggtree(tree, layout = "circular", size=1) +
    geom_tiplab(parse="emoji", size=10, vjust=.25)
print(p)

## 扇形布局
p2 <- open_tree(p, angle=200)
print(p2)

p2 %>% rotate_tree(-90)
```

我们可以在科研文章［5］中找到另一个使用ggtree包和emojifont包生成的由植物表情符号构成的系统发育树的示例。


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/c19eb5b05c6ceda56290815a29b3278db27466c2a0466bee030f971a420c8c52.jpg)



C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/1783d57e33fe0a3586c329568a6ff46098173f59d79d1816d04d85e246eae53e.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/e527d4980df1d63e547e3664d5f8b2a07ce5ff3bc4ad5c9cfdff704861859aad.jpg)



图8.7 在环形布局或扇形布局的树中使用表情符号


## 8.4.2 使用表情符号作为进化枝标签

geom_cladelab（）图层函数同样支持将进化枝标签解析为表情符号。例如，在流感病毒的系统发育树中，我们可以使用表示宿主物种的表情符号来标注进化枝，如图8.8所示。

```txt
set.seed(123)
tr <- rtree(30)

dat <- data.frame(
    node = c(41, 53, 48),
    name = c("chicken", "duck", "family")
)

p <- ggtree(tr) +
    xlim(NA, 5.2) +
    geom_cladelab(
    data = dat,
    mapping = aes( 
```

```bazel
node = node,
label = name,
color = name
),
parse = "emoji",
fontsize = 12,
align = TRUE,
show.legend = FALSE
) +
scale_color_manual(
values = c(
chicken="firebrick",
duck="steelblue",
family = "darkkhaki"
)
)
p 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/511fe8b012d4a07d49f15c94492d6531a974fce7f7527d42550c1d66404537ce.jpg)



图8.8 使用表情符号作为进化枝标签


## 8.4.3 Apple彩色表情符号

虽然R的绘图工具并不支持macOS上的AppleColorEmoji字体，但方法总比困难多。我们可以先将树图以svg的形式保存，再在Safari中对其进行渲染。如图8.9所示，叶节点标签被Safari解析为AppleColorEmoji字体的表情符号。

```r
library(ggtree)
tree_text <- paste0((((((cow, (whale, dolphin)), (pig2, boar)),", "camel), fish), seedling);")
x <- read.tree(text = tree_text)
library(ggimage)
p <- ggtree(x, size=2) + geom_tiplab(size=20, parse='emoji') + xlim(NA, 7) + ylim(NA, 8.5)

svglite::svglite("emoji.svg", width = 10, height = 7)
print(p)
dev.off()

# 或者使用 grid.export() 函数以达到上述代码的相同效果
# ps = gridSVG::grid.export("emoji.svg",addClass=T)
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/8d9d6d6cb76d6d75794ac55b15f5175d7a4b8d0dee62165ccf7b71eeff0e24e7.jpg)



图8.9 在ggtree中使用Apple彩色表情符号


## 8.4.4 使用ASCII Art呈现phylomoji

我们也可以以ASCII Art的形式呈现phylomoji，具体内容请读者参见附录B中的B.5小节。

## 8.5 总结

当叶节点标签、内部节点标签及进化枝标签在内的多种标签可以被分别解析为图像文件名、plotmath表达式或表情符号名时，ggtree包可以将它们分别解析为图像、数学表达式或表情符号。这不仅十分有趣，在科研中也能为用户提供不少帮助。通过在系统发育树中添加图像，我们可以更好地呈现与物种相关的特性，如形态结构、解剖结构，甚至是大分子结构等。不仅如此，ggtree包还可以对统计推断（如生物地理范围重建和后验概率分布等）或节点关联数据进行总结归纳，并以子图的形式呈现在进化树上。

## 8.6 本章练习题

1.随机生成一棵树，并使用任意本地图片作为叶节点标签来注释它。

2.随机生成一棵树，使用ggplot2与R的内置数据集mtcars任意生成等于内部节点数量的子图，并将这些子图注释于生成的进化树的内部节点上。

3.参考外链资源第8章第2条链接中的内容，创造属于自己的Phylomoji。

## 参考文献



［1］Letunic I，Bork P.Interactive Tree Of Life（iTOL）：an online tool for phylogenetic tree display and annotation ［ J ］ .Bioinformatics ， 2007，23（1）：127-128. 





［ 2 ］ He Z ， Zhang H ， Gao S ， et al.evolview v2 ： an online visualization and management tool for customized and annotated phylogenetic trees［J］.Nucleic Acids Res，2016，44（W1）：W236-W241. 





［ 3 ］ Grubaugh N D ， Ladner J T ， Kraemer M ， et al.Genomic epidemiology reveals multiple introductions of Zika virus into the United States［J］.Nature，2017，546（7658）：401-405. 





［4］Lott S C，Voss B，Hess W R，et al.coVenntree：a new method for the comparative analysis of large datasets［J］.Front Genet，2015，6： 43. 





［ 5 ］ Escudero M ， Wendel J F.The grand sweep of chromosomal evolution in angiosperms［J］.New Phytol，2020，228（3）：805-808. 





[1]相关推文请参见“外链资源”文档中第8章第1条





[2]更多phylomoji的示例请参见“外链资源”文档中第8章第2条





[3]相关细节请参见“外链资源”文档中第8章第3条





[4]此推文链接请参见“外链资源”文档中第8章第4条





[5]作者在系统中安装的是谷歌noto表情符号字体



## 第3篇 ggtree拓展包

## 第9章 对其他树形对象使用ggtree包

## 9.1 使用ggtree包绘制系统发育树对象

treeio包［1］支持从多个软件输出结果中解析出进化推论数据，并将外部数据关联到树结构上，这使得treeio可以作为将进化数据带入R社区的基础。ggtree包［2］能够与treeio包无缝协作，通过对树关联数据进行可视化来注释树。ggtree包可以作为在树可视化及注释方面的通用工具，并且也非常符合R包的生态系统。ggtree包支持大部分由其他R包定义的S3类或 S4 类 树 对 象 ， 如 phylo 、 multiPhylo 、 phylo4 、 phylo4d 、 phyloseq 和obkData。通过ggtree包能轻松生成更为复杂的树图，这是其他包很难或根本不能做到的。例如，phyloseq包无法像ggtree包一样实现对phyloseq对象更为复杂的可视化（图9.4）。除此之外，ggtree包还拓展了将外部数据关联到这些树对象上的可能性［3］。

## 9.1.1 phylo4对象和phylo4d对象

phylo4对象及phylo4d对象是在phylobase包中定义的。其中，phylo4对象是phylo对象的S4版本，而phylo4d则是在phylo4的基础上添加了一个含有性状数据的数据框。phylobase包提供了一个plot（）函数，并在内部调用treePlot（）函数来对含有数据的树进行可视化。但是plot（）函数也存在着一些限制，它只能将数值型的进化树关联数据绘制为气泡图，也不支持生成图例。phylobase包并没有实现对分类型的值进行可视化的函数，也不支持将这些关联数据转换为诸如颜色、大小、形状等视觉特征。虽然利用phylobase包可以做到使用关联数据为进化树着色，但需要用户手动提取数据，并将它们映射到颜色向量，再将颜色向量传递给plot（）函数。这是一个非常乏味的过程，也非常容易出错，因为用户需要保证颜色向量的顺序与对象中存储的分支列表的顺序相一致。

ggtree包支持对phylo4d对象的可视化，同时，存储在phylo4d对象中的所有关联数据都可以直接用来对树进行注释，如图9.1所示。

```r
library (phylobase)
data (geospiza_raw)
g1 <- as (geospiza_raw$tree, "phylo4")
g2 <- phylo4d (g1, geospiza_raw$data, missing.data="warn")
d1 <- data.frame (x = seq(1.1, 2, length.out = 5),
    lab = names (geospiza_raw$data))
p1 <- ggtree(g2) +
    geom_tippoint(aes(size = wingL), x = d1$x[1], shape = 1) +
    geom_tippoint(aes(size = tarsusL), x = d1$x[2], shape = 1) +
    geom_tippoint(aes(size = culmenL), x = d1$x[3], shape = 1) +
    geom_tippoint(aes(size = beakD), x = d1$x[4], shape = 1) +
    geom_tippoint(aes(size = gonysW), x = d1$x[5], shape = 1) +
    scale_size_continuous(range = c(3,12), name="") +
    geom_text(aes(x = x, y = 0, label = lab), data = d1, angle = 45) +
    geom_tiplab(offset = 1.3) + xlim(0, 3) +
    theme(legend.position = c(.1, .75))
## 用户可以通过 as.treedata(g2) 将 g2 转换为 treedata 对象,
## 并使用 get_tree_data() 函数来提取进化树关联数据
p2 <- gheatmap(ggtree(g1), data=geospiza_raw$data, colnames_angle=45) +
    geom_tiplab(offset=1) + hexpand(.2) +
    theme(legend.position = c(.1, .75))
aplot::plot_list(p1, p2, ncol=2, tag_levels='A')
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/dfb53f50d40159d9de4be31addf6361b14c0294f03c369f49d23a23a1358ac47.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/2cd0591a6ef6590c81f9be8f296e909d4af7303b5b8dc186f5dff025608fb6f4.jpg)



图9.1 使用ggtree包对phylo4d对象中的数据进行可视化


## 9.1.2 phylog对象

phylog对象是在ade4包中定义的。此包是专门为分析生态学数据设计的 ， 同 时 提 供 了 newick2phylog （ ） 函 数 、 hclust2phylog （ ） 函 数 及taxo2phylog（）函数，通过Newick字符串、层次聚类结果及分类信息来构建系统发育树，并生成phylog对象。ggtree包也支持对phylog对象的可视化，如图9.2所示。

```r
library(ade4)
data(taxo.eg)
tax <- as.taxo(taxo.eg[[1]])
names(tax) <- c("genus", "family", "order")
print(tax) 
```

```txt
## genre famille ordre
## esp3 g1 fam1 ORD1
## esp1 g1 fam1 ORD1
## esp2 g1 fam1 ORD1
## esp4 g1 fam1 ORD1
## esp5 g1 fam1 ORD1
## esp6 g1 fam1 ORD1
## esp7 g1 fam1 ORD1
## esp8 g2 fam2 ORD2
## esp9 g3 fam2 ORD2
## esp10 g4 fam3 ORD2
## esp11 g5 fam3 ORD2
## esp12 g6 fam4 ORD2
## esp13 g7 fam4 ORD2
## esp14 g8 fam5 ORD2
## esp15 g8 fam5 ORD2 
```

```txt
tax.phy <- taxo2phylog(as.taxo(taxo.eg[[1]]))  
print(tax.phy) 
```

```txt
## Phylogenetic tree with 15 leaves and 16 nodes
## $class: phylog
## $call: taxo2phylog(taxo = as.taxo(taxo.eg[[1]])
## $tre: (((esp3, esp1, esp2, esp4, e...15) l1g8) l2fam5) l3ORD2) Root; 
```

```shell
##
## class length
## $leaves numeric 15
## $nodes numeric 16
## $parts list 16
## $paths list 31
## $droot numeric 31
##
content
## $leaves length of the first preceding adjacent edge
## $nodes length of the first preceding adjacent edge
## $parts subsets of descendant nodes
## $paths path from root to node or leave
## $droot distance to root 
```

```txt
ggtree(tax.phy) + geom_tiplab() +
geom_nodelab(geom='label') + hexpand(.05) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/df0100bde035906031f19a8cb416b7e1e79e663b0f20e58c95ccc93e8b6aea29.jpg)


图9.2 可视化phylog对象

## 9.1.3 phyloseq对象

phyloseq包中定义的phyloseq类是专门为了存储包括系统发育树、与树关联的样本数据及分类学分配信息（taxonomy assignment）在内的微生物组数据设计的。phyloseq包可以从许多比较常见的管道的输出中导入数据，如QIIME［4］、mothur［5］dada2［6］及PyroTagger［7］等。ggtree包支持对存储在phyloseq对象中的进化树进行可视化，其中的关联数据也可以用来对树进行注释，如图9.3所示。

```r
library (phyloseq)
library (scales)

data(GlobalPatterns)
GP <- prune_taxa(taxa_sums(GlobalPatterns) > 0, GlobalPatterns)
GP.chl <- subset_taxa(GP, Phylum == "Chlamydiae")

ggtree(GP.chl) +
    geom_nodelab(aes(label=label), hjust = -.05, size=3.5) +
    geom_tiplab(aes(label=Genus), hjust = -.3) +
    geom_point(aes(x=x+hjust, color=SampleType, shape=Family, size=Abundance), na.rm=TRUE) +
    scale_size_continuous(trans=log_trans(5)) +
    theme(legend.position="right") 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/04c43c690f2a334880e921c2402af30007eeaf138aed015027b0c901281f32c0.jpg)



图9.3 对phyloseq包中存储的对象进行可视化


图9.3重现了phyloseq：：plot_tree（）函数的输出结果。用户在使用ggtree包时会发现，它在对微生物组数据的可视化及进一步注释方面相当适用，这是因为ggtree包支持使用图形语法进行高层次的注释，并能添加很多phyloseq包不能添加的进化树关联数据图层。

在图9.4中，我们使用了phyloseq包中提供的微生物组数据，并使用密度脊线图来对物种丰度数据进行可视化。geom_facet（）图层函数会自动根据树的结构重新对丰度数据进行排序，并使用指定的geom（）图层函数对数据进行可视化（本示例中为geom_density_ridges（）图层函数），以及将密度曲线与树对齐。值得注意的是，使用ggtree（）函数可以获取存储在phyloseq对象中的数据，并可以在树的可视化时直接使用这些数据（本示例中，我们使用物种所属的门的信息来为叶节点及密度脊线着色）。本示例的源代码率先发表于本章参考文献［3］的补充文件中。

```r
library(ggridges)

data("GlobalPatterns")
GP <- GlobalPatternsGP <- prune_taxa(taxa_sums(GP) > 600, GP)
sample_data(GP)$human <- get_variable(GP, "SampleType") %in%
c("Feces", "Skin")

mergedGP <- merge_samples(GP, "SampleType")
mergedGP <- rarefy_even_depth(mergedGP,rngseed=394582)
mergedGP <- tax_glom(mergedGP,"Order")

melt_simple <- psmelt(mergedGP) %>% 
    filter(Abundance < 120) %>% 
    select(OTU, val=Abundance)

ggtree(mergedGP) +
    geom_tippoint(aes(color=Phylum), size=1.5) +
    geom_facet(mapping = aes(x=val, group=label,
    fill=Phylum),
    data = melt_simple,
    geom = geom_density_ridges,
    panel="Abundance",
    color='grey80', lwd=.3) +
    guides(color = guide_legend(ncol=1)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/b3214e3dd846bbe1162fbc51cb37c0f2039fc1ecebc0712ea0a5a1707b28f524.jpg)



图9.4 绘制系统发育树及OTU丰度密度


根据物种所属门的不同来对叶节点进行着色，同时以密度脊线图的形式对它们在样本间的对应丰度进行可视化，并根据树的结构进行排序。

## 9.2 使用ggtree包绘制树状图

树状图（Dendrogram）常用于展示层次聚类结果及分类树或回归树。在R语言中，我们可以使用hclust（）函数进行层次聚类的计算。

```txt
hc <- hclust(dist(mtcars))
hc

##
## Call:
## hclust(d = dist(mtcars))

##
## Cluster method : complete
## Distance : euclidean
## Number of objects: 32 
```

hclust对象描述了在聚类过程中产生的树。我们可以将它转换为以深度嵌套的列表来存储树的dendrogram对象。

```txt
den <- as.dendrogram(hc)
den
## 'dendrogram' with 2 branches and 32 members total, at height 425.3 
```

ggtree包支持R社区中定义的大多数层次聚类对象，如hclust、dendrogram，cluster包中定义的agnes、diana、twins，以及pvclust包中定义的pvclust对象。用户可以通过ggtree（object）指令对其树结构进行可视化，并使用其他图层或功能自定义树图或为树图添加注释。

ggtree包中的layout_dendrogram（）函数用于将树设置为自上而下的布局，而theme_dendrogram（）函数用于显示树的高度（类似于系统发育树可视化中theme_tree2（）函数的功能），如图9.5所示，也可参见本章参考文献［8］中的示例。

```r
clus <- cutree(hc, 4)
g <- split(names(clus), clus)

p <- ggtree(hc, linetype='dashed')
clades <- sapply(g, function(n) MRCA(p, n))

p <- groupClade(p, clades, group_name='subtree') + aes(color=subtree)
d

<- data.frame(label = names(clus),
    cyl = mtcars[names(clus), "cyl {

p %<+% d +
    layout_dendrogram() +
    geom_tippoint(aes(fill=factor(cyl), x=x+.5),
    size=5, shape=21, color='black') +
    geom_tiplab(aes(label=cyl), size=3, hjust=.5, color='black') +
    geom_tiplab(angle=90, hjust=1, offset=-10, show.legend=FALSE) + 
```

```txt
scale_color_brewer(palette='Set1', breaks=1:4) + theme_dendrogram(plot.margin=margin(6,6,80,6)) + theme(legend.position=c(.9,.6)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/7a54669b9ccc0ec899b59636728a7c172722b301d66307f9dd4c79d328b6945a.jpg)



图9.5 对树状图进行可视化


本示例使用了cutree（）函数将树分成不同组，并使用groupClade（）函数依据此信息对树进行分组。树以经典的自上而下的布局进行展示，并依据分组信息对分支进行着色，同时叶节点由汽缸的数量进行着色及标注。

## 9.3 使用ggtree包绘制树形网络图

树形网络图（Tree Graph，如一个igraph对象）可以通过treeio包中的as.phylo（）函数转换为phylo对象。ggtree包支持直接对树形网络图表进行可视化，如图9.6所示。需要注意的是，目前ggtree包并不支持所有igraph对象的可视化，它仅支持对树形网络图形式的igraph对象的可视化。

```r
library(igraph)
g <- graph.tree(40, 3)
arrow_size <- unit(rep(c(0, 3), times = c(27, 13)), "mm")
ggtree(g, layout='slanted', arrow = arrow(length=arrow_size)) +
geom_point(size=5, color='steelblue', alpha=.6) +
geom_tiplab(hjust=.5,vjust=2) + layout_dendrogram() 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/e5e339e43587d8a0587364a6ce1e737035bbec10dc0a1d41e55b026eccccd200.jpg)



图9.6 对树形网络图进行可视化


本示例使用带箭头的线指明父子节点之间的关系，同时以蓝色圆圈表示节点。

## 9.4 使用ggtree包绘制其他树形结构

ggtree包可用于任何层次结构数据的可视化。下面以2014年的GNI（国民总收入）数据作为示例。首先要准备好边列表，也就是一个由两列数据组成，包含父子节点关系信息的数据框或矩阵。然后通过treeio包中的as.phylo（）函数将边列表转换为phylo对象。最后使用ggtree包对其与相关联的数据一起进行可视化。本示例以人口为标尺对代表不同国家的圆点的大小进行了缩放，如图9.7所示。

library(treeio)
library(ggplot2)
library(ggtree)

data("GNI2014", package="treemap")
n <- GNI2014[, c(3,1)]
n[,1] <- as.character(n[,1])
n[,1] <- gsub("\\s\ $.*\$ ", "", n[,1])

w <- cbind("World", as.character(unique(n[,1]))

colnames(w) <- colnames(n)
edgelist <- rbind(n, w) 

```r
y <- as.phylo(edgelist)
ggtree(y, layout='circular') %<+% GNI2014 +
aes(color=continent) +
geom_tippoint(aes(size=population), alpha=.6) +
geom_tiplab(aes(label=country), offset=.1) +
theme(plot.margin=margin(60, 60, 60, 60)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/42790dd7ccc67718af6f0ee90354a122a338710c72584b9f32d0f4eb99a4e347.jpg)



图9.7 对任意层次结构数据进行可视化


由边连接点呈现的层次数据可以被转换为phylo对象，并使用ggtree包对其进行可视化，以此来探索它们之间的关系。

## 9.5 总结

ggtree包支持对多种在R及其拓展包中定义的树对象，这也使得ggtree包能非常轻松地被整合到现有的各种管道中。不仅如此，ggtree包还支持外部数据的整合，并能在树中对这些数据进行探索，这将极大地促进现有管道下游分析中的数据可视化及结果解释。最重要的是，我们对于将边列表转换为树对象的支持可以将更多的树形结构纳入treeio包和ggtree包的框架中。使得更多不同领域的树形结构，以及相关的异构数据通过treeio包及ggtree包进行整合与可视化，这将促进整合分析与比较分析，从而发现更多系统性模式与见解。

## 9.6 本章练习题

1.简述ggtree可以衔接哪些包输出的系统发育树对象，自行构建一个系统发育树对象并对其进行可视化。

2.尝试对R内置数据集UScitiesD进行层次聚类，将结果转换为dendrogram对象并使用ggtree对其进行可视化。

## 参考文献



［ 1 ］ Wang L ， Lam T T ， Xu S ， et al.treeio ： an R package for phylogenetic tree input and output with richly annotated and associated data［J］.Molecular Biology and Evolution，2020，37（2）：599-603. 





［ 2 ］ Yu G ， Smith D K ， Zhu H ， et al.ggtree ： an R package for visualization and annotation of phylogenetic trees with their covariates and other associated data ［ J ］ .Methods in Ecology and Evolution ， 2016 ， 8（1）：28-36. 





［3］Yu G，Lam T T，Zhu H，et al.Two methods for mapping and visualizing associated data on phylogeny using ggtree［J］.Mol Biol Evol， 2018，35（12）：3041-3043. 





［4］Kuczynski J，Stombaugh J，Walters W A，et al.Using QIIME to analyze 16S rRNA gene sequences from microbial communities［J］.Current Protocols in Bioinformatics，2011，36（1）：10.7.1-10.7.20. 





［ 5 ］ Schloss P D ， Westcott S L ， Ryabin T ， et al.Introducing mothur：open-source，platformindependent，community-supported software for describing and comparing microbial communities ［ J ］ .Appl Environ Microbiol，2009，75（23）：7537-7541. 





［6］Callahan B J，McMurdie P J，Rosen M J，et al.DADA2：Highresolution sample inference from Illumina amplicon data［J］.Nat Methods， 2016，13（7）：581-583. 





［7］Kunin V H P.PyroTagger：A fast ，accurate pipeline for analysis of rRNA amplicon pyrosequence data.［J］.The Open Journal，2010：1-8. 





［ 8 ］ Yu G.Using ggtree to Visualize Data on Tree-Like Structures［J］.Current Protocols in Bioinformatics，2020，69（1）：e96. 



# 第10章 使用ggtreeExtra包在环形布局上呈现数据

## 10.1 简介

ggtree包［1］能帮助我们对系统发育树及其他树形结构进行可编程的可视化，也支持将进化树相关数据以多个图层的形式在进化树上直接注释，或者与树并排绘制（参见本章参考文献［2］）。虽然ggtree包支持以多种布局绘制进化树，但geom_facet（）图层函数却仅适用于直角矩形布局、环形布局、椭圆布局及倾斜布局。而ggtree包也没有为环形布局、扇形布局或径向布局外圈数据的呈现提供直接的支持。为了解决这个问题，我们开发了ggtreeExtra包。它能帮助用户在环形布局树的外圈中绘制相关的图层，并将其与树结构对齐，它也兼容矩形布局的树。

## 10.2 基于树的结构将图与树对齐

ggtreeExtra包中的geom_fruit（）图层函数用于将外部图层与树结构并排对齐。与geom_facet（）图层函数布局类似，geom_fruit（）图层函数可在内部根据树结构对输入数据进行重新排序，并使用指定的几何对象图层通过美学映射和非变量设置对数据进行可视化。可视化后生成的图形将显示在树的外圈（环形布局等）或树的右侧（矩形布局）。

geom_fruit（）图层函数被设计为能够支持ggplot2包及其扩展包中定义的大部分geom图层。图的位置（在树外圈上的位置）由position参数控制。position参数需要接收一个position对象，其默认值为“auto”，此时geom_fruit（）图层函数会自行推断并尝试为指定的几何对象图层确定合适 的 位 置 。 在 这 个 过 程 中 ， geom_fruit （ ） 图 层 函 数 会 自 动 对geom_bar（）图层函数使用position_stackx（）函数，对geom_violin（）图层函数和geom_boxplot（）图层函数使用position_dodgex（）函数，以及对其他的几何图层（如geom_point（）图层函数和geom_tile（）图层函数等）使用position_identityx（）函数，来调整它们的位置。任何带有position参数的几何图层都可以与geom_fruit（）图层函数兼容，这就使在ggtreeExtra包中定义的位置函数能够用于调整输出图层的位置。此外，通过axis.params和grid.params参数，我们还可以分别为当前的外部图层添加坐标轴和背景网格线。

下面示例使用了phyloseq包中的微生物组数据，并使用箱线图来对物种丰度数据进行可视化。geom_fruit（）图层函数根据环形布局树的结构自 动 重 新 排 列 丰 度 数 据 ， 并 使 用 特 定 的 geom （ ） 图 层 函 数 （ 如geom_boxplot（）图层函数）对数据进行可视化，如图10.1所示。本章参考文献［2］中的图1就是使用geom_density_ridges （）图层函数和geom_facet（）图层函数对此数据集进行了可视化。

```r
library(ggtreeExtra)
library(ggtree)
library(phyloseq)
library(dplyr)

data("GlobalPatterns")
GP <- GlobalPatterns
GP <- prune_taxa(taxa_sums(GP) > 600, GP)
sample_data(GP)$human <- get_variable(GP, "SampleType") %in%
    c("Feces", "Skin")
mergedGP <- merge_samples(GP, "SampleType")
mergedGP <- rarefy_even_depth(mergedGP,rngseed=394582)
mergedGP <- tax_glom(mergedGP,"Order")

melt_simple <- psmelt(mergedGP) %>% 
    filter(Abundance < 120) %>% 
    select(OTU, val=Abundance)

p <- ggtree(mergedGP, layout="fan", open.angle=10) +
    geom_tippoint(mapping=aes(color=Phylum),
    size=1.5, 
```

```r
show.legend=FALSE)
p <- rotate_tree(p, -90)

p <- p +
    geom_fruit(
    data=melt_simple,
    geom=geom_boxplot,
    mapping = aes(
    y=OTU,
    x=val,
    group=label,
    fill=Phylum,
    ),
    size=.2,
    outlier.size=0.5,
    outlier.stroke=0.08,
    outlier.shape=21,
    axis.params=list(
    axis = "x",
    text.size = 1.8,
    hjust = 1,
    vjust = 0.5,
    nbreak = 3,
    ),
    grid.params=list()
)

p <- p +
scale_fill_discrete(
    name="Phyla",
    guide=guide_legend(keywidth=0.8, keyheight=0.8, ncol=1)
) +
theme(
    legend.title=element_text(size=9),
    legend.text=element_text(size=7)
)

p 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/837b8373689f16c7977c0b835d3d2a59bd719f87c036e11300341a05facf31de.jpg)


= Acidobacteria 

Actinobacteria 

Armatimonadetes 

Bacteroidetes 

Chlorobi 

Chloroflexi 

Crenarchaeota 

Cyanobacteria 

Elusimicrobia 

Euryarchaeota 

Firmicutes 

= Fusobacteria 

Gemmatimonadetes 

Lentisphaerae 

Nitrospirae 

OP8 

Planctomycetes 

Proteobacteria 

SAR406 

Spirochaetes 

Tenericutes 

Thermi 

verrucomicrobia 

= WS3 


图10.1 附有OTU丰度分布的系统进化树


物种丰度分布信息在与树对齐后，以箱线图的形式呈现出来。本示例使用物种所属的门信息对树上的符号点及物种丰度分布图进行着色。

## 10.3 在多维数据的可视化中将多个图与树对齐

我们可以为树添加多个geom_fruit（）图层函数，对于多维数据的呈现来说，环形布局确实显得更为紧凑和高效。本示例再现了本章参考文献［3］中的图2。数据由GraPhlAn［4］提供，其中包含不同身体部位微生物组的相对丰度。本示例向我们展示了ggtreeExtra包通过添加多个图层（本示例中为热图和条形图）来呈现不同类型数据的功能，如图10.2所示。

```r
library(ggtreeExtra)
library(ggtree)
library(treeio)
library(tidytree)
library(ggstar) 
```

```r
library(ggplot2)
library(ggnewscale)
library(TDbook)
# 从 TDbook 中加载数据，包括 tree_hmptree、
# df_tippiont（微生物的丰度和类型）、
# df_ring_heatmap（微生物在人体不同部位的丰度）、
# 及 df_barplot_attr（流行率最高的微生物的丰度）
tree <- tree_hmptree
dat1 <- df_tippoint
dat2 <- df_ring_heatmap
dat3 <- df_barplot_attr
```

```r
dat2$Sites <- factor(dat2$Sites,
    levels=c("Stool (prevalence)", "Cheek (prevalence)",
    "Plaque (prevalence)", "Tongue (prevalence)",
    "Nose (prevalence)", "Vagina (prevalence)",
    "Skin (prevalence)"))
dat3$Sites <- factor(dat3$Sites,
    levels=c("Stool (prevalence)", "Cheek (prevalence)",
    "Plaque (prevalence)", "Tongue (prevalence)",
    "Nose (prevalence)", "Vagina (prevalence)",
    "Skin (prevalence)")) 
```


#提取进化枝标签信息


```r
这是因为有些树的节点被注释至属水平，我们可以通过 ggtree 包将其突出显示
nodeids <- nodeid(tree, tree$node.label[nchar(tree$node.label) > 4])
nodedf <- data.frame(node=nodeids)
nodelab <- gsub("[\.\.0-9]", "", tree$node.label[nchar(tree$node.label) > 4])
```


#绘制进化枝标签图层，并突出显示该图层


```r
poslist <- c(1.6, 1.4, 1.6, 0.8, 0.1, 0.25, 1.6, 1.6, 1.2, 0.4,
    1.2, 1.8, 0.3, 0.8, 0.4, 0.3, 0.4, 0.4, 0.4, 0.6,
    0.3, 0.4, 0.3)
labdf <- data.frame(node=nodeids, label=nodelab, pos=poslist) 
```


#环形布局树


```txt
p <- ggtree(tree, layout="fan", size=0.15, open.angle=5) +
geom_hilight(data=nodedf, mapping=aes(node=node),
    extendto=6.8, alpha=0.3, fill="grey", color="grey50",
    size=0.05) +
geom_cladelab(data=labdf,
    mapping=aes(node=node,
    label=label, 
```

```txt
offset.text=pos),
    hjust=0.5,
    angle="auto",
    barsize=NA,
    horizontal=FALSE,
    fontsize=1.4,
    fontface="italic"
)

p <- p %<+% dat1 + geom_star(
    mapping=aes(fill=Phylum, starshape=Type, size=Size),
    position="identity",starstroke=0.1) +
    scale_fill_manual(values=c("#FFC125","#87CEFA","#7B68EE","#808080", "#800080", "#9ACD32","#D15FEE","#FFC0CB", "#EE6A50","#8DEEEE", "#006400","#800000", "#B0171F","#191970"),
    guide=guide_legend(keywidth = 0.5,
    keyheight = 0.5, order=1,
    override.aes=list(starshape =15)),
    na.translate=FALSE)+
    scale_starshape_manual(values=c(15, 1),
    guide=guide_legend(keywidth = 0.5,
    keyheight = 0.5, order=2),
    na.translate=FALSE)+
    scale_size_continuous(range = c(1, 2.5),
    guide = guide_legend(keywidth = 0.5,
    keyheight = 0.5, order=3,
    override.aes=list(starshape=15)))
    p <- p + new_scale_fill() +
    geom_fruit(data=dat2, geom=geom_tile,
    mapping=aes(y=ID, x=Sites, alpha=Abundance, fill=Sites),
    color = "grey50", offset = 0.04,size = 0.02)+
    scale_alpha_continuous(range=c(0, 1),
    guide=guide_legend(keywidth = 0.3,
    keyheight = 0.3,
    order=5)) +
    geom_fruit(data=dat3, geom=geom_bar,
    mapping=aes(y=ID, x=HigherAbundance, fill=Sites),
    pwidth=0.38,
    orientation="y", 
```

```python
stat="identity",   
) +   
scale_fill_manual (values=c("#0000FF","#FFA500","#FF0000", "#800000", "#006400","#800080", "#696969"), guide=guide_legend(keywidth = 0.3, keyheight = 0.3, order=4)) + geom_treescale(fontsize=2, linesize=0.3, x=4.9, y=0.1) + theme(legend.position=c(0.93, 0.5), legend.background=element_rect (fill=NA), legend.title=element_text (size=6.5), legend.text=element_text (size=4.5), legend.spacing.y = unit(0.02, "cm"), ) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/1edcc3b3d641ffd209b494a3f5432b3b477ad39be5ced1ba594aa05a553b1e86.jpg)



图10.2 在系统发育树上呈现微生物组数据（丰度和位置）


进化树由符号点、突出显示的进化枝及进化枝标签注释。本示例使用了两个geom_fruit（）图层函数对位置和丰度信息进行可视化。

本示例中叶节点的形状表示微生物的类型（共生微生物或潜在病原体），热图的透明度表示微生物的丰度，热图的颜色表示人体的不同部位，柱状图表示对应身体部位的相对丰度最高的物种的丰度。还利用节点标签中包含的分类学信息为对应的进化枝添加标签，并突出显示。

geom_fruit（）图层函数还支持矩形布局。用户可以直接为矩形布局的 树 添 加 geom_fruit （ ） 图 层 函 数 （ 如 ggtree （ tree_object ）+geom_fruit（...）），或者使用layout_rectangular（）函数将环形布局树转换为矩形布局树，如图10.3所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/78383872fa0ec7960acadb8bbfab1fb9619ca7919a94ebbb1556e2e3b03bc178.jpg)



图10.3 对矩形布局的树使用geom_fruit（）图层函数的示例


本图是通过将图10.2转换为矩形布局生成的。我们同样可以将矩形布局的树转换为环形布局的树。

## 10.4 群体遗传学示例

ggtree包［1］和ggtreeExtra包在设计之初是作为通用工具被应用于许多研究领域的，如传染病流行病学、宏基因组学、群体遗传学、进化生物学和生态学。在此之前，我们已经介绍了在宏基因组研究中使用ggtreeExtra包的示例（见图10.1和图10.2）。本节通过对本章参考文献［5］中的图4及本章参考文献［6］中的图1进行复现，展示ggtreeExtra包在群体遗传学中的应用。

```r
library(ggtree)
library(ggtreeExtra)
library(ggplot2)
library(ggnewscale)
library(reshape2)
library(dplyr)
library(tidytree)
library(ggstar)
library(TDbook)
# 从 TD 包中加载 tr 数据和 dat 数据
dat <- df_Candidaauris_data
tr <- tree_Candidaauris
countries <- c("Canada", "United States",
    "Colombia", "Panama",
    "Venezuela", "France",
    "Germany", "Spain",
    "UK", "India",
    "Israel", "Pakistan",
    "Saudi Arabia", "United Arab Emirates",
    "Kenya", "South Africa",
    "Japan", "South Korea",
    "Australia") # For the tip points
dat1 <- dat %>% select(c("ID", "COUNTRY", "COUNTRY__colour"))
dat1$COUNTRY <- factor(dat1$COUNTRY, levels=countries)
COUNTRYcolors <- dat1[match(countries,dat$COUNTRY),"COUNTRY__colour"]
# 绘制热图图层
dat2 <- dat %>% select(c("ID", "FCZ", "AMB", "MCF"))
dat2 <- melt(dat2,id="ID", variable.name="Antifungal", value.name="type")
dat2$type <- paste(dat2$Antifungal, dat2 tariffs)
```

```r
dat2\(type\) [grepl("Not_", dat2\(type\))] = "Susceptible"
dat2\(Antifungal <- factor(dat2\(Antifungal, levels=c("FCZ", "AMB", "MCF"))
dat2\(type <- factor(dat2\(type,\)
levels=c("FCZ Resistant",
"AMB Resistant",
"MCF Resistant",
"Susceptible")) 
```

```r
dat3 <- dat %>% select(c("ID", "ERG11", "FKS1")) %>%
melt(id="ID", variable.name="point", value.name="mutation")
dat3$mutation <- paste(dat3$point, dat3$mutation)
dat3$mutation[grepl("WT", dat3$mutation)] <- NA
dat3$mutation <- factor(dat3$mutation,
levels=c("ERG11 Y132F", "ERG11 K143R",
"ERG11 F126L", "FKS1 S639Y/P/F")) 
```


#设置进化枝分组信息


```r
dat4 <- dat %>% select(c("ID", "CLADE"))
dat4 <- aggregate(.~CLADE, dat4, FUN=paste, collapse=",")
clades <- lapply(dat4$ID, function(x){unlist(strsplit(x, split=","))})
names(clades) <- dat4$CLADE
tr <- groupOTU(tr, clades, "Clade")
Clade <- NULL
p <- ggtree(tr=tr, layout="fan", open.angle=15, size=0.2,
    aes(colour= Clade)) +
    scale_colour_manual(
    values=c("black","#69B920","#9C2E88","#F74B00","#60C3DB"),
    labels=c("", "I", "II", "III", "IV"),
    guide=guide_legend(keywidth=0.5,
    keyheight=0.5,
    order=1,
    override.aes=list(linetype=c("0"=NA,
    "Clade1"=1,
    "Clade2"=1,
    "Clade3"=1,
    "Clade4"=1
    )
    )
    )
    )
    + 
    new_scale_colour() 
```

```r
p1 <- p %<+% dat1 +
    geom_tippoint(aes(colour=COUNTRY),
    alpha=0) +
    geom_tiplab(aes(colour=COUNTRY),
    align=TRUE,
    linetype=3,
    size=1,
    linesize=0.2,
    show.legend=FALSE
    ) +
    scale_colour_manual(
    name="Country labels",
    values=COUNTRYcolors,
    guide=guide_legend(keywidth=0.5,
    keyheight=0.5,
    order=2,
    override.aes=list(size=2,alpha=1))
    )
p2 <- p1 +
    geom_fruit(
    data=dat2,
    geom=geom_tile,
    mapping=aes(x=Antifungal, y=ID, fill=type),
    width=0.1,
    color="white",
    pwidth=0.1,
    offset=0.15
    ) +
    scale_fill_manual(
    name="Antifungal susceptibility",
    values=c("#595959", "#B30000", "#020099", "#E6E6E6"),
    na.translate=FALSE,
    guide=guide_legend(keywidth=0.5,
    keyheight=0.5,
    order=3
    )
    ) +
    new_scale_fill()
p3 <- p2 +
    geom_fruit( 
```

```python
data=dat3,
geom=geom_star,
mapping=aes(x=mutation, y=ID, fill=mutation, starshape=point),
size=1,
starstroke=0,
pwidth=0.1,
inherit.aes = FALSE,
grid.params=list(
    linetype=3,
    size=0.2
)

)+ 
scale_fill_manual(
    name="Point mutations",
    values=c("#329901", "#0600FF", "#FF0100", "#9900CC"),
    guide=guide_legend(keywidth=0.5, keyheight=0.5, order=4,
    override.aes=list(
    starshape=c("ERG11 Y132F"=15,
    "ERG11 K143R"=15,
    "ERG11 F126L"=15,
    "FKS1 S639Y/P/F"=1),
    size=2)
    ),
    na.translate=FALSE,
) +
scale_starshape_manual(
    values=c(15, 1),
    guide="none"
) +
theme(
    legend.background=element_rect(fill=NA),
    legend.title=element_text(size=7),
    legend.text=element_text(size=5.5),
    legend.spacing.y = unit(0.02, "cm")
) 
```

本示例通过使用不同的颜色呈现不同的进化枝来对进化树进行注释 ， 如 图 10.4 所 示 。 外 圈 的 热 图 显 示 了 耳 念 珠 菌 对 氟 康 唑（FluConaZole，FCZ）、两性霉素B（AMphotericin B，AMB）及米卡芬净（MiCaFungin，MCF）的敏感性。外圈的点图显示了羊毛甾醇14-α-脱甲 基 酶 ERG11 （ Y132F 、 K143R 和 F126L ） 和 β-1 ， 3-D- 葡 聚 糖 合 酶FKS1（S639Y/P/F）中与抗药性相关的点突变［5］。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/66fffe812b5ed4491518fa415e8220215be25477df2c09ac1a4bf6f3b9147220.jpg)



图10.4 耳念珠菌对抗真菌药物的敏感性及其药物靶点上的点突变


```r
library(ggtreeExtra)
library(ggtree)
library(ggplot2)
library(ggnewscale)
library(treeio)
library(tidytree)
library(dplyr)
library(ggstar)
library(TDbook)
# 从 TDbook 中加载 tree_NJIDqgsS 数据和 df_NJIDqgsS 数据
tr <- tree_NJIDqgsS
metada <- df_NJIDqgsS
metadata <- metada %>% 
    select(c("id", "country", "country__colour",
```

```r
"year", "year__colour", "haplotype"))
metadata$haplotype[nchar(metadata$haplotype) == 0] <- NA
countrycolors <- metada %>% 
    select(c("country", "country__colour")) %>%
    distinct()

yearcolors <- metada %>%
    select(c("year", "year__colour")) %>%
    distinct()

yearcolors <- yearcolors[order(yearcolors$year, decreasing=TRUE),]
metadata$country <- factor(metadata$country, levels=countrycolors$country)
metadata$year <- factor(metadata$year, levels=yearcolors$year)
p <- ggtree(tr, layout="fan", open.angle=15, size=0.1)
p <- p %<+% metadata
p1 <-p +
    geom_tippoint(
    mapping=aes(colour=country),
    size=1.5,
    stroke=0,
    alpha=0.4
    ) +
    scale_colour_manual(
    name="Country",
    values=countrycolors$country__colour,
    guide=guide_legend(keywidth=0.3,
    keyheight=0.3,
    ncol=2,
    override.aes=list(size=2,alpha=1),
    order=1)
    ) +
    theme(
    legend.title=element_text(size=5),
    legend.text=element_text(size=4),
    legend.spacing.y = unit(0.02, "cm")
    )
p2 <-p1 +
    geom_fruit(
    geom=geom_star,
    mapping=aes(fill=haplotype),
    starshape=26,
    color=NA, 
```

```txt
size=2,
starstroke=0,
offset=0,
) +
scale_fill_manual(
    name="Haplotype",
    values=c("red"),
    guide=guide_legend(
    keywidth=0.3,
    keyheight=0.3,
    order=3
    ),
    na.translate=FALSE
)
p3 <-p2 +
new_scale_fill() +
geom_fruit(
    geom=geom_tile,
    mapping=aes (fill=year),
    width=0.002,
    offset=0.1
) +
scale_fill_manual(
    name="Year",
    values=yearcolors$year__colour,
    guide=guide_legend(keywidth=0.3, keyheight=0.3, ncol=2, order=2)
) +
theme(
    legend.title=element_text(size=6),
    legend.text=element_text(size=4.5),
    legend.spacing.y = unit(0.02, "cm")
)
p3 
```

图10.5呈现了一个由22145个SNPs［6］推断出的伤寒沙门菌的最大似然有根树。其中叶节点的颜色表示分离株的发源地，红色符号点表示H58世系的单倍型，外圈热图的颜色表示菌株分离的年份［6］。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/2cbca29b018b3d81e5d5a965664c22abaeff72676215df79edda88e1d17bb675.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/1af9d6192d0982b46c47e7d24cdd83423f31df0b5b4b5984335babf08222f5a3.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/3cfb46505db716c661963365709b478cfa71b58fb7770f6767d519a3faec078d.jpg)



图10.5 1832株伤寒沙门菌分离株的种群结构


## 10.5 总结

与geom_facet（）图层函数相比，ggtreeExtra中提供的geom_fruit（）图层函数是本章参考文献［2］中提出的第二种方法的更好实现。geom_facet（）图层函数和geom_fruit（）图层函数具有相同的设计理念和相似的用户接口。它们都需要依靠其他几何对象图层来对树相关数据进行可视化。这些图层是由ggplot2包及其扩展包（包括ggtree）提供的，随着ggplot2社区中的图层变得越来越多，geom_facet（）图层函数和geom_fruit（）图层函数所能呈现的数据及图形的类型也会增加。

## 10.6 本章练习题

1.通过help（geom_fruit）阅读geom_fruit的文档说明与示例，总结出使用geom_fruit（）图层函数来联合外部图层的伪代码。

2.使用以下示例数据，尝试使用ggtreeExtra的geom_fruitt（）图层函数联合ggplot2中的geom_col（）图层函数为系统发育树外部添加柱状图。

```r
library(TDbook)
data(tree_hmptree)
data(df_barplot_attr) 
```

3.当不同图层之间有多个fill属性应用时，使用什么解决方案来区分不同图层的fill图例？

4.在使用geom_fruit（）图层函数时，通过哪些方式可以将外部图层的数据可视化到系统发育树上？

## 参考文献



［ 1 ］ Yu G ， Smith D K ， Zhu H ， et al.ggtree ： an R package for visualization and annotation of phylogenetic trees with their covariates and other associated data ［ J ］ .Methods in Ecology and Evolution ， 2016 ， 8（1）：28-36. 





［2］Yu G，Lam T T，Zhu H，et al.Two methods for mapping and visualizing associated data on phylogeny using ggtree［J］.Mol Biol Evol， 2018，35（12）：3041-3043. 





［ 3 ］ Morgan X C ， Segata N ， Huttenhower C.Biodiversity and functional genomics in the human microbiome［J］.Trends Genet，2013， 29（1）：51-58. 





［ 4 ］ Asnicar F ， Weingart G ， Tickle T L ， et al.Compact graphical representation of phylogenetic data and metadata with GraPhlAn［J］.PeerJ， 2015，3：e1029. 





［5］Chow N A，Munoz J F，Gade L，et al.Tracing the evolutionary history and global expansion of candida auris using population genomic analyses［J］.mBio，2020，11（2）. 





［ 6 ］ Wong V K ， Baker S ， Pickard D J ， et al.Phylogeographical analysis of the dominant multidrugresistant H58 clade of Salmonella Typhi identifies inter- and intracontinental transmission events ［ J ］ .Nat Genet ， 2015，47（6）：632-639. 



## 第11章 其他ggtree扩展包

ggtree是用于对树结构和相关数据进行可视化的通用包。如果ggtree包不支持用户的某些特殊需求，则可以借助一些基于ggtree构建的拓展包。例如，用于对RevBayes输出结果进行可视化的RevGadgets包、对系统发育通路中固定事件进行可视化的sitePath包及用于对富集通路的层次结构进行可视化的Enrichplot包。

```r
rp <- BiocManager::repositories()
db <- utils::available.packages(repo=rp)
x <- tools::package_dependencies('ggtree', db=db,
    which = c("Depends", "Imports"),
    reverse=TRUE)
print(x) 
```

```txt
## $ggtree
## [1] "enrichplot" "ggtreeExtra"
## [3] "LymphoSeq" "miaViz"
## [5] "microbiomeMarker" "MicrobiotaProcess"
## [7] "philr" "singleCellTK"
## [9] "sitePath" "systemPipeTools"
## [11] "tangle" "treekoR" 
```

CRAN或Bioconductor共有12个依赖（depend on）或导入（import）ggtree的包，GitHub中也有一些ggtree的扩展包。我们在这里对一些扩展包进行简单的介绍，如MicrobiotaProcess包和tangle包。

## 11.1 使用MicrobiotaProcess包进行分类学注释

MicrobiotaProcess包提供了一种类似LEfSe［1］的算法，通过比较不同类之间的分类单元丰度来发现微生物组的生物标志物。它提供了多种对分析结果进行可视化的方法。其中ggdiffcalde是基于ggtree［2］开发的。除了支持输入diff_analysis（）的结果，它还支持输入一个包含层级关系（如分类学注释或KEGG注释）的数据框，以及一个包含分类单元和因子信息或pvalue的数据框。下面的示例演示了如何使用数据框（分析结果）对存在差异的分类树进行注释。

本示例中使用的数据框是使用diff_analysis（）处理公共数据集［3］得到的分析结果。我们通过设置colors参数将富集于相关类群中的不同特征以不同的颜色呈现。圆点的大小表示-log10（pvalue），即点越大颜色就越显著。从图11.1中我们可以发现，梭杆菌属（Fusobacterium）序列在癌中富集，而厚壁菌门（Firmicutes）、拟杆菌属（Bacteroides）和梭菌纲（Clostridiales）在肿瘤中减少。这些结果与本章参考文献［3］中的结论保持一致。同时，弯曲杆菌属（Campylobacter）已被证实与结直肠癌（Colorectal Cancer）有关［4-6］。弯曲杆菌确实在肿瘤中存在富集，尽管其相对丰度要低于梭杆菌。

```r
library(MicrobiotaProcess)
library(ggplot2)
library(TDbook)

# 从 TDbook 中加载 df_difftax 数据和 df_difftax_info 数据
taxa <- df_alltax_info
dt <- df_difftax

ggdiffclade(obj=taxa,
    nodedf=dt,
    factorName="DIAGNOSIS",
    layout="radial",
    skpointsize=0.6,
    cladetext=2,
    linewd=0.2,
    taxlevel=3,
    # 这个参数主要用于移除未知的分类
```

```r
reduce=TRUE) +
scale_fill_manual(values=c("#00AED7", "#009E73"))+
guides(color = guide_legend(keywidth = 0.1, keyheight = 0.6, order = 3, ncol=1)) +
theme(panel.background=element_rect(fill=NA),
legend.position="right",
plot.margin=margin(0,0,0,0),
legend.spacing.y=unit(0.02, "cm"),
legend.title=element_text(size=7.5),
legend.text=element_text(size=5.5),
legend.box.spacing=unit(0.02,"cm")
) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/f56e0e1a0de1ea95a192153efe07e66b1399c40aec7878dfe97e3edc1b47e5d5.jpg)



图11.1 对存在差异的分类进化枝进行可视化


-log10(pvalue) 

5 label 

a:c_Clostridia 

b:c_Fusobacteria (class) 

C:CBetaproteobacteria 

d:c_Epsilonproteobacteria 

e0_Coriobacteriales 

f:o_Clostridiales 

g：o_Fusobacteriales 

h: o__Burkholderiales 

i o__Campylobacterales 

j:f_Coriobacteriaceae 

k:f_Bacteroidaceae 

1:f_Rikenellaceae 

m:f_Lachnospiraceae 

n:f_Ruminococcaceae 

o：fFusobacteriaceae 

p:f__Alcaligenaceae 

q:f__Campylobacteraceae 

r:g_Collinsella 

s:gBacteroides_f_Bacteroidaceae 

tgParabacteroides 

u:g_Faecalibacterium 

v:g_Fusobacterium 

wg_Sutterella 

xg_Campylobacter 

## DIAGNOSIS

. Healthy 

. Tumor 

## 11.2 使用tanggle包可视化系统发育网络图

tanggle包提供了一些能绘制分裂网络图（split network）的函数，通过扩展ggtree包［2］实现了对系统发育网络的可视化。下面使用tanggle包绘制系统发育网络图，如图11.2所示。

```r
library(ggplot2)
library(ggtree)
library(tangle)

file <- system.file("extdata/trees/woodmouse.nxs", package = "phangorn")
Nnet <- phangorn::read.nexus.networx(file)

ggsplitnet(Nnet) +
    geom_tiplab2(aes(color=label), hjust=-.1) +
    geom_nodepoint(color='firebrick', alpha=.4) +
    scale_color_manual(values=rainbow(15)) +
    theme(legend.position="none") +
    ggexpand(.1) + ggexpand(.1, direction=-1) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/eaf9ee331a387329407751767b0143a8c5eb5198d7b76965d0f4923170c7c73a.jpg)



图11.2 系统发育网络图


## 11.3 总结

ggtree包旨在通过对图形语法的支持，帮助用户通过可视化对系统发育数据进行探索。当ggtree包无法满足用户的特殊需求时，可以基于ggtree开发相关的拓展包来实现这些缺失的功能，这是一种非常好的解决方法。我们也希望ggtree用户能聚集成为一个ggtree社区，这样就能针对各种特殊需求开发对应的功能，并在用户之间共享。这样，每个用户都将从中获益。

## 11.4 本章练习题

尝 试 使 用 书 中 的 代 码 查 看 目 前 在 CRAN 及 Bioconductor 上 依 赖（depend on）或导入（import）ggtree的包，并简述它们的主要应用领域。

## 参考文献



［ 1 ］ Segata N ， Izard J ， Waldron L ， et al.Metagenomic biomarker discovery and explanation［J］.Genome Biol，2011，12（6）：R60. 





［ 2 ］ Yu G ， Smith D K ， Zhu H ， et al.ggtree ： an R package for visualization and annotation of phylogenetic trees with their covariates and other associated data ［ J ］ .Methods in Ecology and Evolution ， 2016 ， 8（1）：28-36. 





［3］Kostic A D，Gevers D，Pedamallu C S，et al.Genomic analysis identifies association of Fusobacterium with colorectal carcinoma［J］.Genome Res，2012，22（2）：292-298. 





［ 4 ］ Amer A ， Galvin S ， Healy C M ， et al.The microbiome of potentially malignant oral leukoplakia exhibits enrichment for fusobacterium， leptotrichia ， campylobacter ， and rothia species ［ J ］ .Front Microbiol ， 2017，8：2391. 





［5］He Z，Gharaibeh R Z，Newsome R C，et al.Campylobacter jejuni promotes colorectal tumorigenesis through the action of cytolethal distending toxin［J］.Gut，2019，68（2）：289-300. 





［ 6 ］ Wu N ， Yang X ， Zhang R ， et al.Dysbiosis signature of fecal microbiota in colorectal cancer patients ［ J ］ .Microb Ecol ， 2013 ， 66（2）：462-470. 



# 第4篇 杂项

## 第12章 ggtree包中的实用工具

## 12.1 分面相关实用工具

## 12.1.1 facet_widths（ 函数

我们经常会遇到需要调整分面面板相对宽度的情况，特别是在使用geom_facet（）图层函数对含有关联数据的树进行可视化时，但是ggplot2包并不支持此功能，而ggtree包中facet_widths（）函数可用于解决这个问题。对于ggtree对象和ggplot对象，我们都可以使用facet_widths（）函数来调整分面面板的相对宽度。

```r
library(ggplot2)
library(ggtree)
library(reshape2)

set.seed(123)
tree <- rtree(30)

p <- ggtree(tree, branch.length = "none") +
geom_tiplab() + theme(legend.position='none')

a <- runif(30, 0,1)
b <- 1 - a
df <- data.frame(tree$tip.label, a, b)
df <- melt(df, id = "tree.tip.label")

p2 <- p + geom_facet(panel = 'bar', data = df, geom = geom_bar,
    mapping = aes(x = value, fill = as.factor(variable)),
    orientation = 'y', width = 0.8, stat='identity') +
    xlim_tree(9) 
```

```python
facet_widths(p2, widths = c(1, 2)) 
```

facet_widths（）函数还可以使用名称向量来指定面板以调整宽度。运行以下代码的结果如图12.1A所示。

```python
facet_widths(p2, c(Tree = .5)) 
```

facet_widths（）函数也适用于其他ggplot对象，如图12.1B所示。

```txt
p <- ggplot(iris, aes(Sepal.Width, Petal.Length)) + geom_point() + facet_grid(.~Species)
facet_widths(p, c(setosa = .5)) 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/47b4c7c160b67cdd3dc4a57ce6f3c0a7d029f83e73c2a041c4aafbb534e7a54b.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/b192e8b2ef555e74455e1723099029cc927a5043261b6eba321cec34b3a3e692.jpg)



图12.1 调整ggplot分面的相对宽度



facet_widths（）函数适用于ggtree（A）对象及ggplot（B）对象。


## 12.1.2 facet_labeller（）函数

facet_labeller（）函数是为更改选定面板标签而设计的，如图12.2所示，但它目前仅适用于ggtree对象（geom_facet（）图层函数的输出）。而ggfun包中实现了一个更为通用的版本（facet_set（）函数），可同时适用于ggtree对象及ggplot对象。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/68ac21a9e2d2a13eaa959db7dfbf1c20dea4a8cef7d5e65d29fe9b541b14c55e.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/c5c949fb38d8deeb87e31f2642b327ef0e7c23ef30f409e79cfd00fb6d7724e5.jpg)



图12.2 重命名分面面板标签


同时对多个分面面板标签重命名（A）或仅对特定的分面面板标签重命名（B）。facet_labeller（）函数可与facet_widths（）函数联合起来使用，先重命名分面标签，再调整每个面板的相对宽度（B）。

如果想要将facet_widths（）函数与facet_labeller（）函数联合起来使用 ， 则 需 要 先 调 用 facet_labeller （ ） 函 数 更 改 面 板 标 签 ， 再 使 用facet_widths（）函数设置每个面板的相对宽度。否则，其将无法生效，这是因为facet_widths（）函数的输出是通过grid对象重新绘制的。

## 12.2 几何对象图层

在ggplot2包中定义的图层并不支持取子集的操作。但这个功能在对系统发育树的注释中非常有用，因为它允许我们对特定的节点进行注释（如仅为自举值大于75的节点添加标签）。

ggtree包提供了一些ggplot2图层的修改版本，用于支持subset美学映射属性，其中包括geom_segment2（）图层函数、geom_point2（）图层函数、geom_text2（）图层函数和geom_label2（）图层函数。

这些图层函数同时适用于ggtree对象及ggplot对象，如图12.3所示。

```r
library(ggplot2)
library(ggtree)
data(mpg)
p <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = class)) +
    geom_text2(aes(label=manufacturer,
    subset = hwy > 40 | displ > 6.5),
    nudge_y = 1) +
    coord_cartesian(clip = "off") +
    theme_light() +
    theme(legend.position = c(.85, .75))
p2 <- ggtree(rtree(10)) +
geom_label2(aes(subset = node <5, label = label))
plot_list(p, p2, ncol=2, tag_levels='A') 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/db14eb46973926bb19767bf6f647da5d48a3cf79aa7daedc241950f0ed23df85.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/c7e93d1fed852ab3492c9addc547497b2d864f50029f2d6eca4e21964cd24a76.jpg)



图12.3 支持取子集的几何对象图层


我们可以在ggplot2（A）对象和ggtree（B）对象中使用这些图层。

## 12.3 布局相关工具

4.2小节介绍了ggtree包支持的几种布局。除此之外，ggtree包还额外提供了几种布局函数，可以将一种布局转换为另一种布局。需要注意的是，并非所有布局都能被转换。表12.1所示为布局转换函数及其说明。


表12.1 布局转换函数及其说明


<table><tr><td>布局函数名称</td><td>说明</td></tr><tr><td>layout_circular()</td><td>将直角矩形布局转换为环形布局</td></tr><tr><td>layout_dendrogram()</td><td>将直角矩形布局转换为树状图布局</td></tr><tr><td>layout_fan()</td><td>将直角矩形布局 / 环形布局转换为扇形布局</td></tr><tr><td>layout_rectangular()</td><td>将环形布局 / 扇形布局转换为直角矩形布局</td></tr><tr><td>layout_inward_circular()</td><td>将直角矩形布局 / 环形布局转换为内向环形布局</td></tr></table>

```r
set.seed(2019)
x <- rtree(20)
p <- ggtree(x)
p + layout_dendrogram()
ggtree(x, layout = "circular") + layout_rectangleular()
p + layout_circular() 
```

```python
p + layout_fan(angle=90)
p + layout_inward_circular(xlim=4) + geom_tiplab(hjust=1) 
```

图12.4所示为使用不同布局函数转换的图形效果。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/d13c777dc6fb697eb8c32d3e6275e3cce11dc64acc9d01c5787231a85fe3baf4.jpg)



图12.4 使用不同布局函数转换的图形效果


默认的直角矩形布局（A）；将直角矩形布局转换为树状图布局（B）；将环形布局转换为直角矩形布局（C）；将直角矩形布局转换为环形布局（D）；将直角矩形布局转换为扇形布局（E）；将直角矩形布局转换为内向环形布局（F）。

## 12.4 标尺相关工具

ggtree包中的多个标尺函数用于操作x轴，包括scale_x_range（）函数、xlim_tree（）函数、xlim_expand（）函数、ggexpand（）函数、hexpand（）函数和vexpand（）函数。

## 12.4.1 扩大指定面板的x轴范围

有时用户需要为指定的面板设定xlim（x轴范围）（例如，在Tree面板上为长叶节点标签分配更多空间）。ggplot2：：xlim（）函数可用于自动调节所有面板的xlim，但是给我们带来了一些不便。而ggtree包中的xlim_expand（）函数则可只用于调整用户指定面板的xlim，并且接收xlim和panel两个参数，对所有的独立面板进行调整，如图12.5A所示。如果只想调整Tree面板中的xlim，则可以直接使用xlim_tree（）函数。

```r
set.seed(2019-05-02)
x <- rtree(30)
p <- ggtree(x) + geom_tiplab()
d <- data.frame(label = x$tip.label,
    value = rnorm(30))
p2 <- p + geom_facet(panel = "Dot", data = d,
    geom = geom_point, mapping = aes(x = value))
p2 + xlim_tree(6) + xlim_expand(c(-10, 10), 'Dot') 
```

xlim_expand（）函数也适用于ggplot2：：facet_grid（）函数。在下面示例中，使用xlim_expand（）函数仅调整了virginica面板的xlim，如图12.5B所示。

```r
g <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
    geom_point() + facet_grid(. ~ Species, scales = "free_x")
g + xlim_expand(c(0, 15), 'virginica') 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/01f5059b89e2978bb3cfd8a90f9db8c5d64ad2655f64df7fe0f5d3d2940114a9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/d40defb13e6f76fe3fb7aff3544a5f93e5c05d8ddb6583aa8335a4b8b06dbcf1.jpg)



图12.5 为用户指定的面板设置x轴范围



使用xlim_tree（）函数设置ggtree包输出的Tree面板的xlim（A）；使用xlim_expand（）函数设置ggtree包输出的Dot面板的xlim（A），以及ggplot包输出的virginica面板的xlim（B）。


## 12.4.2 按一定比例扩大绘图边界

ggplot2包并不能用于自动调整绘图边界，这使得在对长文本进行可视化时总会出现文本被截断的现象。用户需要通过xlim（）函数（或ylim（）函数）来手动调节x轴（或y轴）的范围。

利用xlim（）函数（或ylim（）函数）确实能解决调节x轴（或y轴）范围的问题，但我们可以让这个操作变得更加简单。我们可以直接按坐标轴范围的比例放大绘图面板，这样即使不知道x轴、y轴范围的确切值也能实现这个效果。

为此hexpand（）函数可用于对x轴进行指定比例的延伸，并支持对延伸方向的选择（当direction参数的值为1时，向右侧延伸x轴；当direction参数的值为-1时，向左侧延伸x轴），如图12.6所示。ggtree包还提供了原理类似的，可对y轴进行延伸的vexpand（）函数，以及同时作用于x轴和y轴的ggexpand（）函数。

```r
x$tip.label <- paste0('to make the label longer_', x$tip.label)
p1 <- ggtree(x) + geom_tiplab() + hexpand(.3)
p2 <- ggplot(iris, aes(Sepal.Width, Petal.Width)) +
    geom_point() +
    hexpand(.2, direction = -1) +
    vexpand(.2)

plot_list(p1, p2, tag_levels="A", widths=c(.6, .4)) 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/ada4ea7f9c2ebe73833ba83e88a7fd22017711c324bfa6710415c8e5ffbbddf2.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/734bfeae4d95b25226bf7ae5fa300db1a229e2aa18969b89c2778ca1156eee09.jpg)



图12.6 通过对x轴或y轴进行一定比例的延伸来拓宽绘图边界


在默认情况下，会向右侧延伸x轴（A）；当direction参数的值为-1时，会向左侧延伸x轴。向上延伸y轴（B）。

## 12.5 树数据相关工具

## 12.5.1 筛选树数据

ggtree包定义了几个支持对树数据取子集的几何对象图层，但ggplot2包及其扩展包中许多图层并不提供此功能。为了让用户在使用这些图层时也能做到对数据进行筛选，ggtree包中的td_filter（）函数用于返回一个作用类似于dplyr：：filter（）的函数，并能直接传入几何对象图层中的data参数，以筛选ggtree绘图数据，如图12.7所示。

```r
library(tidytree)
set.seed(1997)
tree <- rtree(50)
p <- ggtree(tree)
selected_nodes <- offspring(p, 67)$node
p + geom_text(aes(label=label),
    data=td_filter(isTip &
    node %in% selected_nodes),
    hjust=0) +
    geom_nodepoint(aes(subset = node ==67),
    size=5, color='blue') 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/96c529dd5e248b65649b35fe5a5f89728fd14b4b230c2ccb178a47505bce98ae.jpg)


图12.7 在几何对象图层中筛选ggtree绘图数据

仅对选定的叶节点添加标签（图中蓝色节点的后代）。

## 12.5.2 展开嵌套的树数据

ggtree绘图数据是一个整洁数据框，其中每一行表示一个唯一的节点。如果多个值与同一个节点相关联，则这些数据将被存储为嵌套数据［存储于列表列（list-column）中］。

```r
set.seed(1997)
tr <- rtree(5)
d <- data.frame(id = rep(tr$tip.label, 2),
    value = abs(rnorm(10, 6, 2)),
    group = c(rep("A", 5), rep("B", 5)))
require(tidyr)
d2 <- nest(d, value = value, group=group)
## d2为嵌套数据
d2
```

```markdown
## # A tibble: 5 × 3
## id value group
## <chr> <list> <list>
## 1 t2 <tibble [2 × 1]> <tibble [2 × 1]>
## 2 t1 <tibble [2 × 1]> <tibble [2 × 1]>
## 3 t5 <tibble [2 × 1]> <tibble [2 × 1]>
## 4 t4 <tibble [2 × 1]> <tibble [2 × 1]>
## 5 t3 <tibble [2 × 1]> <tibble [2 × 1]> 
```

我们可以通过“％＜+％”操作符将嵌套数据映射到树结构上。如果几何对象图层不能对嵌套数据进行可视化，就需要在数据应用于几何对象图层前展开嵌套数据。ggtree包中的td_unnest（）函数的功能与tidyr：：unnest（）函数的功能类似，可用于展开嵌套的ggtree绘图数据，如图12.8A所示。

所有的树数据相关工具都提供一个“.f”参数，用于传入一个可对数据进行预处理的函数。这使得我们可以组合多个树数据工具，如图12.8B所示。

```r
p <- ggtree(tr) %<+% d2
p2 <- p +
geom_point(aes(x, y, size=value, colour=group),
data = td_unnest(c(value, group)), alpha=.4) + scale_size(range=c(3,10), limits=c(3, 10)) 
```

```r
p3 <- p +
geom_point(aes(x, y, size=value, colour=group),
data = td_unnest(c(value, group),
.f = td_filter(isTip & node==4)),
alpha=.4) +
scale_size(range=c(3,10), limits=c(3, 10))
plot_list(p2, p3, tag_levels = 'A') 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/7c1b077b860922949bd5dd70d9dbf96223f667ee88cc51bd264b68ff17ae9449.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/fb3d9b0945cff33e9289a78db27392e13b2b0c83c94461f29900478d6f411e06.jpg)



图12.8 展开嵌套的ggtree绘图数据


列表列可以通过td_unnest（）函数展开，并在叶节点处将其中的数据以两个圆点的形式同时绘制出来（A）。我们可以组合使用不同的树数据相关工具（如先通过td_filter（）函数筛选数据，再通过td_unnest（）函数将其展开）（B）。

## 12.6 树相关工具

## 12.6.1 提取叶节点顺序

在生成复合图（参见7.5小节）时，用户需要在绘制与树相关联的图之前手动对其中的数据进行重新排序，使数据顺序与利用ggtree（）函数绘制的树结构显示的叶节点顺序保持一致。为此，ggtree包提供了get_taxa_name（）函数，通过该函数能提取一个叶节点向量，且该向量的数据顺序与使用ggtree（）函数绘制的树结构显示的数据顺序保持一致。下面示例演示了get_taxa_name（）函数的功能，如图12.9所示。

```r
set.seed(123)
tree <- rtree(10)
p <- ggtree(tree) + geom_tiplab() +
geom_hilight(node = 12, extendto = 2.5)

x <- paste("Taxa order:", paste0(get_taxa_name(p), collapse=', '))
p + labs(title=x) 
```

Taxa order: t9, t8, t3, t2,t7,t10,t1, t5, t6, t4 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/fea4f95032a8839bb2dd5d0f2762e1ca2374b6651bfc1e29f58217409be393ae.jpg)



图12.9 演示get_taxa_name（）函数功能的示例


利用get_taxa_name（）函数将图12.9中显示的树结构返回以此结构排序的叶节点标签向量。

```txt
get_taxa_name(p)
## [1] "t9" "t8" "t3" "t2" "t7" "t10" "t1" "t5"
## [9] "t6" "t4" 
```

如果用户指定一个节点，则可利用get_taxa_name（）函数提取所选进化枝对应的叶节点顺序（图12.9中突出显示的区域）。

```txt
get_taxa_name(p, node = 12)
## [1] "t5" "t6" "t4" 
```

## 12.6.2 在分类单元标签前添加填充字符

我们可以使用label_pad（）函数在分类单元标签前添加填充字符（默认为“·”）。

```r
set.seed(2015-12-21)
tree <- rtree(5)
tree$tip.label[2] <- "long string for test"
d <- data.frame(label = tree$tip.label,
    newlabel = label_pad(tree$tip.label),
    newlabel2 = label_pad(tree$tip.label, pad = " ")
print(d) 
```

```txt
##    label    newlabel
## 1    t1 ....t1
## 2 long string for test long string for test
## 3    t2 ....t2
## 4    t4 ....t4
## 5    t3 ....t3
##    newlabel2
## 1    t1
## 2 long string for test
## 3    t2
## 4    t4
## 5    t3 
```

这个功能在将叶节点标签于末端对齐时非常有用，如图12.10所示。需要注意的是，这时我们应该使用等宽字体以确保图中显示的标签长度相同。

```r
p <- ggtree(tree) %<+% d + xlim(NA, 5)
p1 <- p + geom_tiplab(aes(label=newlabel),
    align=TRUE, family='mono',
    linetype = "dotted", linesize = .7)
p2 <- p + geom_tiplab(aes(label=newlabel2),
    align=TRUE, family='mono',
    linetype = NULL, offset=-.5) + xlim(NA, 5) 
```

```txt
plot_list(p1, p2, ncol=2, tag_levels = "A") 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/829e21273c34ed588c5ea55184385420c9c92ae1016cdf78b01948cffef796a6.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/baa0c08960184e55190b01c9906c7ce7406c5ab64df453831d96f8fc35cbd049.jpg)



图12.10 将叶节点标签于末端对齐


带虚线的效果（A）和不带虚线的效果（B）。

## 12.7 交互式ggtree注释

ggtree包中的identify（）函数提供了对进化树进行交互式的注释或操作的支持。用户可以通过单击一个节点来对对应进化枝进行突出显示、添加标签或旋转操作。用户还可以使用plotly包将一个ggtree对象转换为一个plotly对象，以便快速创建交互式系统发育树。

在Youtube和优酷上可以找到使用identify（）函数进行交互式操作系统发育树的视频[1]。

## 12.8 本章练习题

1.如何改变分面面板的尺寸及标签，当两者联用时需要注意什么？

2.使用iris内置数据集绘出Petal.Length＞6和Sepal.Width＜3的子集的点图。

3.如何将ggtree（x）对象转换为环形布局、向内环形布局、扇形布局？

4.使用mpg数据集，并基于facet_grid（～class）进行分面，将2seater面板的xlim修改为1～10。

5.输入help（ggexpand），阅读相关帮助文档后回答ggexpand（）是做什么的？它又是如何工作的？

6.随机生成一棵树，并提取出其任意一个内部节点进化支的有序叶节点顺序（与ggtree生成的图一致）。

7.如何生成占位符，使得叶节点标签可以末端对齐？

## 第13章 可重复示例图库

## 13.1 绘制系统发育树与核苷酸序列之间的距离

本示例重现了本章参考文献［1］中的图1。我们从HPV58树的叶节点标签中提取出了序列索引号（accession number），并计算出两两核苷酸序列之间的距离，同时将距离矩阵可视化为点线图。如图13.1所示，本示 例 演 示 了 ggtree 包 在 特 定 面 板 中 添 加 多 个 图 层 的 功 能 。 使 用geom_facet（）图层函数可将序列距离以点图的形式呈现，并在同一个面板上添加一层线图。另外，使用geom_facet（）图层函数在另一个面板上绘制的进化树也可以通过多层注释图层（进化枝标签、自举值支持度等）实现进化树的完全注释。本示例中源代码是从本章参考文献［2］的补充文件中修改的。

```r
library(TDbook)
library(tibble)
library(tidyr)
library(Biostrings)
library(treeio)
library(ggplot2)
library(ggtree)

# 从 TDbook 包中加载数据
tree <- tree_HPV58

clade <- c(A3 = 92, A1 = 94, A2 = 108, B1 = 156,
    B2 = 159, C = 163, D1 = 173, D2 = 176)
tree <- groupClade(tree, clade)
cols <- c(A1 = "#EC762F", A2 = "#CA6629", A3 = "#894418", B1 = "#0923FA",
    B2 = "#020D87", C = "#000000", D1 = "#9ACD32", D2 = "#08630A")

## （可选）对树进行可视化，同时添加叶节点标签及标尺
```

```r
p <- ggtree(tree, aes(color = group), ladderize = FALSE) %>% rotate(rootnode(tree)) + geom_tiplab(aes(label = paste0("italic('", label, '')"), parse = TRUE, size = 2.5) + geom_treescale(x = 0, y = 1, width = 0.002) + scale_color_manual(values = c(cols, "black"), na.value = "black", name = "Lineage", breaks = c("A1", "A2", "A3", "B1", "B2", "C", "D1", "D2")) + guides(color = guide_legend(override.aes = list(size = 5, shape = 15)) + theme_tree2(legend.position = c(.1, .88)) ##（可选）添加单系群(A、C和D)标签及旁系群(B)标签 dat <- tibble(node = c(94, 108, 131, 92, 156, 159, 163, 173, 176,172), name = c("A1", "A2", "A3", "A", "B1", "B2", "C", "D1", "D2", "D"), offset = c(0.003, 0.003, 0.003, 0.00315, 0.003, 0.003, 0.0031, 0.003, 0.003, 0.00315), offset.text = c(-.001, -.001, -.001, 0.0002, -.001, -.001, 0.0002, -.001, -.001, 0.0002), barsize = c(1.2, 1.2, 1.2, 2, 1.2, 1.2, 3.2, 1.2, 1.2, 2), extend = list(c(0, 0.5), 0.5, c(0.5, 0), 0, c(0, 0.5), c(0.5, 0), 0, c(0, 0.5), c(0.5, 0), 0) %>% dplyr::group_split(barsize) p <- p + geom_cladelab(
    data = dat[[1]],
    mapping = aes(
    node = node,
    label = name,
    color = group,
    offset = offset,
    offset.text = offset.text,
    extend = extend
    ),
    barsize = 1.2,
    fontface = 3,
    align = TRUE
) +
geom_cladelab(
    data = dat[[2]],
    mapping = aes(
```

```txt
node = node,
label = name,
offset = offset,
offset.text = offset.text,
extend = extend
),
barcolor = "darkgrey",
textcolor = "darkgrey",
barsize = 2,
fontsize = 5,
fontface = 3,
align = TRUE
) +
geom_cladelab(
data = dat[[3]],
mapping = aes(
node = node,
label = name,
offset = offset,
offset.text = offset.text,
extend = extend
),
barcolor = "darkgrey",
textcolor = "darkgrey",
barsize = 3.2,
fontsize = 5,
fontface = 3,
align = TRUE
) +
geom_strip(65, 71, "italic(B)", color = "darkgrey",
offset = 0.00315, align = TRUE, offset.text = 0.0002,
barsize = 2, fontsize = 5, parse = TRUE) 
```

```txt
p <- p + geom_nodelab(aes(subset = (node == 92), label = "*"),
    color = "black", nudge_x = -.001, nudge_y = 1) +
geom_nodelab(aes(subset = (node == 155), label = "*"),
    color = "black", nudge_x = -.0003, nudge_y = -1) +
geom_nodelab(aes(subset = (node == 158), label = "95/92/1.00"),
    color = "black", nudge_x = -0.0001,
    nudge_y = -1, hjust = 1) +
geom_nodelab(aes(subset = (node == 162), label = "98/97/1.00"), 
```

```python
color = "black", nudge_x = -0.0001,  
nudge_y = -1, hjust = 1) +  
geom_nodelab(aes(subset = (node == 172), label = "*"),  
color = "black", nudge_x = -.0003, nudge_y = -1) 
```


##从叶节点标签中提取序列索引号


tl <- tree $tip.label$ acc <- sub("\\w+\\|", "", tl)
names(t1) <- acc

## 将 GeneBank 中的序列直接读入 R 中，并将其转换为 DNAStringSet 对象
tipseq <- ape::read.GenBank(acc) %>% as.character %>% 
    lapply(., paste0, collapse = "") %>% unlist %>% 
DNAStringSet
## 使用 muscle() 函数进行序列比对
tipseq_aln <- muscle::muscle(tipseq)
tipseq_aln <- DNAStringSet(tipseq_aln)

```r
## 计算两两序列之间的距离（Hamming Distance）
tipseq_dist <- stringDist(tipseq_aln, method = "hamming")

## 计算差异的百分比
tipseq_d <- as.matrix(tipseq_dist) / width(tipseq_aln[1]) * 100

## 将矩阵转换为整洁数据框，以在 facet_plot() 函数中使用
dd <- as_tibble(tipseq_d)
dd$seq1 <- rownames(tipseq_d)
td <- gather(dd, seq2, dist, -seq1)
td$seq1 <- tl[td$seq1]
td$seq2 <- tl[td$seq2]

g <- p$data$group
names(g) <- p$dataculated
td$clade <- g[td$seq2]

## 使用点图和线图的形式对序列差异进行可视化，
## 并使用 facet_plot() 函数对序列差异图与树进行对齐
p2 <- p + geom_facet(panel = "Sequence Distance",
    data = td, geom = geom_point, alpha = .6,
    mapping = aes(x = dist, color = clade, shape = clade)) +
    geom_facet(panel = "Sequence Distance",
```

```txt
data = td, geom = geom_path, alpha = .6,
mapping=aes(x = dist, group = seq2, color = clade)) + scale_shape_manual(values = 1:8, guide = FALSE)
print(p2) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/1cd42e3a24f9952c72da92b72364cfb2d960a799f1e8be32dd924eb853973a76.jpg)



图13.1 HPV58完整基因组的系统发育树，附加两两序列之间距离的点线图


## 13.2 以不同的符号点呈现自举值

我们可以通过将自举值划为不同的区间，来表示对该进化枝的支持度是高、中还是低，并将这些区间作为分类变量，以不同颜色或形状的符号点来表示对应节点的自举值属于哪一个区间，如图13.2所示。

```r
library(treeio)
library(ggplot2)
library(ggtree)
library(TDbook)

tree <- read.newick(text=text_RMI_tree, node.label = "support")
root <- rootnode(tree)
ggtree(tree, color="black", size=1.5, linetype=1, right=TRUE) +
geom_tiplab(size=4.5, hjust = -0.060, fontface="bold") + xlim(0, 0.09) +
geom_point2(aes(subset=!isTip & node != root,
    fill=cut(support, c(0, 700, 900, 1000)),
    shape=21, size=4) +
theme_tree(legend.position=c(0.2, 0.2)) +
scale_fill_manual(values=c("white", "grey", "black"), guide='legend',
    name='Bootstrap Percentage(BP)',
    breaks=c(('(900,1e+03]', '(700,900]', '(0,700)',
    labels=expression(BP>=90,70 <= BP * "< 90", BP < 70)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/f21ac2bd6888244be55c4718379706135154d4e3639ec7c9ed21f953dd1b6d8d.jpg)



图13.2 划分自举值


本示例将自举值分成3个区间，并依此对圆点进行着色。

## 13.3 突出显示不同分组

本示例对本章参考文献［3］中的图1进行了复现。我们先使用groupOTU（）函数添加鸡CTLDcps的分组信息，并根据这个分组信息定义分支的线条类型及颜色；再使用geom_hilight（）图层函数以不同的背景颜色突出显示两个分组的CTLDcps（第二组为红色，第五组为绿色），同时使用geom_cladelab（）图层函数为第五组与A、B亚组添加禽类特异性扩展（Avian-specific expansion）的标签，如图13.3所示。

```r
library(TDbook)
mytree <- tree_treenwk_30.4.19

# 定义节点属性，以便稍后进行着色
tiplab <- mytree$tip.label
cls <- tiplab[grep("^ch", tiplab)]
labeltree <- groupOTU(mytree, cls)

p <- ggtree(labeltree, aes(color=group, linetype=group), layout="circular") +
    scale_color_manual(values = c("#efad29", "#63bbd4")) +
    geom_nodepoint(color="black", size=0.1) +
    geom_tiplab(size=2, color="black")

p2 <- flip(p, 136, 110) %>% 
    flip(141, 145) %>% 
    rotate(141) %>% 
    rotate(142) %>% 
    rotate(160) %>% 
    rotate(164) %>% 
    rotate(131)

### 对第二组和第五组进行着色
dat <- data.frame(
    node = c(110, 88, 156,136),
    fill = c("#229f8a", "#229f8a", "#229f8a", "#f9311f")
)

p3 <- p2 +
    geom_hilight(
    data = dat,
```

```txt
mapping = aes(
    node = node,
    fill = I (fill)
),
alpha = 0.2,
extendto = 1.4
)

### 为禽类特异性扩展部分添加标签
p4 <- p3 +
geom_cladelab(
    node = 113,
    label = "Avian-specific expansion",
    align = TRUE,
    angle = -35,
    offset.text = 0.05,
    hjust = "center",
    fontsize = 2,
    offset = .2,
    barsize = .2
)

### 添加 > 50 的自举值
p5 <- p4 +
geom_nodelab(
    mapping = aes(
    x = branch,
    label = label,
    subset = !is.na(as.numeric(label)) & as.numeric(label) > 50
),
size = 2,
color = "black",
nudge_y = 0.6
)

### 为亚组添加标签
p6 <- p5 +
geom_cladelab(
    data = data.frame(
    node = c(114, 121),
    name = c("Subgroup A", "Subgroup B")
),
```

```python
p5 <- p4 +
geom_nodelab(
    mapping = aes(
    x = branch,
    label = label,
    subset = !is.na(as.numeric(label)) & as.numeric(label) > 50
),
size = 2,
color = "black",
nudge_y = 0.6
) 
```


###为亚组添加标签


```txt
p6 <- p5 +
geom_cladelab(
    data = data.frame(
    node = c(114, 121),
    name = c("Subgroup A", "Subgroup B")
), 
```

```julia
mapping = aes(
    node = node,
    label = name
),
align = TRUE,
offset = .05,
offset.text = .03,
hjust = "center",
barsize = .2,
fontsize = 2,
angle = "auto",
horizontal = FALSE
) +
theme(
legend.position = "none",
plot.margin = grid::unit(c(-15, -15, -15, -15), "mm")
)
print(p6) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/46c0a0a09c60dcc2beb2e9ba85afe87aa0b34d847319b3a4e405c0dfb5ffdc44.jpg)



图13.3 CTLDcps的系统发育树


使用不同的背景颜色、线条类型及进化枝标签区分不同的分组。

## 13.4 含有基因组位点结构信息的系统发育树

ggtree 包 中 定 义 的 geom_motif （ ） 是 由 封 装 gggenes ： ：geom_gene_arrow（）函数而成的图层函数。geom_motif（）图层函数可以将基因组结构根据某个指定的基因对齐（通过on参数），还可以通过label参数为所选基因添加标签。下面示例使用了gggenes包提供的example_genes数据集。由于该数据集仅提供了一组基因的基因组坐标信息，因此需要先构建基因组的系统发育树。我们基于基因组中基因交集的比例计算出杰卡德相似度（Jaccard similarity），并以此计算出基因组距离。本示例先使用bionj算法来构建进化树，再使用geom_facet（）图层函数来对含有基因组结构信息的进化树进行可视化，如图13.4所示。

```r
library(dplyr)
library(ggplot2)
library(gggenes)
library(ggtree)

get_genes <- function(data, genome) {
    filter(data, molecule == genome) %>% pull(gene)
}

g <- unique(example_genes[,1])
n <- length(g)
d <- matrix(nrow = n, ncol = n)
rownames(d) <- colnames(d) <- g
genes <- lapply(g, get_genes, data = example_genes)

for (i in 1:n) {
    for (j in 1:i) {
    jaccard_sim <- length(intersect(genes[[i]], genes[[j]])) / length(union(genes[[i]], genes[[j]]))
    d[j, i] <- d[i, j] <- 1 - jaccard_sim
    }
}

tree <- ape::bionj(d)

p <- ggtree(tree, branch.length='none') + 
```

```txt
geom_tiplab() + xlim_tree(5.5) +
geom_facet(mapping = aes(xmin = start, xmax = end, fill = gene), data = example_genes, geom = geom_motif, panel = 'Alignment', on = 'genE', label = 'gene', align = 'left') +
scale_fill_brewer(palette = "Set3") +
scale_x_continuous(expand=c(0,0)) +
theme(strip.text=element_blank(),
panel.spacing=unit(0, 'cm'))
facet_widths(p, widths=c(1,2)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/6aa11bd83c4a6a15df80e05b784e1b2479a13b919557a8c467685995a3364e3e.jpg)



图13.4 附有基因组特征信息的系统发育树


## 参考文献



［1］Chen Z，Ho W，Boon S S，et al.Ancient evolution and dispersion of human papillomavirus 58 variants［J］.J Virol，2017，91（21）. 





［2］Yu G，Lam T T，Zhu H，et al.Two methods for mapping and visualizing associated data on phylogeny using ggtree［J］.Mol Biol Evol， 2018，35（12）：3041-3043. 





［3］Larsen F T，Bed'Hom B，Guldbrandtsen B，et al.Identification and tissue-expression profiling of novel chicken c-type lectin-like domain containing proteins as potential targets for carbohydratebased vaccine strategies［J］.Mol Immunol，2019，114：216-225. 



## 附录A 常见问题

ggtree邮件列表[1]是一个寻求帮助的工具。用户只需要在其中提供一个可重复的示例来说明遇到的问题，便能得到其他人的帮助。

## A.1 安装相关问题

由于ggtree包是在Bioconductor项目中发布的，因此我们需要使用BiocManager来安装ggtree包。

```r
## 需要先安装 BiocManager
## install.packages("BiocManager")
library(BiocManager)
install("ggtree")
```

Bioconductor通常会随着R语言一起更新。如果想要安装最新版本的Bioconductor软件包（包括ggtree包），则需要保证使用的是最新版本的R语言。需要注意的是，错误只会在当前发行版本和开发分支中被修复。如果在安装过程中发现错误，则按照指南[2]进行报告。为了使用户仅通过一 步 就 能 轻 松 地 安 装 并 加 载 多 个 核 心 包 ， 我 们 创 建 了 一 个 名 为treedataverse的元包（meta-package）。用户可以通过以下命令来安装。

```txt
BiocManager::install("YuLab-SMU/treedataverse") 
```

安装完之后，在加载此包时也会加载treedataverse中的核心包，包括tidytree、treeio、ggtree及ggtreeExtra。

## A.2 R语言相关问题

如果R语言的初学者想使用ggtree包进行树的可视化，则需要先学习一些R语言及ggplot2包的基本知识。

一个常见的问题就是用户会直接复制粘贴命令，而根本不会查看其中函数的行为。本书中的system.file（）函数主要用于找到在包中打包好的一些示例文件。

```python
system.file package:base R Documentation
Find Names of R System Files
Description:
    Finds the full file names of files in packages etc.
Usage:
    system.file(..., package = "base", lib.loc = NULL,
    mustWork = FALSE) 
```

对于那些想要使用自己文件的用户，请直接使用文件的绝对路径或相对路径（如file=＂your/folder/filename＂）。

## A.3 美学映射相关问题

## A.3.1 美学映射的继承

```python
ggtree(rtree(30)) + geom_point() 
```

举例来说，我们可以直接通过geom_point（）图层函数在节点处添加符号点，而不需要通过geom_point（）图层函数中的aes（x，y）来提供点x与y位置的映射。这是因为它们已经在ggtree（）函数中映射好了，并作为所有图层的全局映射。

如果我们在某个图层中提供了一个数据集，此数据集中却不包含x、y，以及其他在ggtree（）函数中映射好的变量，则此图层函数仍会试图映射它们。由于这些变量并不存在于数据集中，因此会收到如下报错信息。

```txt
Error in eval(expr, envir, enclos) : object 'x' not found 
```

我们可以通过设置参数inherit.aes=FALSE，停止从ggtree（）函数继承美学映射来解决这个问题。

## A.3.2 切忌在美学映射中使用“$”

请千万不要这样做[3]，具体原因参考ggplot2 book［1］中所说的：“不要在aes（）函数中使用“$”引用变量（如diamonds$carat），这样做会打破ggplot2包的数据容器，导致利用ggplot2包绘制的图不再包含所有它需要的内容，并且会在ggplot2包更改行顺序时产生错误，如进行分面等操作时会出现。”

## A.4 文本和标签相关问题

## A.4.1 叶节点标签被截断

叶节点标签被截断是由于ggplot2包无法根据添加的文本自动调整xlim参数[4]而引起的。

```r
library(ggtree)
## 从 https://support.bioconductor.org/p/72398/ 获取的示例树
tree <- read.tree(text= paste("Organism1.006G249400.1:0.03977,",
    "(Organism2.022118m:0.01337,(Organism3.J34265.1:0.00284,"
    "Organism4.G02633.1:0.00468)0.51:0.0104):0.02469);"))
p <- ggtree(tree) + geom_tiplab()
```

在本示例中，叶节点标签被截断了，如图A.1A所示。这是因为点和文本分别处于数据空间和像素空间这两个不同的空间中。其解决方法有3种，第一种方法，用户可以通过设置xlim参数来为叶节点标签分配更多空间，如图A.1B所示。

```txt
p + xlim(0, 0.08) 
```

第二种方法是通过设置clip='off'参数来允许将图层绘制于画布之外。在使用这种方法时，我们可能还需要设置plot.margin参数来延伸绘图边界，为文本留出足够的显示空间，如图A.1C所示。

```python
p + coord_cartesian(clip = 'off') +
theme_tree2(plot.margin=margin(6, 120, 6, 6)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/6389e5940b298d7fe1e747991ac1663fbaa37f040d3dc7904c99af9615e14b64.jpg)



图A.1 为被截断的标签分配更多空间


过长的叶节点标签可能会被截断（A）。一种解决方法是为绘图面板分配更多空间（B），另一种解决方法是设置允许绘图面板之外的绘制标签（C）。

第三种方法是使用hexpand（）函数，12.4小节有详细介绍。

对于矩形布局的树或树状图，用户还可以将叶节点标签呈现为y轴标签，这样无论标签有多长都不会被截断。

## A.4.2 修改叶节点标签

我们可以使用treeio：：rename_taxa（）函数来修改phylo树对象或treedata树对象中的叶节点标签。

```r
tree <- read.tree(text = "((A, B), (C, D));")
d <- data.frame(label = LETTERS[1:4],
    label2 = c("sunflower", "tree", "snail", "mushroom"))
## rename_taxa 默认使用第一列作为键进行匹配，第二列作为值进行替换
## rename_taxa(tree, d)
rename_taxa(tree, d, label, label2) %>% write.tree
```

```txt
## [1] "((sunflower, tree), (snail, mushroom));" 
```

如果输入的树对象是一个treedata实例，则还可以使用write.beast（）函数将含有相关数据的树导出为一个BEAST Nexus文件。

其实重命名进化树叶节点标签并不是一个很好的方法，这可能会导致在将原始序列比对信息映射到树时出错。我们建议还是将新的标签作


为叶节点注释存储于treedata对象中。


```txt
tree2 <- full_join(tree, d, by = "label")
tree2
## 'treedata' S4 object'.
##
## ...@ phylo:
##
## Phylogenetic tree with 4 tips and 3 internal nodes.
##
## Tip labels:
## A, B, C, D
##
## Rooted; no branch lengths.
##
## with the following features available:
## 'label2'. 
```

如果只想在绘制树时展示不同或额外的信息，那么并不需要以修改叶节点标签的形式实现。我们可以通过“％＜+％”操作符将修改后的标签关联到树上，再使用geom_tiplab（）图层函数显示修改后的标签，如图A.2所示。

```r
p <- ggtree(tree) + xlim(NA, 3)
p1 <- p + geom_tiplab()

## 该行代码功能与下一行代码功能相同
## ggtree(tree2) + geom_tiplab(aes(label = label2))
p2 <- p %<+% d + geom_tiplab(aes(label=label2))
plot_list(p1, p2, ncol=2, tag_levels = "A")
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/5acb369516293e486308ab62a4963a6c95c8bae007f3d67b96e9aa0764bf569d.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/ba708d79c369af447031cea05ae014eb49adb4ef3e4e72fc401b5ae31101f7c9.jpg)



图A.2 修改叶节点标签



原始叶节点标签（A）及修改后的叶节点标签（B）。


## A.4.3 修改叶节点标签格式

如果想要修改叶节点标签的格式，则需要在geom_text（）图层函数、geom_tiplab（）图层函数或geom_nodelab（）图层函数中将parse参数设置为TRUE，同时label需要是一个能被解析为plotmath表达式的字符串。用户还可以使用latex2exp包将LaTeX数学公式转换为R语言的plotmath表达式，或者使用ggtext包来渲染Markdown或HTML。

本示例中的叶节点标签被分为属名、种名及地理信息等几部分。我们可以将它们以不同的格式呈现出来，以此进行区分，如图A.3A所示。

```r
tree <- read.tree(text = "((a, (b, c)), d);")
genus <- c("Gorilla", "Pan", "Homo", "Pongo")
species <- c("gorilla", "spp.", "sapiens", "pygmaeus")
geo <- c("Africa", "Africa", "World", "Asia")
d <- data.frame(label = tree$tip.label, genus = genus,
    species = species, geo = geo)

library(glue)
d2 <- dplyr::mutate(d,
    lab = glue("italic({genus})~bolditalic({species})~({geo})"),
    color = c("#E495A5", "#ABB065", "#39BEB1", "#ACA4E2"),
    name = glue("<i style='color:{color}'>{genus} **{species}**</i>
({geo})")

p1 <- ggtree(tree) %<+% d2 + xlim(NA, 6) +
    geom_tiplab(aes(label=lab), parse=T) 
```

使用Markdown或HTML来修改文本格式可能会更简单一点，如图A.3B所示。这个功能是由ggtext包实现的。

```r
library(ggtext)
p2 <- ggtree(tree) %<+% d2 +
geom_richtext(data=td_filter(isTip),
aes(label=name), label.color=NA) +
hexand(.3)
plot_list(p1, p2, ncol=2, tag_levels = 'A') 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/717d1edba463e0c2c69afb2b04c87dfffa2b9d114dc0531c46be19c339dae3cb.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/a99cbfdd8e11473089780dbf1ade904dbe637d100b9dcfd56306af10a8639345.jpg)



图A.3 修改叶节点标签格式


使用plotmath表达式（A）和Markdown/HTML（B）修改指定叶节点标签的格式。

## A.4.4 避免文本标签重叠

用户可以通过ggrepel包使文本标签相互排斥而避免重叠，如图A.4所示。

```r
library(ggrepel)
library(ggtree)
raxml_file <- system.file("extdata/RAxML",
    "RAxML_bipartitionsBranchLabels.H3",
    package="treeio")
raxml <- read.raxml(raxml_file)
ggtree(raxml) + geom_label_repel(aes(label=bootstrap,
    fill=bootstrap)) +
theme(legend.position = c(.1, .8)) + scale_fill_viridis_c() 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/10047f7868e8ac5feafecc4b746c94cac25ddaaa3466d3ac2b2518714c87c8f8.jpg)



图A.4 使文本标签相互排斥


## A.4.5 Newick格式中的自举值

在Newick格式中，自举值经常以内部节点标签的形式储存，如图A.5所示。通过下面的代码可以轻松地实现对内部节点标签的可视化。

```txt
geom_text2(aes(subset = !isTip, label=label)) 
```

如果只想展示自举值的一个子集（只展示大于80的自举值），就不能只是简单地使用geom_text2（subset=（label＞80），label=label）图层函数（或者geom_label2（）图层函数），因为在这里label为字符型，其中包括了内部节点的标签（自举值）及叶节点的标签（分类单元名称）。也没有使用geom_text 2（subset=（as.numeric（label）＞80），label=label）图层函数，因为这样的强制转换会生成NAs，我们还需要将NAs转换为逻辑值FALSE。以下代码可以实现这样的效果。

```r
nwk <- system.file("extdata/RAxML", "RAxML_bipartitions.H3", package='treeio')
tr <- read.tree(nwk)
ggtree(tr) + geom_label2(aes(label=label, subset = !is.na(as.numeric(label)) & as.numeric(label) > 80)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/d510a1864cc8bea027628c316b67c5b6f0962c9abd282dd9bdb4d01776bd5684.jpg)



图A.5 存储在节点标签中的自举值


这 是 一 个 十 分 常 见 的 问 题 ， 我 们 在 treeio 包 中 实 现 了 一 个read.newick（）函数。该函数可用于将内部节点标签解析为支持度。这样，通过下面的代码就能更加轻松地展示自举值。

```txt
tr <- read.newick(nwk, node.label='support')
ggtree(tr) + geom_nodelab(geom='label', aes(label=support, subset=support > 80)) 
```

## A.5 分支设置

## A.5.1 绘制与plot.phylo（）函数效果相同的树

在默认情况下，使用ggtree（）函数会将输入的树以阶梯形呈现，使其看起来没有那么混乱。这就是使用ggtree（）函数绘制出来的树与使用plot.phylo（）函数绘制出来的树长得不一样的原因。如果不想将树呈现为阶梯形，则用户可以将ladderize=FALSE传给ggtree（）函数，如图A.6所示。

```r
library(ape)
library(ggtree)
set.seed(42)
x <- rtree(5)
plot(x)
ggtree(x, ladderize = FALSE) + geom_tiplab()
ggtree(x) + geom_tiplab() 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/5714e0ce504bc7bc4675017ee81d1624fea3b98ba66d676d32cf1ec2df09b6a1.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/26c666c35a93620e29eaea0a17e0c2b81df5d2bd3d1dc89bed431628831461ae.jpg)



C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/7fccf796ca70ad67d7441a23009506f59f8b81dd41a361163ccd87b120e7515a.jpg)



图A.6 阶梯形树和非阶梯形树


使用plot.phylo（）函数将树以非阶梯形呈现（A），通过设置ladderize=FALSE使ggtree（）函数生成非阶梯形的树（B），使用ggtree（）函数默认将树以阶梯形呈现（C）。

## A.5.2 指定叶节点的顺序

ape包中的rotateConstr（）函数会根据指定的节点顺序旋转内部分支。在绘制树时，叶节点便会以这种顺序呈现（从下到上排列）。由于ggtree（）函数在默认情况下会将输入的树以阶梯形呈现，所以我们首先设置ladderize=FALSE，然后树就能正常地根据用户指定的节点顺序绘制 ， 如 图 A.7 所 示 。 用 户 还 可 以 通 过 ggtree （ ） 函 数 中 的get_taxa_name（）函数将叶节点标签的顺序提取出来。

```r
y <- ape::rotateConstr(x, c('t4', 't2', 't5', 't1', 't3'))
ggtree(y, ladderize = FALSE) + geom_tiplab() 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/f526df9b9a27035d29cad85d781d7c0b99ddfac7bbbdcdb9f5f2ac24db783e03.jpg)



图A.7 指定树的顺序


当设置ladderize=FALSE时，ggtree（）函数便能根据输入的叶节点的顺序对树进行可视化。

## A.5.3 缩短外群长分支

当外群位于枝长很长的分支时，如图A.8A所示，我们希望将外群保留在树中，同时忽略它们的枝长，如图A.8B所示[5]。我们可以通过修改外群的坐标轻松地达到这个效果，如图A.8B所示。还有一种方法是使用ggbreak包［2］对图进行截断，如图A.8C所示。

```r
library(TDbook)
library(ggtree)
x <- tree_long_branch_example
m <- MRCA(x, 75, 76)
y <- groupClade(x, m) 
```

```r
## A
p <- p1 <- ggtree(y, aes(linetype = group)) +
    geom_tiplab(size = 2) +
    theme(legend.position = 'none')

## B
p$data[p$data$node %in% c(75, 76), "x"] <- mean(p$data$x)

## C
library(ggbreak)
p2 <- p1 + scale_x_break(c(0.03, 0.09)) + hexpand(.05)

## 对齐图
plot_list(p1, p, p2, ncol=3, tag_levels="A")
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/9aaa053ed5f622a48e94fe8554297135372f8cf8369f07e2542ec6ee1943a384.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/867486602d19bd2996887ec2770d400fa8c785e86f6457ebe590530732592bf2.jpg)



C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/e1df3c83945c4118de0b364ee70fa6165fff64a9c523ad1c3eb2cd822afad862.jpg)



图A.8 缩短外群的长分支


## A.5.4 为树添加新的叶节点

有时候，一些已知的分支并没有在树中出现，而我们希望将其添加到树上。还有一种常见的情况是，当有一些新测序的物种时，我们希望通过推断其在参考树上的进化位置来更新参考树。

这时，我们可以通过phytools：：bind.tip（）函数［3］将新的叶节点添加到树上。而通过tidytree，我们也能为新添加的分支添加注释，并对其与原本的分支进行区分，展示添加分支位置的不确定性，如图A.9所示。

```r
library (phytools)
library (tidytree)
library (ggplot2)
library (ggtree)

set.seed(2019-11-18)
tr <- rtree(5)

tr2 <- bind.tip(tr, 'U', edge.length = 0.1, where = 7, position=0.15)
d <- as_tibble(tr2)
d$type <- "original"
d$type[d$label == 'U'] <- 'newly introduced'
d$sd <- NA
d$sd(parent(d, 'U')$node] <- 0.05

tr3 <- as.treedata(d)
ggtree(tr3, aes(linetype=type)) + geom_tiplab() +
geom_errorbarh(aes(xmin=x-sd, xmax=x+sd, y = y - 0.3),
linetype='dashed', height=0.1) +
scale_linetype_manual(values = c("newly introduced" = "dashed",
"original" = "solid")) +
theme(legend.position=c(.8, .2)) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/50c404bb9dc4f34275b64ee82f658a7c50df726223c0c0f95f2a7036a067e328.jpg)



图A.9 为树添加新的叶节点


本示例使用了不同的线条类型来区分新添加的叶节点，也添加了一个误差条以显示添加分支位置的不确定性。

## A.5.5 更改任意分支的颜色或线条类型

如果想要更改任意分支的颜色或线条类型，则只需要准备一个含有分支设置变量（如哪些分支是所选的，哪些不是）的数据框。通过使用前文及附录A参考文献［4］中介绍的第一种方法，将数据映射到树的结构，便能轻松地调整任意分支的颜色或线条类型，如图A.10所示。

```r
set.seed(123)
x <- rtree(10)
## 设置两种颜色
d <- data.frame(node=1:Nnode2(x), colour = 'black')
d[c(2,3,14,15), 2] <- "red"
## 设置多种线型
d2 <- data.frame(node=1:Nnode2(x), lty = 1)
d2[c(2,5,13, 14), 2] <- c(2, 3, 2, 4)
p <- ggtree(x) + geom_label(aes(label=node))
p %<+% d %<+% d2 + aes(colour=I(colour), linetype=I(lty))
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/3e7f047b1d23fd98103fc138c52c1d637159b8e9d2e7c6d4e78b0071f22262a2.jpg)



图A.10 更改任意分支的颜色或线条类型


用户还可以使用gginnards包，通过直接操作图中的元素来应对一些更为复杂的场景。

## A.5.6 在分支的任意位置添加符号点

如 果 想 要 在 分 支 的 任 意 位 置 添 加 一 个 符 号 点 [6] ， 则 使 用geom_nodepoint （ ） 图 层 函 数 、 geom_tippoint （ ） 图 层 函 数 或geom_point2（）图层函数（同时适用于内部及外部节点）中的subset美学映射筛选出需要添加符号点的分支的对应节点（所选分支的终点），并通过x=x-offset美学映射指定要添加的点的水平位置。其中，offset（偏移值）可以是一个绝对值（见图A.11A），也可以是一定比例的枝长（见图A.11B）。

```r
set.seed(2020-05-20)
x <- rtree(10)
p <- ggtree(x)

p1 <- p + geom_nodepoint(aes(subset = node == 13, x = x - .1),
    size = 5, colour = 'firebrick', shape = 21)

p2 <- p + geom_nodepoint(aes(subset = node == 13,
    x = x - branch.length * 0.2),
    size = 3, colour = 'firebrick') +
    geom_nodepoint(aes(subset = node == 13, x = x - branch.length * 0.8),
    size = 5, colour = 'steelblue')
plot_list(p1, p2, ncol=2, tag_levels="A") 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/59a118e24d39e2a4ff863658894c3b9733afa0c092bd29b7d0468091336d8684.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/d84443f80ab5133924ac1454f1a80401a3720b16be0616146ae083bdd00c9ffe.jpg)



图A.11 在分支的任意位置添加符号点


符号点的位置可以根据绝对值（A）或一定比例的枝长（B）进行调整。

## A.6 为不同的分面面板设置不同的x轴标签

ggplot2通常并不支持此种做法，但我们可以通过在每个面板上绘制文本标签，并将标签放置于绘图面板之外来实现，如图A.12所示。

```r
library(ggtree)
library(ggplot2)
set.seed(2019-05-02)
x <- rtree(30)
p <- ggtree(x) + geom_tiplab()
d <- data.frame(label = x$tip.label,
    value = rnorm(30))
p2 <- p + geom_facet(panel = "Dot", data = d,
    geom = geom_point, mapping = aes(x = value))

p2 <- p2 + theme_bw() +
    xlim_tree(5) + xlim_expand(c(-5, 5), 'Dot')

# .panel 是 geom_facet() 图层函数中用于分面的内部变量
d <- data.frame(.panel = c('Tree', 'Dot'),
    lab = c("Distance", "Dot Units"),
    x = c(2.5, 0), y = -2)

p2 + scale_y_continuous(limits=c(0, 31),
    expand=c(0, 0),
    oob=function(x, ...) x) +
    geom_text(aes(label=lab), data=d) +
    coord_cartesian(clip='off') +
    theme(plot.margin=margin(6, 6, 40, 6))
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/538a1833c1b4141d65c52750d3192a115f658781d66414caaa1fc79cb97fba45.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/acb8d89625279b9b0fbea5797598bd071e32c321c6ac6866d6e7d35c47ff0b42.jpg)



图A.12 为不同分面面板设置不同的x轴标签


## A.7 在树的底部图层绘制图形

使用ggtree（）函数在将树结构绘制出来后，通常会在所有图层的上面继续添加后续的图层，如图A.13所示。

```r
set.seed(1982)
x <- rtree(5)
p <- ggtree(x) + geom_hilight(node=7, alpha=1) 
```

如果想要将这些图层添加到树图层的下面，则可以通过颠倒所有图层的顺序来实现。

```txt
p$layers <- rev(p$layers) 
```

还 有 一 种 方 法 是 使 用 ggplot （ ） 函 数 代 替 ggtree （ ） 函 数 ， 使用“+geom_tree（）图层函数”将树结构的图层添加到图层栈中的合适位置。

```txt
ggplot(x) + geom_hilight(node=7, alpha=1) + geom_tree() + theme_tree() 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/4467201e4f66e3729b89c8e4c963a937f67b45abf7f0ca532acb5c797049ac24.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/10a9342ae5c673ebfe83ca0a86d5f43861e6f50cee1fc78d205285993e21d822.jpg)



C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/b9c14e8b216b854277fc6a9571c5c79f26716fc3a116ac8060f31fd22129a496.jpg)



图A.13 在树结构底层添加图层


在树结构上层添加图层（A）。颠倒A 图中图层的顺序（B）。在树图层之下添加图层（C）。

## A.8 扩大环形布局或扇形布局树的内部空间

有很多人都提过这个问题[7]，在本章参考文献［5］中能找到一个已发表的示例。增加环形布局树内部空间的比例可以很好地避免叶节点标签出现重叠，也能通过将所有的节点及分支向外推移而提高树的可读性。我们可以使用xlim（）函数或hexpand（）函数来为树分配更多空间，如图A.14A所示，或者为树设置一个很长的根分支，类似于FigTree通过设置Root Length参数达到的效果。

```txt
set.seed(1982)
tree <- rtree(30)
plot_list(
    ggtree(tree, layout='circular') + xlim(-10, NA),
    ggtree(tree, layout='circular') + geom_rootedge(5),
    tag_levels = "A", ncol=2
) 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/064af0984640c4a06ef00463f2963ead11811eb8b9c9c564002b5f9e6333bc1f.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/f761fb1adfeedeff8aeb8be4c03848d3f34e0af769b6040aecfc1d7242b2df75.jpg)



图A.14 扩大环形布局树的内部空间


我们可以使用xlim（）函数（A）或为树设置一个很长的根分支（B）来分配更多空间。

## A.9 使用离根最远的叶节点作为时间尺度树的原点

revts（）函数用于将最近的叶节点表示的时间设置为0，以此来翻转x轴。在使用revts（）函数后，x轴的最大值为0，其余值为负数。我们可以通过设置scale_x_continuous（labels=abs）函数来使绝对值作为x轴标签，如图A.15所示。

```r
tr <- rtree(10)
p <- ggtree(tr) + theme_tree2()
p2 <- revts(p) + scale_x_continuous(labels=abs)
plot_list(p, p2, ncol=2, tag_levels="A") 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/73f6868b8fbe28417971ac8f81f0abbafb034d2b5903363a54a340a3e23b2ab6.jpg)



B


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/06327d64f708ffc2447efb53937aac2119d95000626821b37a614554caade19c.jpg)



图A.15 设置时间尺度的起点



向前：从根到叶节点（A）。



向后：从最远的叶节点到根（B）。


## A.10 删除环形布局树的空白边距

在极坐标下绘制的图（如环形布局的树）经常会在图的外部生成一些多余的空白区域。如果想要使用Rmarkdown删除多余的空白区域，则可以通过设置knitr参数来完成。

```r
library(knitr)
knit_hooks$set(crop = hook_pdfcrop)
opts_chunk$set(crop = TRUE) 
```

或者使用命令行工具删除多余的空白区域。

```txt
## for pdf
pdfcrop x.pdf
## for png
convert -trim x.png x-crop.png 
```

如果想要在R语言中删除多余的空白区域，则可以使用magick包来完成。

```r
library(magick)
x <- image_read("x.png")
## 如果为 PDF 文件
## x <- image_read_pdf("x.pdf")
image_trim(x)
```

下面示例的原始图与修剪后的图如图A.16所示。

```r
library(ggplot2)
library(ggtree)
library(patchwork)
library(magick)

set.seed(2021)
tr <- rtree(30)
p <- ggtree(tr, size=1, colour="purple", layout='circular')

f <- tempfile(fileext=".png")
ggsave(filename = f, plot = p, width=7, height=7)

x <- image_read(f, density=300)
y <- image_trim(x)

panel_border <- theme(panel.border=element_rect(colour='black', 
```

```r
fill=NA, size=2))
xx <- image_ggplot(x) + panel_border
yy <- image_ggplot(y) + panel_border
plot_list(xx, yy, tag_levels = "A", ncol=2) 
```


A


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/02825158fb7ea96352f4852f455b857c94047fb7b2c967ea77090f4ecf596fd9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/1f42e31cb9e1b31942b37c5b3fb48b364c41f378f9ee0fcff9a8d874a105dc4f.jpg)



图A.16 删除极坐标下的多余空白区域


原始图（A）与修剪后的图（B）。

## A.11 编辑树图的细节

对于普通用户来说，使用ggplot2包或ggtree包来修改图的细节是一件比较困难的事。我们推荐使用eoffice包将ggtree包的输出结果导入一个Microsoft Office文档，并在PowerPoint中编辑树图。

## 参考文献



［ 1 ］ Wickham H.ggplot2 ： Elegant graphics for data analysis［M］.2016. 





［2］Xu S，Chen M，Feng T，et al.Use ggbreak to effectively utilize plotting space to deal with large datasets and outliers ［ J ］ .Front Genet ， 2021，12：774846. 





［3］Revell L J.phytools：an R package for phylogenetic comparative biology （ and other things ） ［ J ］ .Methods in Ecology and Evolution ， 2012，3（2）：217-223. 





［4］Yu G，Lam T T，Zhu H，et al.Two methods for mapping and visualizing associated data on phylogeny using ggtree［J］.Mol Biol Evol， 2018，35（12）：3041-3043. 





［5］Barton K，Hiener B，Winckelmann A，et al.Broad activation of latent HIV-1 in vivo［J］.Nat Commun，2016，7：12731. 





[1]邮件列表网址请参见“外链资源”文档中附录A第1条





[2]相关指南请查看“外链资源”文档中附录A第2条





[3]相关案例的讨论请参见“外链资源”文档中附录A第3条





[4]相关推文请参见附“外链资源”文档中附录A第4条





[5]相关讨论请参见“外链资源”文档中附录A第5条





[6]相关问题详情请参见“外链资源”文档中附录A第6条





[7]相关讨论请参见“外链资源”文档中附录A第7条



## 附录B 相关工具

## B.1 MircrobiotaProcess包：将物种分类表转换为treedata对象

分类信息（属、科等）数据在微生物组学与生态学中的应用非常广泛。层级分类法是一种树状结构，将个体组织成子类别，并且可以转换为树对象。MircrobiotaProcess包支持将phyloseq包定义的taxonomyTable对象转换为treedata对象，由此，分类层级关系便可使用ggtree包进行可视化，如图B.1所示。当分类学名称出现混杂或缺失的情况时（如不同等级的物种含有相同的分类学名称等），可以使用taxonomyTable对象中的as.treedata（）函数为其自动补充上一级的分类信息。

```r
library(MicrobiotaProcess)
library(ggtree)

# 原始的 kostic2012crc 是一个 MPSE 对象
data(kostic2012crc)

taxa <- tax_table(kostic2012crc)
# 当 include.rownames = TRUE 时，
# 分类单元的行名（一般是 OTUs 或其他特征）会被作为叶节点标签
tree <- as.treedata(taxa, include.rownames=TRUE)
# 使用 mp_extract_tree() 函数提取分类单元树（treedata 对象），
# 因为分类学信息在 MPSE 类 (kostic2012crc) 中会以 treedata 对象的形式存储
# tree <- kostic2012crc %>% mp_extract_tree()

ggtree(tree, layout="circular", size=0.2) +
geom_tiplab(size=1)
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/ea2bbddbf85a9d120efe1951482fb0cb88172453589e96f5fd9a15a25eb57f1b.jpg)



图B.1 将taxonomyTable对象转换为treedata对象


## B.2 rtol包：Open Tree API的R接口

rtol［1］是一个能与Open Tree of Life（简称Open Tree）数据APIs交互的R包。我们可以先通过rtol包来获取系统发育树，再通过ggtree包对系统发育树进行可视化并探索其中的物种关系，如图B.2所示。

```r
## 示例来源于 https://github.com/ropensci/rotl
library(rotl)
apes <- c("Pongo", "Pan", "Gorilla", "Hoolock", "Homo")
(resolved_names <- tnrs_match_names(apes))
```

```txt
## search_string unique_name approximate_match ott_id
## 1 pongo Pongo FALSE 417949
## 2 pan Pan FALSE 417957
## 3 gorilla Gorilla FALSE 417969
## 4 hoolock Hoolock FALSE 712902
## 5 homo Homo FALSE 770309
## is_synonym flags number_matches
## 1 FALSE 2
## 2 FALSE sibling_higher 2
## 3 FALSE sibling_higher 1
## 4 FALSE 1
## 5 FALSE sibling_higher 1 
```

```r
tr <- tol_induced_subtree(ott_ids = ott_id(resolved_names))
ggtree(tr) + geom_tiplab() + xlim(NA, 5) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/e130fe746e6301acb60117269a01416e9e126072e84160cfc3cd71df6e881785.jpg)



图B.2 从完整的Open Tree of Life中获取一个诱导子树


## B.3 将ggtree对象转换为plotly对象

通过plotly包来使用ggtree包，能够快速地构建一个交互式系统发育树。通过ggplotly（）函数能将ggtree对象转换为plotly对象。需要注意的是，使用ggtree包中的identify（）函数可以实现系统发育树的交互式操作。

```r
# 示例来自 https://twitter.com/drandersgs/status/965996335882059776
# 加载库
library(ape)
library(ggtree)
library(plotly)
# 构建系统发育树
n_samples <- 20
n_grp <- 4
tree <- ape::rtree(n = n_samples)
# 创建一些元数据
id <- tree$tip.label
```

```r
set.seed(42)
grp <- sample(LETTERS[1:n_grp], size = n_samples, replace = T)
dat <- tibble::tibble(id = id,
    grp = grp)
# 绘制系统发育树
p1 <- ggtree(tree)
metat <- p1$data %>%
    dplyr::inner_join(dat, c('label' = 'id'))
p2 <- p1 +
    geom_point(data = metat,
    aes(x = x,
    y = y,
    colour = grp,
    label = id))
plotly::ggplotly(p2)
```

## B.4 绘制漫画风格的系统发育树（类似xkcd）

运行下面代码可以绘制漫画风格的系统发育树，如图B.3所示。

```r
library(htmltools)
library(XML)
library(gridSVG)
library(ggplot2)
library(ggtree)
library(comicR)

p <- ggtree(rtree(30), layout="circular") +
    geom_tiplab(aes(label=label), color="purple")
print(p)
svg <- grid.export(name="", res=100)$svg 
```

```r
tagList(
    tags$div(
    id = "ggtree_comic",
    tags$style("#ggtree_comic text {font-family:Comic Sans MS;}"),
    HTML(saveXML(svg)),
    comicR("#ggtree_comic", ff=5)
)
) # %>% html_print 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/dcff8d7cbf7cc920f91fc33d2801c835759c4687d30f5e3d27814c0282d0ee50.jpg)



图B.3 绘制漫画风格的系统发育树


## B.5 绘制ASCII Art形式的有根树

```r
library(data.tree)
tree <- rtree(10)
d <- as.data.frame(as.Node(tree))
names(d) <- NULL
print(d, row.names=FALSE) 
```

```shell
11
| --12
| | --13
| | | --t4
| | ° --t7
| ° --14
| | | --15
| | | | --t1
| | | ° --16
| | | | --t6
| | | | ° --t5
| | ° --t8
° --17
| | --t3
° --18
| | --19
| | | --t10 
```

$^{1}$ $^{\circ}$ --t9 $^{\circ}$ --t2 

通过ASCII Art的形式，我们可以将进化树以一种简洁的方式呈现出来。有时候，我们并不想绘制出整棵树，而只是想在R控制台上观看一下树的结构，ASCII Art形式的树就能做到这点。如果树很大，那么最好还是不要这样操作。有时候，我们只想聚焦于树的特定部分及这部分的直系亲属。此时我们可以先使用treeio：：tree_subset（）函数提取出树的选定部分，再通过输出树子集的ASCII Art，在R控制台上探索我们感兴趣的生物间的进化关系。

ggtree包还支持将叶节点标签解析为表情符号来构建phylomoji。data.tree包及emojifont包支持以ASCII文本的形式输出phylomoji，如图B.4所示。

```r
library(data.tree)
library(emojifont)

tt <- '((snail,mushroom),(((sunflower,evergreen_tree),leaves),green_salad));'

tree <- read.tree(text = tt)
tree$tip.label <- emoji(tree$tip.label)
d <- as.data.frame(as.Node(tree))
names(d) <- NULL
print(d, row.names=FALSE) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/d6185aa4d438b80e8a943f0977ce8624309818f3e7832ba71c07e353c422fb86.jpg)



图B.4 以ASCII文本的形式输出phylomoji


还有一种输出系统发育树的ASCII ART的方法是，使用devout包中定义的ascii（）函数绘制树，如下示例。

```r
library(devout)
ascii(width=80)
ggtree(rtree(5))
invisible(dev.off() 
```

```txt
###
#
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
###
### 
```

## B.6 放大树的选定部分

除了使用viewClade（）函数，用户还可以通过ggforce包来放大选定的进化枝，如图B.5所示。

```r
set.seed(2019-08-05)
x <- rtree(30)
nn <- tidytree::offspring(x, 43, self_include=TRUE)
ggtree(x) + ggforce::facet_zoom(xy = node %in% nn) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/a61bb96b0ece68efe628afc1b71188ba7ff2fb257aa41c4d07c0ddc9c6b48b3c.jpg)



图B.5 放大选定的进化支


## B.7 在ggtree包中使用ggimage包的提示

ggtree包支持通过ggimage包来使用轮廓图注释进化树。ggimage包为处理图像文件提供了图形语法的支持。在使用ggimage包时，我们可以通过image_fun参数即时处理图像，并接收一个函数来处理magick-image对象，如图B.6所示。magick包提供了许多函数，我们可以通过组合这些函数来完成一些特定的工作。

## B.7.1 示例1：移除图像背景

```r
library(ggimage)

imgdir <- system.file("extdata/frogs", package = "TDbook")

set.seed(1982)

x <- rtree(5)

p <- ggtree(x) + theme_grey()

p1 <- p + geom_nodelab(image=paste0(imgdir, "/frog.jpg"), geom="image", size=.12) +
    ggtitle("original image")

p2 <- p + geom_nodelab(image=paste0(imgdir, "/frog.jpg"), geom="image", size=.12, image_fun=function(.) magick::image_transparent(., "white")) +
    ggtitle("image with background removed")
plot_grid(p1, p2, ncol=2) 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/0a44d7ef4e60cfc2bb7545137b2243dc0f99b52c46969a970376d8186185c726.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/233555f3b69422d26b8df5072ebfe118eb52089be7476566a24347d8b49463c6.jpg)



图B.6 移除图像背景


在进化树上绘制没有移除背景的图像（A）及移除了背景的图像（B）。

## B.7.2 示例2：在背景图像上绘制树

通过geom_bgimage（）图层函数能添加一个图像图层，并将其放在图层栈的底部。作为一个普通的图层，它不会改变输出的ggtree对象的结构。用户可以在此之上继续添加注释图层，如图B.7所示。

```python
ggtree(rtree(20), size=1.5, color="white") + geom_bgimage('img/blackboard.jpg') + geom_tiplab(color="white", size=5, family='xkcd') 
```

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/72517b0ff209669b144616c519b50af19722caa65c2d29172f8d5ba9dc13c8b4.jpg)



图B.7 在背景图像上绘制树


## B.8 在Jupyter Notebook中运行ggtree包

如果系统中已经安装了Jupyter Notebook，则可以在R语言中通过以下命令安装IRkernel。

```r
install.packages("IRkernel")
IRkernel::installspec() 
```

接下来用户就可以在Jupyter Notebook中使用ggtree包及其他R包，如图B.8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/81a2fe3f6965192cbe00f32b661efeb406d966136140ab7a48b11770fa5e9bbd.jpg)



图B.8 在Jupyter Notebook中运行ggtree包


## 参考文献

［1］Michonneau F，Brown J W，Winter D J.rotl：an R package to interact with the open tree of life data ［ J ］ .Methods in Ecology and Evolution，2016，7（12）：1476-1481. 

## 附录C 练习题答案

## 第1章

## 1.参考答案

系统发育树（Phylogenetic Tree，简称“进化树”）是基于生物的遗传序列构建的，常用来描述生物群体之间的谱系关系。我们可以通过找出哪个病原体样本在遗传上更接近另一个样本，从而更加深入地了解平时难以观察到的流行病学联系和流行病爆发的潜在源头。我们通常可以基于距离和字符来构建进化树。距离法分为非加权分组平均法（UPGMA）和邻接法（NJ）；字符法分为最大简约法（MP）、最大似然法（ML）和贝叶斯马尔科夫链蒙特卡洛法（BMCMC）。

## 2.参考答案

系统发育树可以分为Newick、NEXUS、NHX、Jplace等格式。

Newick格式因为其被许多软件支持，所以是最广泛使用的进化树的格式。

Newick树文本格式详述：Newick树文本以分号结尾，其内部节点由一对匹配的括号表示，而括号内是该节点的后代节点，如（t2：0.04，t1：0.34）表示为t2和t1的父节点，t2、t1均为其直系后代。同级的内部节点用逗号（，）分隔，同时叶节点用它们的名称表示。枝长（从父节点到子节点）由子节点后面的实数表示，两者之间用冒号（：）分隔。与内部节点或分支相关联的单一数据（如自举值）可以被编码为节点标签，并用冒号（：）前面简单的文本或数字表示。

## 3.参考答案

（1）read.tree（）。 

（2）read.raxml（）。 

（3）read.beast（）。 

（4）read.mrbayes（）。 

（5）NEXUS：read.hyphy（）。 

祖先序列：read.hyphy.seq（）。

（6）mlc：read.codeml_mlc（）。 

rst：read.paml_rst（）或read.codeml（）。

（7）NEXUS：read.mega（）。 

read.mega_tubular（）。 

（8）read.r8S（）。 

## 第2章

## 1.参考答案

将 phylo 对 象 转 换 为 tibble ： as.tibble （ ） ， 将 phylo 对 象 转 换 为treedata：as.treedata（）。

将treedata对象转换为tibble：as.tibble（），将treedata对象转换为phylo：as.phylo（）。

## 2.参考答案

```r
library(treeio)
set.seed(123)
rtree <- rtree(23)
## 随机选定一个叶子节点
tn <- sample(1:Ntip(rtree), 1)
ancestor(rtree, tn)
## 随机选定一个内部节点
nn <- sample((Ntip(rtree) + 1):(Ntip(rtree) + Nnode(rtree)), 1)
offspring(rtree, nn)
```

## 3.参考答案

```r
library(ggtree)
library(treeio)
set.seed(123)
rtree <- rtree(23)
node <- sample((Ntip(rtree)+1):(Ntip(rtree)+Nnode(rtree)),1)
tr1 <- tree_subset(rtree, node, levels_back = 0)
ggtree(tr1) + geom_tiplab()
tip <- sample(rtree$tip.label,1)
tr2 <- tree_subset(rtree,tip,levels_back = 1)
ggtree(tr2) + geom_tiplab() 
```

## 第3章

## 1.参考答案

```r
library(treeio)
t1 <- read.beast("beast-file-path")
t2 <- read.NHX("NHX-file-path")
mt <- merge_tree(t1, t2)
write.beast(mt)
write.tree(mt) 
```

## 2.参考答案

```txt
read.jtree() ## 导入 jtree 对象
write.jtree() ## 导出 jtree 对象
```

## 第4章

## 1.参考答案

```r
library(ggtree)
set.seed(123)
tr <- rtree(15)
p <- ggtree(tr, layout = "roundrect") + geom_tiplab(angle = -45)
ggplotify::as.ggplot(p, angle = 45) 
```

## 2.参考答案

```r
library(ggtree)
library(phytools)
library(ggplot2)
set.seed(123)
tr <- rtree(30)
t <- fastBM(tr, nsim = 1)
df <- data.frame(node = fortify(tr)$node, traits = c(t, fastAnc(tr,t)))
tree <- full_join(tr, df, by = "node")
ggtree(tree, size = 3) +
    geom_tree(aes(color = traits), continuous = "color", size = 2) +
    scale_color_gradientn(colours=c("red", 'orange', 'green', 'cyan', 'blue')) 
```

## 3.参考答案

```r
library(ggtree)
set.seed(123)
tr <- rtree(20)
p1 <- ggtree(tr, layout = "circular", color = "transparent", branch.length = "none")
p1 + geom_nodepoint(color = "red", alpha = 0.5) +
    geom_tippoint(color = "yellow", shape = 8) +
    theme_tree("black") 
```

## 第5章

## 1.参考答案

使用图形语法对进化树进行可视化能够轻松地生成一些简单的图层，做到快速对进化树进行基础的可视化。同时，通过组合这些简单的图层，我们还能够生成更为复杂的图形，以做到对进化树进行充分的注释。

## 2.参考答案

```r
library(ggtree)
set.seed(123)
tr <- rtree(20)
dat <- data.frame(f = c(7, 2, 1),
    t = c(11, 15, 9),
    color = c("red", "blue", "darkgreen"),
    size = c(3, 2, 1)
    )
ggtree(tr, layout = "inward_circular", xlim=c(5, 0)) +
    geom_highlight(node = 23, fill = "steelblue") +
    geom_taxalink(data = dat,
    mapping = aes(taxa1 = f,
    taxa2 = t,
    color = I(color),
    size = I(size))) 
```

## 3.参考答案

（1）使用geom_range以红色水平条带的形式来将（如利用BEAST推断的枝长的）置信区间注释于对应的节点上。

（2）使用geom_text（）图层函数或geom_labelt（）图层函数将（如利用BEAST推断的后验概率或利用HyPhy、CODEML等软件得出的氨基酸替换等）文本信息注释于分支上。

（3）通过对树着色的方式来呈现连续型（如利用CODEML推断的dN/dS）和离散型（如物种饮食偏好、祖先状态可能等预测推断）数据。

## 第6章

## 1.参考答案

```r
library(ggtree)
library(tidytree)
set.seed(123)
tr <- rtree(20)
## 找到子节点
## 示例 29, 30
child(tr, 28)
tr2 <- groupClade(tr, c(29,30))
p <- ggtree(tr2, aes(color=group)) +
    theme(legend.position='none') +
    scale_color_manual(values=c("black", "firebrick", "steelblue"))
p1 <- scaleClade(p, node = 30, scale = 3)
p2 <- collapse(p1, node = 29) +
    geom_point2(aes(subset=(node==29)), shape=21, size=3, fill='red')
```

## 2.参考答案

```r
library(ggtree)
set.seed(123)
tr <- rtree(20)
p <- ggtree(tr)
p1 <- rotate(p, 24)
p2 <- open_tree(p1, 90)
p3 <- rotate_tree(p2, 270) 
```

## 第7章

## 1.参考答案

（1）示例如下。

```r
library(ggtree)
set.seed(123) 
```

```r
x=rtree(4)
p=ggtree(x)+geom_tippoint()
# 外部数据
data <- data.frame(label=x$tip.label,fake_trait=1:Ntip(x),fake_trait2=c(1,1,2,2))
data
# 与外部数据合并
p1=p %<+% data
# 映射外部数据到树上
p1+geom_tippoint(aes(size=fake_trait,color=fake_trait2))
```

## （2）示例如下。

```txt
利用 geom_facet() 图层函数生成组合图
p+geom_facet(panel="fake_data", data=data, geom=geom_point, aes(x=fake_trait, color=fake_trait2, fill=fake_trait2))
# 利用 facet_plot() 函数生成组合图
facet_plot(p, panel = "fake_data", data=data, geom = geom_point, aes(x=fake_trait, color=fake_trait2, fill=fake_trait2))
```

## （3）示例如下。

```r
生成热图数据
htdt <- data.frame(label=x$tip.
label, s1=rnorm(Ntip(x)), s2=rnorm(Ntip(x)), s3=rnorm(Ntip(x)))
htdt2 <- htdt[, -1]
rownames(htdt2) <- htdt[, 1]
# 可视化热图数据
gheatmap(p, htdt2, width=.5, offset = .2)
```

## 第8章

## 1.参考答案

```r
library(ggtree)
set.seed(123)
tr <- rtree(5)
path <- data.frame(node = 1:5,
    path = c("path_to_node1_pic",
    "path_to_node2_pic",
    "path_to_node3_pic",
    "path_to_node4_pic",
    "path_to_node5_pic")) 
```

```r
tri <- full_join(tr, path, by = "node")
ggtree(tri) +
geom_tiplab(aes(image = path), geom="image") 
```

## 2.参考答案

```r
library(ggtree)
library(ggplot2)
data("mtcars")
set.seed(123)
tr <- rtree(5)
p <- ggtree(tr)
p1 <- ggplot(mtcars,aes(factor(cyl),fill=factor(am))) +
    geom_bar() +
    theme_void() + theme(legend.position='none')
p2 <- ggplot(mtcars,aes(mpg,fill=factor(vs))) +
    geom_density() +
    theme_void() + theme(legend.position='none')
p3 <- ggplot(mtcars,aes(factor(gear),fill=factor(cyl))) +
    geom_bar(position="dodge") +
    theme_void() + theme(legend.position='none')
plist <- list("8" = p1, "9" = p2, "7" = p3)
pi <- p + geom_inset.plist) 
```

## 3.无

## 第9章

## 1.参考答案

ggtree可以衔接phylobase包输出的phylo4对象及phylo4d对象，ade4包输出的是phylog对象，phyloseq包输出的是phyloseq对象。

示例：构建phylo4d对象并将其进行可视化。

```r
library(ggtree)
library(phylobase)
set.seed(123)
x=rtree(4)
data<- data.frame(label=x$tip.label,
    s1=seq(4.5,5,length.out=4), 
```

```r
s2=seq(5,5.5,length.out=4),
s3=seq(5.5,6,length.out=4))
d2 <- data[, -1]
rownames(d2) <- data[, 1]
phy1 <- as(x, "phylo4")
phyd <- phylo4d(phy1, d2)
ggtree(phyd) +
geom_tiplab(align = T) +
geom_tippoint(aes(color = s1,size = s1), x = 2.2, shape = 1) +
geom_tippoint(aes(color = s2,size = s2), x = 2.4, shape = 1) +
geom_tippoint(aes(color = s3,size = s3), x = 2.6, shape = 1) +
xlim(0, 2.8) 
```

## 2.参考答案

```r
library(ggtree)
hc <- hclust(dist(UScitiesD))
den <- as.dendrogram(hc)

ggtree(den, layout = 'dendrogram') +
geom_tiplab() +
theme_dendrogram() 
```

## 第10章

## 1.参考答案

```r
library(ggtreeExtra)
# p 为 ggtree 对象
p <- ggtree(tree)
p + geom_fruit(
    data = long_format_data,
    geom = geom_xx,
    mapping = aes(x = value, y = tip.id, other_aes),
    pwidth = .2
)
```

## 2.参考答案

```r
library(TDbook)
data(tree_hmptree)
data(df_barplot_attr) 
```

```r
library(TDbook)
library(ggplot2)
library(ggtree)
library(ggtreeExtra)
p <- ggtree(tree_hmptree)
p <- p +
    geom_fruit(
    data = df_barplot_attr,
    geom = geom_col,
    mapping = aes(x = HigherAbundance, y = ID, fill = Sites),
    pwidth = .3,
    axis.params=list(axis='x'),
    grid.params=list()) 
```

## 3.参考答案

用户可以使用ggnewscale包中的new_scale（＂fill＂）指令来添加新的属性映射。除了fill，还可以相应地使用诸如size、color、alpha等其他的美学映射属性来替代，添加相应的属性映射。

## 4.参考答案

总共有3种方式：第一种，整理成对应geom_xx（）图层函数所需的long format数据框，通过geom_fruit（）图层函数中的data导入；第二种，通过left_join（）函数把long format数据框添加到treedata或phylo中（有时候需要对数据进行展开操作可以把td_unnest传送到data参数中）。第三种，对于没有重复id（tip或者node）的数据框可以先通过％＜+％操作符将数据整合到ggtree对象内，再进行可视化。

## 第11章

## 参考答案

```r
rp <- BiocManager::repositories()
db <- utils::available.packages(repo=rp)
x <- tools::package_dependencies('ggtree', db=db,
    which = c("Depends", "Imports"),
    reverse=TRUE)
print(x) 
```

## 第12章

## 1.参考答案

facet_widths（）函数可以用于调节分面面板的尺寸。

facet_labeller（）函数可以用于调节分面面板的标签。

当两者连用时，要先使用facet_labeller（）函数调节标签，再使用facet_widths（）函数调节尺寸。

## 2.参考答案

```r
library(ggtree)
library(ggplot2)
ggplot(iris, aes(x = Sepal.Width, y = Petal.Length)) +
    geom_point2(aes(subset = Petal.Length>6 | Sepal.Width<3)) 
```

## 3.参考答案

```txt
ggtree(x) + layout_circular()
ggtree(x) + layout_inward_circular()
ggtree(x) + layout_fan() 
```

## 4.参考答案

```r
library(ggtree)
library(ggplot2)
data(mpg)
p <- ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    facet_grid(.~class, scales = "free_x")
p + xlim_expand(c(0, 10), "2seater") 
```

## 5.参考答案

ggexpand可以单独缩放x轴或y轴，也可以同时缩放x轴与y轴。

ggexpand（）函数用于接收以下3个参数。

ratiao：按x轴或y轴范围的比例缩放图片坐标。

derection：其值为1或-1。当值为1时表示向右侧延伸x轴，当值为-1时表示向左侧延伸x轴。

side：其值为h、v或hv。h表示水平横向延申，v表示垂直纵向延申，hv表示同时进行水平和垂直方向延伸。

## 6.参考答案

```r
library(ggtree)
library(ggplot2)
rtree <- rtree(23)
p <- ggtree(rtree)
nn <- sample((Ntip(rtree)+1):(Ntip(rtree)+Nnode(rtree)), 1)
get_taxa_name(p, node = nn) 
```

## 7.参考答案

在默认情况下，使用label_pad（）函数会生成“.”占位，用于保证叶节点标签末端对齐。

## 反侵权盗版声明

电子工业出版社依法对本作品享有专有出版权。任何未经权利人书面许可，复制、销售或通过信息网络传播本作品的行为；歪曲、篡改、剽窃本作品的行为，均违反《中华人民共和国著作权法》，其行为人应承担相应的民事责任和行政责任，构成犯罪的，将被依法追究刑事责任。

为了维护市场秩序，保护权利人的合法权益，我社将依法查处和打击侵权盗版的单位和个人。欢迎社会各界人士积极举报侵权盗版行为，本社将奖励举报有功人员，并保证举报人的信息不被泄露。

举报电话：（010）88254396；（010）88258888

传 真：（010）88254397

E-mail：dbqq@phei.com.cn 

通信地址：北京市万寿路173信箱

电子工业出版社总编办公室

邮 编：100036

## 软件的信息及约定

编译本书时的R语言及核心包的信息如下。

R.version.string 

##[1] "R version 4.1.2 

（2021-11-01)" 

library(treedataverse) 

## Attaching packages 

treedataverse 0.0.1 

##ape 5.5treeio 1.18.1 

## dplyr1.0.7 ggtree3.2.1 

##ggplot23.3.5 ggtreeExtra 

1.4.1 

## tidytree 0.3.6 

其中，treedataverse是一个元包（metapackage），能帮助我们轻松地安装并加载本书中所介绍的用于树的处理及可视化的核心包。我们可以在附录A中找到安装treedataverse的指南。

本书的数据集有以下3个来源。

（1）模拟数据。

（2）R包中的数据集。

（3）从互联网上下载的数据。

为了使用户更容易地获取互联网中的数据，我们将这些数据集与能获取到其来源的详细信息存储到TDbook包中，这些信息包括URL、作者信息及引文信息。TDbook包已经被发布在CRAN上，而用户可以使用install.packages（"TDbook"）命令来安装TDbook包。

我们期待您的加入

投稿邮箱：

zhanghm@phei.com.cn 

交流学习：

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/931c7f409e054a91a0dc6e61286c5244c333799b2c9e8adf378dafd3aa4de15c.jpg)


系统发育树的计算生成和可视化已经成为生命科学研究中不可或缺的分析技术。

本书详细地介绍了使用R语言及相关软件包进行系统发育树分析及可视化的方法。我相信，与书中介绍的各种知名软件包一样，这本书也将成为从事生命科学相关研究的科学家、研究生和生物信息工程师的经典工具，能更好地帮助读者绘制属于自己的“生命之树”。

伯晓晨军事科学院军事医学研究院

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/3cb4550ee5465902b584110cc68e3ff3b92ce6aa26189bca3eea73938da7fb1c.jpg)



读者服务


微信扫码回复：45182

获取本书外链资源文档

加入本书读者交流群，与作者互动

获取【百场业界大咖直播合集】（持续更新），仅需1元

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/9035a300549e41050e33056948ecde50b651bc160bf034401bccb306593b1fd9.jpg)


责任编辑：张慧敏

封面设计：吴海燕


上架建议：程序设计/生物科学


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/0c5b8605-677d-4d9e-a0fa-b5e88a871f5b/9750b796d5466e65630d9e1d12b3baef58a52b3c57465fe0912cbb6a7f7ab6fe.jpg)



定价：109.00元
