荧光定量PCR 公众号  
- [[QPCR参考文献]] 
原理
![[../../../40 - Obsidian/附件/Pasted image 20250403120320.png]]
![[../../../40 - Obsidian/附件/Pasted image 20250403120338.png]]








最近很多朋友后台私信说，NIRO多更新一些关于写论文和作图的教程，真的很需要！应大家的需求，NIRO这期就讲解一下qPCR实验获取数据后，我们该如何进行作图，也给qPCR实验做个结尾。就像WB实验一样《[无敌了！这篇「Western Blot」实验文章](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247519828&idx=1&sn=d7b697bd027f31a4edbf79d6456b84c9&scene=21#wechat_redirect)》，整理所有实验步骤串联在一起，方便大家进行学习浏览。



![图片](https://mmbiz.qpic.cn/mmbiz_jpg/AUgNeMXmszz080kP1X4aANRlFXlvgHXnXiclzCpJV2kMl1yd0NSMHfAibJAMXJcgibiawMv3o6NC92p1FHfSmLUhZQ/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

在前面NIRO写过很多与qPCR实验相关的文章。也比较碎片化，因此NIRO这期也将qPCR相关知识点串联起来，这样就可以让我们在做实验过程中，解决遇到的各种各样的问题。

如果说你是刚开始接触PCR实验和qPCR实验，NIRO非常建议你看这三篇文章《[一图读懂PCR（耗材、试剂、仪器）的前世今生（销售必备）](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247504716&idx=1&sn=758773d84714fda92c5a28164394a1f6&scene=21#wechat_redirect)》、《[qPCR实验你会做吗？qPCR试剂你会选择吗？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247498446&idx=1&sn=2bb860a98db525477cdf97c1db864c10&scene=21#wechat_redirect)》和《[一文读懂常规PCR？多重PCR？多重qPCR？“全家桶”大合集来袭（技术支持必备）](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247505349&idx=1&sn=e28d8efc01f3dd948e082651322f60c2&scene=21#wechat_redirect)》，看完这两篇文章，你应该对PCR实验和qPCR实验基本熟悉，这也是未来从事生命科学试剂销售岗位和技术支持岗位必备知识。

对于qPCR实验而言，最重要的是RNA模板。如果RNA模板都降解了，不行了，也没必要做后续实验了。因此在这个阶段我们应该验证RNA的纯度和完整性，在这篇文章中着重讲解了RNA模板的重要性，感兴趣的可以浏览《[不跑电泳就谈RNA质量好坏的，都是耍流氓！](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247507037&idx=1&sn=49eef13b2aea303cc1cfe0b45b2ccb2f&scene=21#wechat_redirect)》。

同时，有朋友会问RNA模板通过逆转录后获得cDNA，再进行qPCR实验，那我直接用DNA作为模板可以吗？这个也是可以的。在这里我们可以根据这幅图就可以简单明了的知道原因。

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXn9Vk44WpEbIOWWm0APn0jWHOiczciaBdVAKaZEtXyOWXAickhL3sjGiaBFA/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

但是我们也需要明白DNA和cDNA的区别，感兴趣的可以看这篇文章《[组织中提取DNA能否直接qPCR实验? DNA和cDNA的有什么区别呢？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247508003&idx=2&sn=1489da4c6931278e41b152c996acfd87&scene=21#wechat_redirect)》这里不过多赘述。

无论是PCR实验还是qPCR实验，引物探针的设计是必不可少的。这关系着实验的成败，如果引物一次性成功，那实验就会很顺利。反之，会让你异常痛苦，不断停留在引物设计和引物验证阶段。所以，不知道如何设计引物和探针的朋友可以浏览这两篇文章《[干货 | NCBI/Oligo 7/primer 5 三种方法进行PCR引物设计教程](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247484153&idx=1&sn=3169f37302edc12a6eb7653c8ffbabfa&scene=21#wechat_redirect)》和《[为什么多重PCR和多重qPCR引物探针设计这么难？你了解多少？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247506177&idx=1&sn=89d5e78de0aac8d2b7bf280e8abb721f&scene=21#wechat_redirect)》。切记，合成引物回来后，按说明书稀释后，一定要跑普通PCR进行验证引物特异性，不要直接跑qPCR，这会很浪费试剂和时间精力的。

![PCR的基本原理和操作步骤](https://mmbiz.qpic.cn/mmbiz_jpg/AUgNeMXmszz080kP1X4aANRlFXlvgHXnPg3ficducE2l58nDqbgwOOdf2X4d1JJjFlhvjTb7IYmDv5O1SOf63nQ/640?wx_fmt=jpeg&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

获得合适的引物后，可以进行qPCR实验，在这里需要注意这些细节，可以看这两篇文章《[qPCR实验中经常忽略的实验细节？你有被cue了吗？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247507905&idx=1&sn=fb1d709305f15c36587118241b8dfba7&scene=21#wechat_redirect)》和《[你还不会qPCR实验吗？一文教你如何做qPCR实验！](https://mp.weixin.qq.com/s?__biz=Mzk0ODYwNjY0Mw==&mid=2247483963&idx=1&sn=868a7c0d6df0746ee7de8e2b30907fd1&scene=21#wechat_redirect)》。

当实验结果中Ct值过大或过小时，别慌！它有可能是你的RNA模板没有进行测浓度(RNA定量)，然后直接逆转录了，导致Ct值过大或过小。更多详细原因可以浏览这两文章《[qPCR实验的Ct值的合理范围（附Ct值过大或过小的解决方法）](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247503477&idx=1&sn=5f39560cfe8535bc35275e5bb1c498e1&scene=21#wechat_redirect)》和《[qPCR实验中，除了Ct值，还需要看扩增曲线和溶解曲线吗？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247508003&idx=1&sn=ac3ba625a3352e64156a7660ae6d940e&scene=21#wechat_redirect)》。

![干货 | Ct值过大怎么办？_化工仪器网](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnYNGzlDfmBdib9WT4JbZthKTsVstgKOB9agRNiaZe6Y9caqicKlzxU7e3g/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

qPCR实验结束后，我们也不能掉以轻心，我们要及时的分析qPCR实验数据，这样我们才知道数据是否可行，是否存在我们所需要的趋势。如果你不会分析qPCR实验数据，可以浏览这篇文章《[qPCR实验没失败！却失败在不会分析「qPCR实验数据」](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247511215&idx=1&sn=b988aa71d4f7d3eaaa86f9059a02a35a&scene=21#wechat_redirect)》。
![[../../../40 - Obsidian/附件/qPCR数据分析.xlsx]]

我们知道，qPCR实验是基因层面上的定量，而WB实验是蛋白层面的定量。而这两个实验结果经常会出现一些令人想不到的结果趋势。如果数据存在和WB实验结果不一致时，也不要慌，看这篇文章《[qPCR实验和WB实验结果「不一致」？](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247517436&idx=1&sn=44c1d9039f236358a3bdb3d274ba52bc&scene=21#wechat_redirect)》，或许就柳暗花明又一村了。

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXn8n6swuqNZZ9ys9KcuaArq2Y53x1a4J14kibvJoe8TNMVFicgEQa5lRHQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

前面NIRO讲过如何分析qPCR实验数据《[qPCR实验没失败！却失败在不会分析「qPCR实验数据」](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247511215&idx=1&sn=b988aa71d4f7d3eaaa86f9059a02a35a&scene=21#wechat_redirect)》，但没有讲过如何用这些数据作图，这也是很多朋友比较关心的，所以这期NIRO就介绍一下如何应用qPCR实验数据进行作图。

1. 输入数据  

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXn0d10AcicVRFX9Ev0LfHU3BLVkWOUDQgicTJUMQN5NISAyOBrmr8AS43A/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

(1) 表格类型: 主要使用Column格式，每列代表一个组。在双因素干预的情况下(三因素以上干预的情况较少，下期载讨论)，选择Grouped，每大列代表某因素的不同水平，每行代表另一个因素的不同水平。在需要输入复孔数据的情况下，也可以选择Grouped，但在qPCR中，只有技术重复有此需求。

(2) 在Column格式中，一般选择第一个。第二个与第一个没有本质的区别，只有作图的时候默认图类型不同。第三个创建后得到的是一种Grouped表。

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnEvicxmWQeAaoMUm6ep2jKZpgCxicn12vyb5YPbfrXGOziaU8ibxgDz6A0Q/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

2. 作图

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnAcIJH0ObG9jiaUXMU8k3bUsA2bwicBhDPo3ZtGLXS6JfyAibyHEBlNXRQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

3. 正态性检验(大多数情况，2^(-ΔΔCT)符合正态分布)

![图片](https://mmbiz.qpic.cn/mmbiz_jpg/AUgNeMXmszz080kP1X4aANRlFXlvgHXnxQ0fqaR2F0sxkGShnvO60icIStF1XyUz1fmOicqib20guHOaVIMVTcHlA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

4. 描述性统计

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnk5RCkg8l6wkb3ysbbK4XEIIOibPibNrYqovoCefBcgXJBUhGtCHzYpiag/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXn4UHN5OPFeRJ985iaTqKepgLIrfI1EShDCxFiaAASasVy4K3kTGfj9VicQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

5. 假设检验

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnico3Zgco7ibaNvvuMdkQazhPsRKBoYiaTxwqibNib1Es9pcyRibn13Zv6YgQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnZBwiacgEFLRKt4eiaSichUdicxlq2w1u89H6ZgCfxvYLJ5FUbq36QM1XBg/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnMy4H1Hl26Hw3Ag4x3f90gNttH9xjBplvrc7tOOs5pKN9u5nZnsNrWQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

6. AVONA的结果阅读

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnIhsHUKYXiaaqaia8xogYhyutZfib0DQ6VicHZHRyHVSozJ4OxOhQ7pnUfA/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

7. post-hoc的结果阅读

(1) 两两比较

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXncmzAnJYNEclaFm59rVyXibgTB4GUAcKQM3Wfa9mMjeLdklhOpvLPzNg/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

(2) 和对照组比较

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXnIHQdx5mfCMBUk7tGyicPjoNcsIMic3iaj8sOf9LlwrajYIPSJIkZNfHiaQ/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

8. 标显著性差异

![图片](https://mmbiz.qpic.cn/mmbiz_png/AUgNeMXmszz080kP1X4aANRlFXlvgHXngTDXYicLc6JXHHwfIw7AAwLYcwj8DqzAde6PEa2C6MiaCrvWfMKKYboA/640?wx_fmt=png&from=appmsg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

对于标显著性差异有不理解的朋友，可以浏览这两篇文章《[简单明了一步到位！教你如何进行「显著性差异」abcd字母标注法...](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247519910&idx=1&sn=95dcee845c0b4d9425824196fc0e9dd2&scene=21#wechat_redirect)》和《[导师以为你会，但不一定教你的「显著性差异」分析！](https://mp.weixin.qq.com/s?__biz=MzA5NzI1NjUwNw==&mid=2247519978&idx=1&sn=dc6d492d7514b9fb164e286f74d4946c&scene=21#wechat_redirect)》。

16s R51-F 
TGTAGCGGTGAAATGCGTAG 

3 3(1管加水) RPC[1] 　 　 　 　  　 

2 16s R51-R 
CAAGGGCACAACCTCCAAG 



对照组
QPCR-R51WT
QPCR-R51-KO2
QPCR-R51-KO3
QPCR-R51-KO7
胁迫组
QPCR-R51WT
QPCR-R51-KO2
QPCR-R51-KO3
QPCR-R51-KO7