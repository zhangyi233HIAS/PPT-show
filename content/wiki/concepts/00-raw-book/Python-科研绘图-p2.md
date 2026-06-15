![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/1ae9fd014467a195ebdf70a034973146fbb7766c73c772d2c9adda15cbc9d9ae.jpg)



图4-9婴儿出生数据的分类箱线图


## 4.4 密度图

密度图是一种用于可视化数据分布的图形，它显示了连续变量的概率密度分布。

## 4.4.1 密度图的应用

密度图的主要应用如下。

（1）显示数据分布形态：密度图能直观地展示出数据的分布形式，如正态分布、偏态分布、多峰分布等。

（2）比较不同数据分布：可以通过多个密度图的重叠来比较不同数据样本的分布形状。

（3）发现数据集中的模态：密度图可以清楚地显示出数据集的单模态、双模态或多模态分布。

（4）查找突出点或异常值：在密度图中可以观察到异常突出的峰值点或偏离主曲线的异常点。

（5）评估拟合效果：可以通过观察数据分布与理论分布拟合曲线的重合状况来评估拟合效果。

（6）显示离散型变量的连续概率：可以为离散型数据生成密度曲线，将其可视化为连续分布。

（7）密度图也可以与其他图形组合使用，如与箱线图重叠以同时显示密度和四分位数。

总之，密度图可以通过直观的曲线展示数据分布的细节，能提供比直方图和箱线图更丰富的信息，是了解和展示数据集分布的有效工具。

## 4.4.2 绘制密度图

可以使用Seaborn或Matplotlib绘制密度图。笔者推荐使用Seaborn绘制密度图。

Seaborn绘制密度图的函数是kdeplot函数，该函数的主要参数如下。

data参数：指定要绘制密度图的数据列。

fill参数：设置为True以填充密度曲线下方的区域，增强可读性。

color参数：指定曲线的颜色。

示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 创建示例数据
data = sns.load_dataset("iris")
# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 绘制密度图
sns.kdeplot(data=data["sepal_length"], fill=True, color="skyblue")

# 添加标题和轴标签
```

```kotlin
plt.title("密度图")
plt.xlabel("X轴标签")
plt.ylabel("Y轴标签")
plt.show()
```

运行示例代码，绘制的图形如图4-10所示。


密度图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/59165260e3b1c026b5165c62ec97fb651facf1a7fb5ee74b349ac6d033160613.jpg)



图4-10 密度图


## 4.4.3示例：绘制德国每日电力消耗密度图

下面我们通过一个示例介绍如何绘制密度图。该示例是采用密度图可视化分析德国每日电力消耗情况，数据来

自“opsd_germany_daily.csv”文件，文件的部分内容如图4-11所示。

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>1</td><td>Date</td><td>Consumption</td><td>Wind</td><td>Solar</td><td colspan="2">Wind+Solar</td><td></td><td></td><td></td></tr><tr><td>2</td><td>2006/1/1</td><td>1069.184</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>2006/1/2</td><td>1380.521</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>2006/1/3</td><td>1442.533</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>2006/1/4</td><td>1457.217</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>2006/1/5</td><td>1477.131</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>2006/1/6</td><td>1403.427</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>2006/1/7</td><td>1300.287</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>2006/1/8</td><td>1207.985</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>2006/1/9</td><td>1529.323</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>2006/1/10</td><td>1576.911</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>2006/1/11</td><td>1577.176</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td>2006/1/12</td><td>1553.28</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td>2006/1/13</td><td>1545.002</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td>2006/1/14</td><td>1359.945</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>2006/1/15</td><td>1265.475</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td>2006/1/16</td><td>1563.738</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>2006/1/17</td><td>1598.303</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>2006/1/18</td><td>1572.984</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td>2006/1/19</td><td>1558.29</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td>2006/1/20</td><td>1540.604</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图4-11 opsd_germany_daily.csv文件


示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

# 读取 CSV 文件
data = pd.read_csv("data/opsd_germany_daily.csv")

# 创建密度图
# 设置样式为白色背景带有网格线
sns.set_style('whitegrid', {'font.sans-serif': ['SimHei', 'Arial']})
density_plot = sns.kdeplot(data=data["Consumption"], fill=True, color="skyblue", linewidth=2)

# 添加标题和轴标签
plt.title("电力消耗密度图")
plt.xlabel("电力消耗")
plt.ylabel("密度")

# 显示密度图
plt.show()
```

运行示例代码，绘制的图形如图4-12所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/4415870cc8312fbcabe6f9a4c412df88616622c19c399e206c85a1e7aca6034d.jpg)



图4-12电力消耗密度图


## 4.5 小提琴图

小提琴图（见图4-13）是一种数据可视化图形。它用于可视化数据的分布和密度，以帮助分析数据的形状、中位数、上下四分位数范围及可能的多峰性。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/681d39109bf5ce10477a1f16942d66437d50be6f4c27e20ff08ab3da725dd6ba.jpg)



图4-13 小提琴图


## 4.5.1 小提琴图与密度图的区别

小提琴图和密度图都是用于展示数据分布形态的图形，主要区别如下。

（1）小提琴图同时展示了数据的密度分布和四分位数信息。密度图只显示分布的形状。

（2）小提琴图通过原始样本直接生成。密度图通过核函数估计得到概率密度曲线。

（3）小提琴图对数据量少的样本也能给出合理估计。密度图需要足够大的样本量。

（4）小提琴图更直观，可以直接看出数据的峰值、偏斜情况。密度图需要解析。

（5）小提琴图侧重展示样本本身分布。密度图可以绘制理论分布与数据的拟合效果。

（6）小提琴图更适合比较不同的数据集。密度图更适合单个数据集的分布形态。

（7）小提琴图对异常值或离群点更敏感。密度图中的异常值或离群点对总体曲线影响较小。

总体来说，小提琴图的信息更丰富直观，更适合对比多数据集；密度图更抽象简洁，着重显示数据整体分布形状。两者可相辅相成，提供更全面的分布视图。

## 4.5.2 示例：绘制德国每日电力消耗小提琴图

小提琴图与密度图类似，本节将4.4.3小节的示例使用小提琴图重新绘制，示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 读取数据
data = pd.read_csv("data/opsd_germany_daily.csv")
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})

# 创建小提琴图
plt.figure(figsize=(6, 4))
sns.violinplot(data=data, y="Consumption", color="skyblue")
# 添加标题和轴标签
```

```python
plt.title("电力消耗小提琴图")
plt.xlabel("")
plt.ylabel("电力消耗")

# 显示小提琴图
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.violinplot()函数创建小提琴图，指定数据源为读取的DataFrame对象，y轴为“Consumption”列，小提琴的颜色为“skyblue”。

运行示例代码，绘制的图形如图4-14所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/cf88dfedf1f61c546778a87eaa64300bb213413d84518dfe7c41493fe82aaf14.jpg)



图4-14电力消耗小提琴图


## 4.5.3示例：绘制婴儿出生数据小提琴图

小提琴图对异常值或离群点很敏感，本节我们将4.3.2小节的示例绘制成小提琴图，用来检测异常值，示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

# 读取 CSV 文件
data = pd.read_csv("data/婴儿出生数据.csv", encoding='utf-8') # 假设文件编码为 UTF-8

# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 创建小提琴图
plt.figure(figsize=(8, 6))
sns.violinplot(y="births", data=data, palette="pastel", width=0.5)

# 添加标题和轴标签
plt.title("婴儿出生数据的小提琴图")
plt.ylabel("出生人数")
plt.xlabel("")
```

运行示例代码，绘制的图形如图4-15所示。


婴儿出生数据的小提琴图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/2b7303b1b532522c3d6ebed2d904e9ff9c45e2314b5ff4e6fe945167528316c6.jpg)



图4-15 婴儿出生数据的小提琴图


## 4.6 饼图

饼图是一种常用的数据可视化工具，用于显示不同类别或部分占整体的比例关系。饼图通常是一个圆形，被分割成多个扇形，每个扇形的面积表示相应类别或部分所占比例的大小。

## 4.6.1 绘制饼图

饼图可以使用Matplotlib库绘制，因为Matplotlib提供了创建饼图的函数。Seaborn主要用于创建其他类型的统计图表，例如，散点图、柱状图、箱线图等。

在Matplotlib库中，绘制饼图使用plt.pie函数，plt.pie函数中的参数如下。

sizes：各部分的比例，通常是一个包含各部分比例的列表。

explode：用于指定是否将某个部分分离出来的参数，以及分离的程度。

labels：各部分的标签，通常是一个包含标签的列表。

colors：各部分的颜色，通常是一个包含颜色值的列表。

autopct：用于在饼图中显示百分比的格式字符串。

shadow：用于指定是否添加阴影效果。

startangle：起始角度，决定了饼图的起始位置。

绘制饼图的示例代码如下。

```python
import matplotlib.pyplot as plt 
```

```txt
plt.rcParams['font.family'] = ['SimHei'] # 设置中文字体
```

```txt
plt.rcParams['axes.unicode_minus'] = False # 设置负号显示
```

```txt
labels = ['未治疗', '药物治疗', '手术治疗'] ①
```

```toml
sizes = [487, 1928, 652] 
```

```txt
colors = ['#ff9999', '#66b3ff', '#99ff99'] # 不同颜色
```

```txt
explode = (0, 0, 0.1) # 增加手术治疗部分的突出度 ②
```

```txt
fig, ax = plt.subplots(figsize=(6, 6)) 
```

```python
ax.pie(sizes,
explode=explode,
labels=labels,
colors=colors,
autopct='%.1f%%',
shadow=True,
startangle=90,
wedgeprops={'edgecolor': 'gray', 'linewidth': 1.5},
textprops={'fontsize': 12}
) 
```

```txt
plt.title("不同治疗方式的比例")
```

```txt
ax.legend(labels, loc="lower center", bbox_to_anchor=(0.5, -0.2), fancybox=True, shadow=True, ncol=3) ⑥ 
```

```txt
plt.show() 
```

主要代码的解释如下。

代码第①～②行定义数据：labels 是饼图中各部分的标签，sizes 是每个部分的大小（比例），colors 用来表示各部分的颜色，explode 用来突出显示某部分的偏移值。

代码第③行使用ax.pie() 函数来绘制饼图，传入了各种参数来控制饼图的外观，包括大小、标签、颜色、百分比显示、阴影效果、起始角度等。

代码第④行中的“wedgeprops” 是用来设置饼图扇形部分的属性参数。

'edgecolor': 'gray' 指定了扇形部分的边缘线颜色为灰色。

'linewidth': 1.5 指定了扇形部分的边缘线宽度为1.5个单位。

代码第⑤行中的“'fontsize':12”指定了文本标签的字体大小为12个单位，这个设置可以调整饼图中标签的字体大小，使其更易阅读和清晰可见。

代码第⑥行将饼图的图例（legend）放置在图形的外部底部，并对图例进行了一些自定义设置。下面是对其中参数的解释。

labels:这是图例的标签，即要显示在图例中的文本内容，这里使用了之前定义的labels变量，包含了饼图各部分的标签。

loc="lower center": 这个参数指定了图例的位置，"lower center"表示将图例放在图形的底部中间位置。

bbox_to_anchor=(0.5, -0.2): 这个参数指定了图例的具体位置，(0.5,-0.2)表示图例的中心点位于图形的横坐标中央（0.5）和纵坐标稍微下移（-0.2）的位置。这个参数的值是以图形的坐标系为基准的。

fancybox=True: 这个参数表示使用图例的边框效果，使图例带有圆角和阴影效果。

shadow=True:这个参数表示图例带有阴影效果，增强了图例的视觉效果。

ncol=3:这个参数指定了图例的列数，这里的3表示图例中的标签以3列的方式排列。

运行示例代码，绘制的图形如图4-16所示。


不同治疗方式的比例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/b8f2038807f95cdc6cbf8d3218cd74a2b558e4ea58f841e44667486c3b1fc3b9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/97351b567b83af15db790758d7d13f377a29983584e1a7627f25b51e869ead14.jpg)


未治疗

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/282495b7de2635311e9d07094026daf8debdaaa84c05f351347d0ad80ebee5c3.jpg)


药物治疗

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/6f58344f51c486ea3a93304774b9fc6050ecd972087086ae77450729297b54cd.jpg)


手术治疗

图4-16不同治疗方式的比例饼图

## 4.6.2示例：绘制婴儿性别比例饼图

本示例是从“婴儿出生数据.csv”文件中读取数据，然后计算男性和女性婴儿的数量，并绘制饼图显示出来。

示例代码如下。

```txt
import matplotlib.pyplot as plt
import pandas as pd 
```

```python
import matplotlib.pyplot as plt 
```

```python
data = pd.read_csv("data/婴儿出生数据.csv")
```

```python
male_count = (data["gender"] == "M").sum()
female_count = (data["gender"] == "F").sum() 
```

```txt
total_count = male_count + female_count
male_percentage = (male_count / total_count) * 100
female_percentage = (female_count / total_count) * 100 
```

```txt
male_percentage = round(male_percentage, 2)
female_percentage = round(female_percentage, 2) 
```

```python
gender_data = pd.DataFrame({
    "Gender": ["男性", "女性"],
    "Count": [male_count, female_count],
    "Percentage": [male_percentage, female_percentage]
})
```

```python
plt.figure(figsize=(6, 6))
plt.pie(gender_data["Count"],
    labels=gender_data["Gender"],
    autopct='%1.2f%%',
    startangle=90,
    colors=['blue', 'pink']) 
```

```txt
plt.title("婴儿性别比例饼图")
```

```txt
plt.show() 
```

主要代码的解释如下。

代码第①～②行计算男女婴儿的数量，其中使用Pandas中的.sum()函数和条件进行筛选，计算男性和女性婴儿的数量。

代码第③行使用Matplotlib中的pie()函数绘制饼图，其中的参数说明如下。

gender_data["Count"]: 使用男女婴儿数量作为数据。

labels=gender_data["Gender"]: 使用性别标签作为饼图标签。

autopct='%1.2f%%': 设置饼图上的百分比标签，并保留两位小数。

startangle=90: 设置饼图的起始角度为90。

colors=['blue', 'pink']: 指定男女性别的颜色。

运行示例代码，绘制的图形如图4-17所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/06401f2b3e25e88f91d22a541ad97c44f174ad179e2518c38698ca18ff322a9d.jpg)



图4-17婴儿性别比例饼图


## 4.7 环状图

环状图是一种数据可视化图表，与饼图类似，但有中空的中心部分。环状图通常用于显示各个部分相对于整体的比例，特别适用于表示层次关系或多个类别的组合。

在Matplotlib中，可以使用plt.pie()函数创建环状图，并通过wedgeprops参数设置空白的宽度和边缘颜色。

下面这个示例代码展示了如何创建一个简单的环状图。

```python
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']
plt.rcParams['axes.unicode_minus'] = False
# 数据
labels = ['A', 'B', 'C', 'D']
sizes = [15, 30, 45, 10]
colors = ['#ff9999', '#66b3ff', '#99ff99', '#ffcc99']
explode = (0.1, 0, 0, 0)

# 创建图表
fig, ax = plt.subplots()

# 绘制环状图
ax.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%',
    shadow=True, startangle=90,
```

```coffeescript
wedgeprops={'width': 0.4, 'edgecolor': 'w'})
# 添加标题
ax.set_title("环状图示例")
# 显示图表
plt.axis('equal')
plt.show()
```

上述代码第①行中的wedgeprops 参数是用来设置环状图内部空白（或称为“圆环”的宽度）和边缘颜色的字典。在这个参数中，有两个关键字参数。

'width':0.4：这个参数控制环状图内部空白的宽度，取值范围通常为0到1，其中0表示内部空白为零，即完全填充，1表示完全为空心，即环状图只有边框而没有填充。在示例中，'width':0.4 表示内部空白的宽度为总半径的40%。

'edgecolor': 'w'：这个参数控制环状图边缘的颜色，'w' 表示白色，即环状图的边缘线颜色为白色。你可以根据需要将其设置为其他颜色，例如， 'black' 表示黑色。

通过调整这两个参数，我们可以自定义环状图的内部空白宽度和边缘颜色，以满足特定的可视化需求。


环状图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/56f1a74088eb8650cf1e3274bc1a3fe1fa4591d891ffd550f22e4c6622e69ad1.jpg)



图4-18 环状图示例


运行示例代码，绘制的图形如图4-18所示。

## 4.8 本章总结

本章主要介绍了常见的单变量图形的绘制方法，包括直方图、箱线图、密度图、小提琴图、饼图和环状图。

直方图展示定量数据分布，箱线图反映数据的集中趋势和离群点，密度图描绘分布形状，小提琴图在此基础上增加对称性，饼图展示分类数据组成比例，环状图以环形方式展示数据组成比例。

通过示例，我们可以学习这些图形的绘制方法，并对比在同一数据集上的可视化效果。这些图形在实际数据分析中应用广泛，掌握其绘制方法可以更直观地观察和理解数据分布。

## 第5章 绘制双变量图形

本章将介绍几种常见且重要的双变量图形绘制方法。

散点图用来显示数值变量的对应关系。

折线图和面积图用来显示变量之间的趋势变化。

柱状图用来比较分类数据的数值大小。

热力图用颜色映射数值的变化。

双变量核密度图用来显示两个连续变量的联合分布。

线性回归图用来呈现两变量间的线性关系。

通过学习这些图形的绘制及对比同一数据上的可视化效果，可以让我们更好地分析变量之间的依赖关系。掌握绘制双变量图形对数据分析非常重要。

## 5.1 散点图

散点图是最基本的双变量图之一，用于显示两个变量之间的关系。每个数据点在图上表示为一个点，其中一个变量位于X轴，另一个变量位于Y轴。通过观察散点图，可以识别出两个变量之间的趋势、关联性和离群值。

散点图通常用于以下情况。

（1）关联分析：散点图可以帮助你确定两个变量之间是否存在关联关系。如果散点图显示数据点在图上形成一条趋势线（正相关或负相关），则可以得出两个变量之间存在一定的关联。

（2）异常值检测：通过查看散点图，你可以轻松地识别任何偏离正常模式的异常值。异常值通常是图上离群的数据点。

（3）集群识别：如果散点图中存在多个簇（聚类），则可以推断出数据在不同组之间具有不同的特性。

（4）趋势分析：散点图可以帮助你分析数据的趋势，例如，是否存在周期性的模式或趋势。

（5）相关性分析：通过计算两个变量之间的相关系数，我们可以定量地衡量它们之间的关联程度。

以下是一些散点图的应用示例。

（1）金融市场分析：用于分析不同资产之间的相关性，以便构建投资组合。

（2）医学研究：用于研究药物剂量与患者症状之间的关系。

（3）生态学：用于分析不同环境因素之间的相互作用，如温度和物种多样性之间的关系。

（4）制造业质量控制：用于检测生产过程中的异常值和质量问题。

## 5.1.1 绘制散点图

可以使用Python中的各种绘图库绘制散点图，例如Matplotlib、Seaborn或Pandas。

以下是使用Seaborn来创建散点图的示例代码。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()

# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif': ['SimHei', 'Arial']})

# 示例数据
x = [1, 2, 3, 4, 5]
y = [2, 3, 5, 4, 6]

# 创建散点图
sns.scatterplot(x=x, y=y)

# 添加轴标签和标题
plt.xlabel('X 轴标签')
plt.ylabel('Y 轴标签')
plt.title('示例散点图')

# 显示图表
plt.show()
```

示例代码中使用scatterplot()函数绘制散点图，其中参数x和y分别表示数据点在x轴和y轴上的位置。

运行示例代码，绘制的图形如图5-1所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/a803be3ed893a2e7eb4c7a6d8bf9a0841ddccb07ff407e5bea666fbdb05ca567.jpg)



图5-1示例散点图


## 5.1.2示例：绘制汽车燃油效率散点图

本节数据来自“mpg_ggplot2.csv”文件，是一份有关汽车燃油效率的数据集，内容如图5-2所示。

<table><tr><td colspan="2">A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>C</td></tr><tr><td>1</td><td>manufacturer</td><td>model</td><td>displ</td><td>year</td><td>cyl</td><td>trans</td><td>drv</td><td>cty</td><td>hwy</td><td>fl</td><td>class</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>audi</td><td>a4</td><td>1.8</td><td>1999</td><td>4</td><td>auto(l5)</td><td>f</td><td>18</td><td>29</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>audi</td><td>a4</td><td>1.8</td><td>1999</td><td>4</td><td>manual(m5)</td><td>f</td><td>21</td><td>29</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>audi</td><td>a4</td><td>2</td><td>2008</td><td>4</td><td>manual(m6)</td><td>f</td><td>20</td><td>31</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>audi</td><td>a4</td><td>2</td><td>2008</td><td>4</td><td>auto(av)</td><td>f</td><td>21</td><td>30</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>audi</td><td>a4</td><td>2.8</td><td>1999</td><td>6</td><td>auto(l5)</td><td>f</td><td>16</td><td>26</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>audi</td><td>a4</td><td>2.8</td><td>1999</td><td>6</td><td>manual(m5)</td><td>f</td><td>18</td><td>26</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>audi</td><td>a4</td><td>3.1</td><td>2008</td><td>6</td><td>auto(av)</td><td>f</td><td>18</td><td>27</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>audi</td><td>a4 quattro</td><td>1.8</td><td>1999</td><td>4</td><td>manual(m5)</td><td>4</td><td>18</td><td>26</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>audi</td><td>a4 quattro</td><td>1.8</td><td>1999</td><td>4</td><td>auto(l5)</td><td>4</td><td>16</td><td>25</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>audi</td><td>a4 quattro</td><td>2</td><td>2008</td><td>4</td><td>manual(m6)</td><td>4</td><td>20</td><td>28</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>audi</td><td>a4 quattro</td><td>2</td><td>2008</td><td>4</td><td>auto(s6)</td><td>4</td><td>19</td><td>27</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td>audi</td><td>a4 quattro</td><td>2.8</td><td>1999</td><td>6</td><td>auto(l5)</td><td>4</td><td>15</td><td>25</td><td>p</td><td>compact</td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td>audi</td><td>a4 quattro</td><td>2.8</td><td>1999</td><td>6</td><td>manual(m5)</td><td>4</td><td>17</td><td>25 p p compact</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>15 audi a4 quattro 3.1 2008 6 auto(s6) 4 17 25 p compact</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图5-2 mpg_ggplot2.csv文件内容


mpg_ggplot2数据集包含了以下信息。

manufacturer：汽车制造商的名称。

model：汽车型号。

displ：发动机排量（升）。

year：生产年份。

cyl：汽缸数量。

trans：变速器类型。

drv：驱动类型。

cty：城市里程（每加仑的英里数）。

hwy：高速公路燃油里程（每加仑的英里数）。

fl：燃料类型。

class：汽车类型/类别。

这个数据集通常用于探索汽车的燃油效率与其他因素（如制造商、型号、发动机排量等）之间的关系，并进行数据可视化分析，例如绘制散点图、箱线图和直方图等。

本节示例根据汽车的发动机排量、高速公路燃油里程以及车型类别，创建一个可视化的散点图，用于比较不同车型之间的燃油效率。不同车型的散点用不同的颜色表示，并在图例中进行了说明。

示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})

# 读取数据
data = pd.read_csv("data/mpg_ggplot2.csv") ①
# 创建普通散点图
plt.figure(figsize=(8, 6))
sns.scatterplot(data=data,
    x="displ",
    y="hwy",
    s=100) # 设置点的大小
# 添加标题和轴标签
plt.title("汽车燃油效率散点图")
plt.xlabel("发动机排量 (displ)")
plt.ylabel("高速公路燃油里程 (hwy)")
```

```txt
# 显示图表
plt.grid(True)
plt.show()
```

主要代码的解释如下。

代码第①行使用Pandas中的read_csv()函数读取名为“mpg_ggplot2.csv” 的CSV文件，并将其存储在名为 “data” 的DataFrame中。

代码第②行使用Seaborn中的scatterplot()函数创建散点图。具体参数的解释如下。

data=data：指定要使用的数据集。

$\mathrm { x } { = } " \mathrm { d i s p l " }$ ：将发动机排量（"displ"列）作为x轴的数据。

$\mathrm { { y } = " h w y " }$ ：将高速公路燃油里程（"hwy"列）作为y轴的数据。

$s { = } 1 0 0$ ：设置散点的大小为100。

运行示例代码，绘制的图形如图5-3所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/175edc3dd2bfd9b160b0247755031af67bc0fdfb2de04f0c2596589a911a5011.jpg)



图5-3汽车燃油效率散点图


## 5.1.3 带状散点图

带状散点图（StripPlot）是一种用于可视化分类数据的散点图。它通常用于显示不同类别或组之间的数据点分布，以及每个数据点的具体位置。绘制带状散点图的目的是使数据点在分类变量的水平位置上均匀分布，以便更好地观察它们的分布和密度。

以下是使用Seaborn绘制带状散点图的示例代码。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})
# 示例数据
data = sns.load_dataset("tips")

# 创建带状散点图
plt.figure(figsize=(8, 6))
# jitter 参数用于添加一些随机性，防止数据点重叠
```

```python
sns.stripplot(data=data, x="Day", y="Total_Bill", jitter=True)
plt.xlabel('Day')
plt.ylabel('Total Bill')
plt.title('带状散点图 - Total Bill vs Day')
plt.show()
```

在上面的示例代码中，我们使用Seaborn加载了一个名为“tips”的数据集，并创建了一个带状散点图来比较不同用餐日（'Day'行）的总账单金额（'Total Bill'列）。我们通过设置“jitter=True”参数来添加一些随机性，以避免数据点的重叠。

带状散点图非常适合可视化分类数据中不同类别的数据分布，特别是当数据点比较密集时，它可以帮助我们更清晰地观察每个数据点的位

置。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/ab9fe3100eb2b0a0c3dd0a80d597ab6acf98702dd5662fd4ca1e1979aaba7e64.jpg)



图5-4 带状散点图 - Total Bill vs Day


运行示例代码，绘制的图形如图5-4所示。

## 5.1.4示例：绘制汽车燃油效率带状散点图

为了比较带状散点图与普通散点图，本节我们将5.1.2小节的示例修


改为带状散点图，示例代码如下。


```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})

# 读取数据
data = pd.read_csv("data/mpg_ggplot2.csv")

# 创建带状散点图，使用 "class" 列作为分类变量
plt.figure(figsize=(12, 6)) # 增加图的宽度
```

```txt
sns.stripplot(data=data, x="class", y="hwy", jitter=True, s=10)
# 添加标题和轴标签
plt.title("不同车辆类别的汽车燃油效率带状散点图")
plt.xlabel("车辆类别 (class)")
plt.ylabel("高速公路燃油里程 (hwy)")

# 旋转横轴刻度标签
plt.xticks(rotation=45)

# 显示图表
plt.grid(True)
plt.show()
```

主要代码的解释如下。

代码第①行使用Seaborn的stripplot()函数创建带状散点图，参数的解释如下。

data=data: 指定要使用的数据集。

$\mathbf { X } { } ^ { = " } \mathbf { C } \mathbf { l a s s } ^ { \prime \prime }$ : 指定X轴上的数据，这里是车辆类别。

$\mathrm { { y } = " h w y " }$ : 指定Y轴上的数据，这里是高速公路燃油里程。

jitter=True: 通过设置为True来添加抖动，以避免数据点的重叠。

$\mathsf { s } { = } 1 0 \mathsf { : }$ 设置点的大小为10，这里指定了点的直径。

运行示例代码，绘制的图形如图5-5所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/56b77c5dfacfc5090707c61c9da5a13a5fd12154259bbc9ddd5e1576d24df1f1.jpg)



图5-5不同车辆类别的汽车燃油效率带状散点图


## 5.1.5蜂群状散点图

蜂群状散点图（SwarmPlot）是一种用于可视化分类数据分布的图表类型，类似于带状散点图。它适用于展示分类变量与连续或定量变量之间的关系，并且具有以下特点。

（1）沿分类轴上的每个类别，数据点被均匀地分散，避免了重叠，使得每个数据点都能够清晰可见。

（2）可以观察到数据点的分布密度和集中程度，以及不同类别之间的差异。

以下是使用Seaborn绘制蜂群状散点图的示例代码。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif': ['SimHei', 'Arial']})

# 使用 Seaborn 内置的 tips 数据集
tips = sns.load_dataset("tips")

# 绘制蜂群状散点图
plt.figure(figsize=(8, 6))
sns.swarmplot(x='day', y='tip', data=tips)
plt.xlabel('Day')
plt.ylabel('Tip Amount')
plt.title('蜂群状散点图示例')
plt.show()
```

在上面的示例代码中，我们使用Seaborn加载了一个名为“tips”的数据集，并创建了一个蜂群状散点图来比较不同用餐日（'Day'行）的小费金额（'Tip Amount'列）。

蜂群状散点图非常适合可视化分类数据中不同类别的数据分布，特别是当数据点比较密集时，它可以帮助我们更清晰地观察每个数据点的位置。

运行示例代码，绘制的图形如图5-6所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/55dc9323974042b76a54de3c34899254cdf3e1900de96181c32303aa2d9941c0.jpg)



图5-6 蜂群状散点图示例


## 5.1.6 示例：绘制汽车燃油效率蜂群状散点图

为了比较蜂群状散点图与带状散点图，本节我们将5.1.4小节的示例修改为蜂群状散点图，示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})

# 读取数据
data = pd.read_csv("data/mpg_ggplot2.csv")

# 创建蜂群状散点图，使用 "class" 列作为分类变量
plt.figure(figsize=(12, 6))    # 增加图的宽度
sns.swarmplot(data=data, x="class", y="hwy", s=4)

# 添加标题和轴标签
plt.title("不同车辆类别的汽车燃油效率蜂群状散点图")
plt.xlabel("车辆类别 (class)")
plt.ylabel("高速公路燃油里程 (hwy)")

# 旋转横轴刻度标签
plt.xticks(rotation=45)

# 显示图表
plt.grid(True)
plt.show()
```

主要代码的解释如下。

代码第①行使用Seaborn的swarmplot()函数创建蜂群状散点图，其中参数的解释如下。

data=data：指定要使用的数据集。

x="class"：指定x轴上的数据，这里是车辆类别。

$\mathrm { { y } = " h w y " }$ ：指定y轴上的数据，这里是高速公路燃油里程。

s=4：设置点的大小为4。

运行示例代码，绘制的图形如图5-7所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/4007922b75a83b5853b2f762e4d521a0d7be9195defc1c90db12427a729fd5df.jpg)



图5-7 不同车辆类别的汽车燃油效率蜂群状散点图


## 5.1.7 分类散点图

在4.3.3小节我们介绍了Seaborn库用于分类的hue和palette参数，本节我们介绍用于分类的style（样式）参数。

style参数是Seaborn中用于分类数据可视化的一个参数，它允许我们通过指定不同的样式来区分不同类别的数据点或线条。在多种图表类型中都可以使用style参数，以提高数据可视化的可区分性。

使用style参数的分类散点图示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif':['SimHei', 'Arial']})
# 创建示例数据
data = sns.load_dataset("iris")

# 绘制散点图，使用样式参数来区分不同种类的鸢尾花
plt.figure(figsize=(8, 6))
sns.scatterplot(x="sepal_length", y="sepal_width", hue="species", style="species", data=data)
```

```python
添加标题
plt.title("鸢尾花数据的散点图")
# 显示图例
plt.legend(title="种类")
# 显示图表
plt.grid(True)
plt.show()
```

在这个示例代码中，加载了Seaborn内置的鸢尾花数据集，然后使用scatterplot()函数绘制了散点图。通过设置hue参数来区分不同种类的鸢尾花，并通过style参数来使用不同的样式表示每个种类，使得不同种类的数据点在图表中有不同的标记。这有助于更清晰地区分不同类别的数据点，提高了数据可视化的可读性。

运行示例代码，绘制的图形如图5-8所示。


鸢尾花数据的散点图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/2b23f3b5916a3d7fa14828a2ead0ee3395727ad86acabec441f7a548d9f67b31.jpg)



图5-8 鸢尾花数据的散点图


## 5.2 折线图

折线图通常用于显示两个变量之间的趋势随时间的变化。

下面是折线图的应用示例。

（1）股票价格趋势图：折线图经常用于展示股票价格随时间的波动情况。通常X轴表示时间，Y轴表示股票价格，每个点对应某一时刻的股价。这种图形可以帮助投资者分析股票的走势和趋势。

（2）气温变化趋势图：气象学家使用折线图来显示某个地区的气温随季节或年份的变化。这种图形可以帮助人们理解气候模式和季节性变化。

（3）销售数据趋势图：企业可以使用折线图来跟踪产品销售情况随时间的变化。这种图形可以帮助企业管理者了解产品销售的季节性、趋势和周期性模式。

（4）生产指标趋势图：制造业可以使用折线图来监控生产指标，如产量、质量和效率随时间的变化。这有助于优化生产流程和识别潜在问题。

无论是在商业、科学、教育还是其他领域，折线图都是一种强大的工具，可用于可视化和分析随时间或其他连续型变量的数据趋势。

## 5.2.1 绘制折线图

可以使用Matplotlib和Seaborn库绘制折线图，以下是一个使用Seaborn绘制折线图的示例代码。

```python
import seaborn as sns
import matplotlib.pyplot as plt
# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style({'font.sans-serif': ['SimHei', 'Arial']})

# 示例数据
x = [1, 2, 3, 4, 5]
y = [10, 12, 5, 8, 9]

# 创建折线图
sns.lineplot(x=x, y=y)

# 添加标题和轴标签
plt.title('示例折线图')
plt.xlabel('X 轴标签')
plt.ylabel('Y 轴标签')

# 显示折线图
plt.show()
```

在这个示例代码中，我们使用Seaborn中的lineplot()函数创建了一个折线图，然后添加了标题和轴标签，最终使用Matplotlib的plt.show()函数来显示图表。

运行上述代码，绘制的图形如图5-9所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/d2ef6af37392bed8777320bc185efb2fa1aaeb77c2f9c07e3851809515a11d31.jpg)



图5-9示例折线图


## 5.2.2示例：绘制婴儿出生数据折线图

在4.3.2小节我们使用过“婴儿出生数据.csv”数据，下面我们使用该数据集绘制婴儿出生数据折线图，示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 读取 CSV 文件
data = pd.read_csv("data/婴儿出生数据（清洗后）.csv")

# 设置 Seaborn 风格
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 将年、月、日合并为日期列
data['date'] = pd.to_datetime(data[['year', 'month', 'day']].astype(str).agg('-'.join, axis=1)) ①

# 创建折线图
plt.figure(figsize=(10, 6))
sns.lineplot(data=data, x='date', y='births', color='blue') ②

# 添加标题和轴标签
plt.title("婴儿出生数据折线图")
```

```txt
plt.xlabel("日期")
plt.ylabel("出生数量")

# 显示折线图
plt.grid(True)
plt.show()
```

主要代码的解释如下。

代码第①行将CSV文件中的年、月、日列合并为一个日期列，并将其转换为Pandas中的Datetime类型，存储在名为“date”的新列中。

代码第②行使用Seaborn中的lineplot()函数绘制折线图，其中data参数指定数据集，x参数指定X轴数据（日期），y参数指定Y轴数据（出生数量），color参数指定折线的颜色为蓝色。

运行上述代码，绘制的图形如图5-10所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/3f65dd281ba9ae5c71903a8904a9a6c99a342c2f71286bc0f74f9d3ac9544111.jpg)



图5-10婴儿出生数据折线图


提示 从图5-10所示的折线图可见，其中的线被阴影包裹着，这通常是由于Seaborn的默认设置中添加了误差带或置信区间带。这样操作是为了可视化展示数据的不确定性。这种行为在Seaborn的lineplot函数中默认是开启的，如果不想显示误差带或置信区间带，可以通过将ci参数设置为None来禁用它们。示例代码如下。

```javascript
sns.lineplot(data=data, x='date', y='births', color='blue', errorbar=None) 
```

## 5.2.3 分类折线图

当绘制分类折线图时，style参数可以用来为每个不同的分类变量值选择不同的线条样式（例如实线、虚线等），从而使不同的类别在图中更容易区分。

以下是一个示例代码，演示了如何在Seaborn中使用style参数来绘制分类折线图。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 创建示例数据
data = sns.load_dataset("iris")

# 使用 Seaborn 的默认样式
sns.set()
# 设置 Seaborn 风格
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 绘制分类散点折线图，使用样式参数来区分不同种类的鸢尾花
plt.figure(figsize=(8, 6))
sns.lineplot(x="sepal_length", y="sepal_width", hue="species", style="species", data=data)

# 添加标题
plt.title("鸢尾花数据的分类折线图")

# 显示图例
plt.legend(title="种类")

# 显示图表
plt.grid(True)
plt.show()
```

在上述示例代码中，我们使用了Seaborn中的lineplot()函数，并设置了hue和style参数，以根据数据集中的“species”列的不同类别来分类数据，运行示例代码，绘制的图形如图5-11所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/00eed25bd24f2bba6a98cf7691518add23cd78de20cd0b9fd1b0bff807dce1d8.jpg)



图5-11鸢尾花数据的分类折线图


## 5.2.4 示例：绘制性别分类折线图

折线图通常用于可视化数值变量之间的趋势或关系，它的主要用途是显示数值变量的变化。折线图通常不直接用于显示分类变量的信息，但我们可以通过将分类变量映射到折线图的不同线条或颜色上，来实现在折线图中添加分类信息。


5.2.2小节的婴儿出生数据折线图可以按性别分类，示例代码如下。


```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 读取 CSV 文件
data = pd.read_csv("data/婴儿出生数据（清洗后）.csv")

# 设置 Seaborn 风格
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 将年、月、日合并为日期列
data['date'] = pd.to_datetime(data[['year', 'month', 'day']].astype(str).agg('-'.join, axis=1))

# 创建折线图，并按性别分类
plt.figure(figsize=(10, 6))
sns.lineplot(data=data, x='date', y='births', hue='gender', palette={"M": "blue", "F": "pink"}) 

# 添加标题和轴标签
plt.title("婴儿出生数据折线图（按性别分类）")
plt.xlabel("日期")
plt.ylabel("出生数量")

# 显示折线图
plt.grid(True)
plt.show()
```

上述主要代码的解释如下。

代码第①行使用sns.lineplot()函数创建折线图，通过data参数传入数据集，x参数指定 x 轴的数据是日期（date 列），y参数指定 y轴的数据是出生数量（births 列），并使用hue 参数按性别分类，同时使用palette参数来指定性别的颜色，男性使用蓝色，女性使用粉色。

运行示例代码，绘制的图形如图5-12所示。


婴儿出生数据折线图（按性别分类）


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/a02da492a1848021280a2a31b4c480248c7f1112db7f69ede2296222819a40e7.jpg)



图5-12婴儿出生数据折线图（按性别分类）


## 5.3 面积图

面积图是一种用于可视化数据的图表类型，通常用于显示数据序列随时间或有序类别的变化趋势。它与折线图类似，但与折线图又有所不同，面积图的下方区域通常被填充以突出数据的累积值或变化趋势。面积图常用于展示不同类别或组的数据在总体中的相对占比或堆积情况。

## 5.3.1 绘制面积图

在Python中，可以使用不同的库来绘制面积图，其中最常用的是Matplotlib。以下是一个简单的示例，演示如何使用Matplotlib来创建一个基本的面积图。

```python
import matplotlib.pyplot as plt
plt.rcParams['font.family'] = ['SimHei']    # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False    # 设置负号显示

# 数据
x = [1, 2, 3, 4, 5]    # x轴数据点
y = [10, 16, 5, 8, 12]    # y轴数据点

# 绘制面积图
plt.fill_between(x, y, color="skyblue", alpha=0.5)
plt.plot(x, y, color="blue", linestyle="-", marker="o")

# 添加轴标签和标题
```

```txt
plt.xlabel("X轴标签")  
plt.ylabel("Y轴标签")  
plt.title("面积图示例")  
# 显示图形  
plt.show()
```

在这个示例代码中，首先导入Matplotlib库，然后创建了一些示例数据点 x 和 y。接下来，使用plt.fill_between()函数创建面积图，使用plt.plot()函数绘制面积图以便查看数据点。最后，添加轴标签和标题，并使用 plt.show() 显示图形。

## 5.3.2示例：绘制婴儿出生数据面积图

为了看出面积图与折线图的区别，本节将5.2.2小节绘制的折线图换成面积图，示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
plt.rcParams['font.family'] = ['SimHei'] # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False # 设置负号显示

# 读取 CSV 文件
df = pd.read_csv("data/婴儿出生数据（清洗后）.csv")
①
# 将年、月、日合并为日期列
df['date'] = pd.to_datetime(df[['year', 'month', 'day']])
②
# 创建面积图
plt.figure(figsize=(10, 6))
plt.fill_between(df['date'], df['births'], color="pink", alpha=0.5)
③
# 添加轴标签和标题
plt.xlabel("日期")
plt.ylabel("出生数量")
plt.title("婴儿出生数据面积图")

# 旋转日期标签，以防止重叠
plt.xticks(rotation=45)
④
# 显示图形
plt.tight_layout()
plt.show()
```

主要代码的解释如下。

代码第①行通过pd.read_csv()函数读取了名为“婴儿出生数据（清洗后）.csv”的CSV文件，将数据加载到一个DataFrame（数据表格）中。

代码第②行使用pd.to_datetime()函数，将DataFrame中的“year”“month”和“day”列合并为一个日期列“date”，这个日期列会作为绘图的x轴数据。

代码第③行使用plt.fill_between()函数创建面积图，将x轴设置为“date”列，y轴设置为“births”列，填充颜色为“pink”，透明度为0.5，创

建了一个面积图。

代码第④行使用plt.xticks(rotation=45)旋转x轴上的日期标签，以避免它们重叠。

代码第⑤行通过plt.tight_layout()调整图表布局以确保图形完整显示。

运行上述代码，绘制的图形如图5-13所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/9a3931cd25d725e3b2436503bc1dda8b709c16604bbfebf39afcaece1eff3039.jpg)



图5-13婴儿出生数据面积图


## 5.4 柱状图

柱状图可以用于比较不同类别或组之间的两个变量，一个变量通常表示在X轴上的不同类别或组，另一个变量表示在Y轴上的值。这种图形常用于显示类别数据的比较。

## 5.4.1 柱状图的应用

以下是某些情况下柱状图的应用示例。

（1）销售数据比较：柱状图可用于比较不同产品、地区或时间段的销售数据。每个柱子代表一个产品或地区，柱子的高度表示销售额或销售数量。

（2）调查结果：在社会科学研究中，柱状图可用于呈现调查结果，例如不同选项的选择频率。每个柱子代表一个选项，柱子的高度表示选择该选项的人数或百分比。

（3）时间趋势：柱状图也可用于显示时间趋势。我们可以创建一个时间序列柱状图，其中X轴表示时间，Y轴表示某个度量指标，例如每月销售额的变化。

（4）对比类别：柱状图适用于对比不同类别的数据，例如比较不同产品、部门、城市或年度的性能数据。

## 5.4.2 绘制柱状图

在Python中，我们可以使用Matplotlib库和Seaborn库绘制柱状图，以下示例代码演示了如何使用Seaborn绘制一个柱状图。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 示例数据
categories = ['A', 'B', 'C', 'D', 'E']
values = [10, 25, 15, 30, 20]

# 使用 Seaborn 绘制柱状图，指定调色板为 "Set1"
plt.figure(figsize=(8, 6))
sns.barplot(x=categories, y=values, palette='Set1')

# 添加轴标签和标题
plt.xlabel('类别')
plt.ylabel('数值')
plt.title('Seaborn 柱状图示例')

# 显示图形
plt.show()
```

这段代码演示了如何使用Python中的Seaborn库绘制一个柱状图。以下是对主要代码的解释。

代码第①行使用sns.barplot()函数创建柱状图。x=categories：指定x轴的数据；y=values：指定y轴的数据；palette='Set1'：指定使用Seaborn中的“Set1”调色板。

运行上述代码，绘制的图形如图5-14所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/6a701201560af0991baef5836afb99cdea9e2bda366861a59e06a3fef71b6403.jpg)



图5-14柱状图示例


## 5.4.3示例：绘制不同汽车型号的燃油效率柱状图

使用mpg_ggplot2数据集来创建一个柱状图，以比较不同汽车型号的燃油效率（英里每加仑）。

具体示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

sns.set() # 使用 Seaborn 库的默认设置来绘制图形
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 读取 CSV 文件
df = pd.read_csv("data/mpg_ggplot2.csv")

# 创建柱状图
plt.figure(figsize=(12, 6))
sns.barplot(x='model', y='hwy', data=df, palette='viridis') ①

# 添加轴标签和标题
plt.xlabel('汽车型号')
plt.ylabel('公路燃油效率 (mpg)')
plt.title('不同汽车型号的公路燃油效率')

# 旋转 x 轴标签，以防止重叠
plt.xticks(rotation=45, horizontalalignment='right') ②

# 显示图形
plt.tight_layout()
plt.show()
```

上述主要代码的解释如下。

代码第①行使用sns.barplot()函数，其中x='model'指定x轴的数据（汽车型号），y='hwy'指定y轴的数据（公路燃油效率），data=df指定使用的数据集，palette='viridis'指定使用Seaborn的“viridis”调色板。

代码第②行使用plt.xticks(rotation=45, horizontalalignment='right')旋转x轴标签，以防止它们重叠。rotation=45将标签旋转45度，horizontalalignment='right'将标签右对齐，以确保它们的可读性。

运行上述代码，绘制的图形如图5-15所示。提示从图5-15中可以看出，每一个柱子上会有小段竖线，这些竖线是误差棒，用于表示数据的不确定性或标准误差。这些误差棒显示了每个柱子中数据的变化范围。如果你不希望在柱状图上显示误差棒，可以通过将ci参数设置为None来禁用它们。示例代码如下。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/2dbbbd0ad399e5c561dfe0d478e68a9ac858085884ba9fe3d204e4f5e17f2a6d.jpg)



图5-15 不同汽车型号的公路燃油效率


```python
sns.barplot(x='model', y='hwy', data=df, palette='viridis', errorbar=None) 
```

## 5.5 条形图

条形图是一种用于可视化数据的图形类型，通常用于比较不同类别或组之间的数据值。它由一组垂直或水平的条形（也称为柱形）组成，每个条形的高度（或长度）表示相应类别或组的数据值。

## 5.5.1 条形图与柱状图的区别

条形图和柱状图之间存在一些明显的区别。

## （1）方向：

条形图通常是水平的，条形从左到右延伸，每个条形的长度表示相应类别或组的数据值。

柱状图通常是垂直的，柱子从下到上延伸，每个柱子的高度表示相应类别或组的数据值。

## （2）用途：

条形图常用于比较不同类别或组之间的数据，特别是当类别名称较长或需要显示在图形的底部时。

柱状图也用于比较不同类别或组之间的数据，但在类别名称较短或可以垂直显示时更常见。

## （3）视觉效果：

由于方向不同，条形图和柱状图的视觉效果有所不同。水平的条形图在比较多个类别时可能需要更多的水平空间，而垂直的柱状图在比较多个类别时可能需要更多的垂直空间。

总的来说，条形图和柱状图都是强大的数据可视化工具，可以用于比较不同类别或组之间的数据。我们可以根据自己的数据和可视化需求选择使用哪种类型的图形，这通常取决于数据的性质及如何更好地传达信息。

## 5.5.2 示例：绘制不同汽车型号的燃油效率条形图

条形图和柱状图非常相似，那么本节将5.4.3小节绘制的柱状图换成条形图，示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

sns.set()
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 读取 CSV 文件
df = pd.read_csv("data/mpg_ggplot2.csv")

# 使用 Seaborn 创建条形图
plt.figure(figsize=(12, 6))
sns.barplot(x='hwy', y='model', data=df,
palette='viridis',
errorbar=None)

# 添加轴标签和标题
plt.xlabel('公路燃油效率 (mpg)')
plt.ylabel('汽车型号')
plt.title('不同汽车型号的公路燃油效率')

# 显示图形
plt.tight_layout()
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.barplot()函数创建条形图。x轴的数据是公路燃油效率（'hwy'），y轴的数据是汽车型号（'model'），data=df指定了使用的数据集，palette='viridis'设置了绘图时使用的颜色，通过errorbar=None将误差棒禁用，在条形图上就不会显示误差棒了。

这段代码的结果是一个条形图，横轴显示了公路燃油效率（mpg），纵轴显示了汽车型号，每个条形代表一种汽车型号，并展示了它们的公路燃油效率。由于禁用了误差棒，每个条形没有上下浮动的线条，只是单纯的条形，这有助于清晰地比较不同汽车型号的公路燃油

效率。

运行上述代码，绘制的图形如图5-16所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/1b31653cd57199ee4f6e7ad6de7b0be63ab57239fdd49123c2486f7cc0236446.jpg)



图5-16不同汽车型号的公路燃油效率


## 5.6 热力图

热力图用于可视化两个分类变量之间的关系，通过颜色编码来表示不同组合的频率或值。它可以帮助识别变量之间的相关性和模式。

## 5.6.1 热力图的应用

在科技领域，热力图可以用于可视化和分析各种类型的数据，帮助科学家、工程师和研究人员发现模式、趋势和关联性。以下是热力图在科技领域中的一些重点应用场景。

（1）温度分布：在气象学中，热力图可以用于显示地理区域的温度分布情况。每个单元格表示一个地理位置，颜色表示温度。

（2）基因表达分析：在生物学中，热力图通常用于可视化基因表达数据。行表示基因，列表示样本，单元格的颜色表示基因在不同样本中的表达水平。

（3）金融分析：在金融领域，热力图可以用于可视化不同股票或资产之间的相关性。每个单元格可以表示两种资产之间的相关性，颜色深浅表示相关性的强度。

（4）图像处理：在计算机视觉中，热力图可以用于表示图像中不同区域的像素强度。这有助于图像分割、特征提取等任务。

总的来说，热力图是一种强大的工具，可用于可视化和分析各种类型的数据，帮助用户快速识别模式、关联性和趋势。在实际应用中，可以根据数据和分析目标来定制热力图的样式和参数。

## 5.6.2 绘制热力图

在Python中，可以使用Seaborn库和Matplotlib库绘制热力图。以下示例代码演示了如何绘制一个热力图。

```python
import seaborn as sns
import matplotlib.pyplot as plt

sns.set()
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 创建一个矩阵数据（示例数据）
data = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16]
]

# 使用 Seaborn 创建热力图
plt.figure(figsize=(8, 6))
sns.heatmap(data, annot=True, cmap='coolwarm', linewidths=.5) ①

# 添加轴标签和标题
plt.xlabel('列')
plt.ylabel('行')
plt.title('热力图示例')

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.heatmap()函数创建热力图。在函数中，我们传递了数据矩阵data，设置annot=True以在每个单元格中显示数值，

cmap='coolwarm'指定了颜色映射，linewidths=.5设置了单元格之间的线宽。我们添加了x轴和y轴的标签及图形的标题，并使用plt.show()显示热力图。

我们可以根据自己的数据和需求来修改示例代码，以绘制符合要求的热力图。热力图通常用于可视化相关性、数据分布、模式等信息。

运行上述代码，绘制的图形如图5-17所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/0a2de1905561cc656fca3c11af0ecac89b3c8b22dd95f1417be86807a9eb2d57.jpg)



图5-17 热力图示例


## 5.7 双变量核密度图

双变量核密度图用于可视化两个变量之间的关系和联合分布。它是一种用于理解两个变量如何一起变化的统计图表。

以下是双变量核密度图的应用示例。

（1）探索相关性：双变量核密度图可以用于检查两个变量之间的相关性。通过观察核密度图的形状和趋势，你可以了解它们之间是否存在线性或非线性关系。

（2）联合分布：它可以用于可视化两个变量的联合分布。这有助于识别数据中的聚类或模式，以及变量之间的依赖关系。

（3）分类可分性：在分类问题中，你可以使用双变量核密度图来查看不同类别下的两个变量的分布情况。这有助于确定是否存在明显的分离特征。

（4）异常值检测：双变量核密度图可以帮助你识别数据中的异常值。异常值通常会在核密度图中显示为低密度区域，与正常数据点的分布不同。

（5）数据预处理：在数据预处理阶段，你可以使用双变量核密度图来检查是否有必要对两个变量进行转换或缩放，以更好地满足建模的要求。

（6）特征工程：当你需要创建新的特征时，可以使用双变量核密度图来帮助选择与目标变量相关性较高的变量组合。

总之，双变量核密度图是数据分析中的强大工具，可以用于发现和理解数据中的模式、关系和异常值。它们可以帮助分析师和数据科学家更全面地探索数据并作出有关进一步分析和建模的决策。

## 5.7.1 绘制双变量核密度图

可以使用Seaborn库的kdeplot函数或jointplot函数绘制双变量核密度图。以下是两种方法的示例。


方法1：使用kdeplot函数


```python
import seaborn as sns
import matplotlib.pyplot as plt

# 示例数据
data = sns.load_dataset("iris")

# 使用 Seaborn 的 kdeplot 函数创建双变量核密度图
sns.kdeplot(data=data, x="sepal_length", y="sepal_width", fill=True, cmap="Blues")

# 添加轴标签和标题
plt.xlabel('花萼长度')
plt.ylabel('花萼宽度')
plt.title('双变量核密度图示例1')

# 显示图形
plt.show()
```

运行上述代码，绘制的图形如图5-18所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/83c9c2b8da5b374bc8e332fba8aaadccc6e5eaea7cc0cc2d71df3479d24bf39f.jpg)



图5-18双变量核密度图示例1


方法2：使用jointplot函数

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 示例数据
data = sns.load_dataset("iris")

# 使用 Seaborn 的 jointplot 函数创建双变量核密度图
sns.jointplot(data=data, x="sepal_length", y="sepal_width", kind="kde", cmap="Blues")

# 添加标题
plt.subplots_adjust(top=0.9)
plt.suptitle('双变量核密度图示例2')

# 显示图形
plt.show()
```

运行上述代码，绘制的图形如图5-19所示。


双变量核密度图示例2


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/8f6b9486f966e6c473521c9fdd6256b6747b927843d35cad3ddb836f70ce8631.jpg)



图5-19双变量核密度图示例2


这两种方法都可以绘制双变量核密度图，其中kdeplot更灵活，而jointplot可以添加一些其他的信息，如单变量核密度图和散点图，以更全面地探索双变量关系。你可以根据自己的需求，选择其中一种方法来绘制双变量核密度图。

## 5.7.2 示例：绘制乘客数量双变量核密度图

下面我们通过一个示例介绍一下如何绘制双变量核密度图，该示例数据来自“AirPassengers.csv”文件，文件部分内容如图5-20所示。该数据集包含了从1949年到1960年期间每个月的航空乘客数量。这是一个时间序列数据集，其中每个数据点都对应一个月份的乘客数量，通常用于时间序列分析和预测任务，可以帮助理解乘客数量随时间的变化趋势和季节性模式。这个数据集通常用于演示时间序列分析和预测技术，例如移动平均、指数平滑和季节性分解等。

<table><tr><td colspan="7">AirPassengers.csv - Excel</td></tr><tr><td colspan="7">文件 开始 插入 页面布局 公式 数据 审阅 视图 开发工具</td></tr><tr><td>111</td><td></td><td>x √ fx</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>date</td><td>value</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>1949/1/1</td><td>112</td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>1949/2/1</td><td>118</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>1949/3/1</td><td>132</td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>1949/4/1</td><td>129</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>1949/5/1</td><td>121</td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>1949/6/1</td><td>135</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>1949/7/1</td><td>148</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>1949/8/1</td><td>148</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>1949/9/1</td><td>136</td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>1949/10/1</td><td>119</td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>1949/11/1</td><td>104</td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td>1949/12/1</td><td>118</td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td>1950/1/1</td><td>115</td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td>1950/2/1</td><td>126</td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>1950/3/1</td><td>141</td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td>1950/4/1</td><td>135</td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>1950/5/1</td><td>125</td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>1950/6/1</td><td>149</td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td>1950/7/1</td><td>170</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="7">AirPassengers</td></tr></table>


图5-20 AirPassengers.csv文件（部分）


示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']    # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False    # 设置负号显示

# 读取 CSV 文件
df = pd.read_csv("data/AirPassengers.csv")

# 将日期转换为整数表示
df['date'] = (pd.to_datetime(df['date'])
    - pd.to_datetime('1949-01-01')).dt.days)    ①

# 创建双变量核密度图
plt.figure(figsize=(10, 6))
sns.kdeplot(data=df,
    x="date",
    y="value",
    cmap="viridis",
    fill=True)
plt.xlabel('日期')
plt.ylabel('乘客数量')

plt.title('双变量核密度图 - 乘客数量 vs 日期')
plt.show()
```

主要代码的解释如下。

代码第①行将日期列转换为整数表示的日期。它首先使用pd.to_datetime函数将日期列的值转换为日期对象，然后将这些日期对象减去“1949-01-01”的日期，最后使用dt.days将结果转换为整数表示的天数。

代码第②行使用kdeplot函数绘制双变量核密度图。data参数指定了数据集，x和y参数分别指定了X轴和Y轴的数据，cmap参数指定了颜色映射，fill=True表示要填充核密度估计曲线下方的区域。

运行上述代码，绘制的图形如图5-21所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/20c95f55868787c8c0c287c22e7e7cacc04422e6270320597667918aa6c292a8.jpg)



图5-21双变量核密度图-乘客数量vs日期


## 5.8 线性回归图

线性回归图是一种统计图形，用于可视化两个变量之间的线性回归分析结果。其主要组成部分如下。

（1）散点图（ScatterPlot）：散点图显示了观测数据点，其中x轴通常表示自变量，y轴表示因变量。每个数据点表示一个观测值，通过x和y的位置来表示。

（2）回归线（RegressionLine）：回归线是一条直线，它表示了自变量和因变量之间的线性关系。该线通过散点图的数据点，尽量拟合这些数据点，以最小化残差平方和。回归线的斜率和截距用于描述线性关系的强度和方向。

（3）置信区间（ConfidenceInterval）：置信区间表示了回归线的不确定性。它通常是在回归分析中计算的，用于估计回归线的参数（斜率和截距）的不确定性范围。置信区间可以帮助判断回归线是否显著。

（4）预测区间（Prediction Interval）：预测区间表示了对新观测值的预测的不确定性。它比置信区间更宽，因为它不仅考虑了回归线的不确定性，还考虑了随机误差的不确定性。

（5）残差图（ResidualPlot）：残差图显示了每个数据点的残差，即观测值与回归线的距离。残差图用于检查模型是否符合线性回归的假设，例如，残差是否随机分布。

线性回归图直观地展示了两个变量之间的相关性和线性关系，是理解和表达线性回归分析结果的核心可视化方法之一。正确理解和绘制线性回归图对于分析师或读者理解模型至关重要。

## 5.8.1 线性回归图的应用

线性回归图是一种用于可视化线性回归模型的工具，通常用于以下目的。

（1）展示数据和拟合线：线性回归图通常包括散点图，显示了原始数据点以及一条拟合的线性回归线，用于表示数据的线性关系。

（2）评估回归模型：通过观察数据点与回归线的接近程度，可以初步评估线性回归模型的拟合质量。如果数据点紧密围绕在回归线附近，说明模型可能是一个合适的选择。

（3）识别异常值：线性回归图有助于识别异常值或离群点，这些点可能对回归模型产生不良影响。

（4）检查模型假设：线性回归图还可用于检查线性回归模型的一些基本假设，例如误差项的正态性、同方差性和线性关系。

## 5.8.2绘制线性回归图

可以使用Seaborn库中的sns.regplot()函数绘制线性回归图。以下示例代码演示了如何绘制线性回归图。

```python
import seaborn as sns
import matplotlib.pyplot as plt
sns.set()
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 创建一个示例数据集
data = sns.load_dataset("tips")

# 使用 sns.regplot() 创建线性回归图
plt.figure(figsize=(8, 6))
sns.regplot(x="total_bill", y="tip", data=data)

# 添加标题和轴标签
plt.title("线性回归图示例")
plt.xlabel("总账单金额 (total_bill)")
```

```python
plt.ylabel("小费金额 (tip) ")
# 显示图表
plt.grid(True)
plt.show()
```

在这个示例代码中，我们使用了Seaborn内置的tips数据集，然后使用sns.regplot()函数创建了线性回归图。函数的x参数和y参数分别指定了X轴和Y轴的变量。

绘制线性回归图有助于可视化两个变量之间的线性关系，以及了解线性回归线的拟合情况。此外，我们还可以通过添加其他参数来自定义图表，例如，使用ci参数来控制置信区间的显示，或使用scatter_kws参数来设置散点的属性。

运行上述代码，绘制的图形如图5-22所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/cc9d3fd80d297a66d2cdd68c6ae9599a83dc8dd0b3938d59b48af464e2230b8c.jpg)



图5-22线性回归图


## 5.8.3示例：绘制钻石克拉数与价格的线性回归图

下面我们通过一个示例介绍一下如何绘制线性回归图，该示例数据来自diamonds数据集，内容如图5-23所示。该数据集经常用于数据可视化和机器学习练习，用来演示数据分析和建模技巧。这个数据集包含了有关钻石的各种属性和它们的价格信息，非常适合进行回归分析、数据

探索和可视化。

以下是diamonds数据集的一些重要特征和列。

carat（克拉数）：钻石的重量，通常用于衡量钻石的大小。

<table><tr><td colspan="2">A1</td><td>X √ fx</td><td colspan="9">carat</td></tr><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td></tr><tr><td>1</td><td>carat</td><td>cut</td><td>color</td><td>clarity</td><td>depth</td><td>table</td><td>price</td><td>x</td><td>y</td><td>z</td><td></td></tr><tr><td>2</td><td>0.23</td><td>Ideal</td><td>E</td><td>SI2</td><td>61.5</td><td>55</td><td>326</td><td>3.95</td><td>3.98</td><td>2.43</td><td></td></tr><tr><td>3</td><td>0.21</td><td>Premium</td><td>E</td><td>SI1</td><td>59.8</td><td>61</td><td>326</td><td>3.89</td><td>3.84</td><td>2.31</td><td></td></tr><tr><td>4</td><td>0.23</td><td>Good</td><td>E</td><td>VS1</td><td>56.9</td><td>65</td><td>327</td><td>4.05</td><td>4.07</td><td>2.31</td><td></td></tr><tr><td>5</td><td>0.29</td><td>Premium</td><td>I</td><td>VS2</td><td>62.4</td><td>58</td><td>334</td><td>4.2</td><td>4.23</td><td>2.63</td><td></td></tr><tr><td>6</td><td>0.31</td><td>Good</td><td>J</td><td>SI2</td><td>63.3</td><td>58</td><td>335</td><td>4.34</td><td>4.35</td><td>2.75</td><td></td></tr><tr><td>7</td><td>0.24</td><td>Very Good</td><td>J</td><td>VVS2</td><td>62.8</td><td>57</td><td>336</td><td>3.94</td><td>3.96</td><td>2.48</td><td></td></tr><tr><td>8</td><td>0.24</td><td>Very Good</td><td>I</td><td>VVS1</td><td>62.3</td><td>57</td><td>336</td><td>3.95</td><td>3.98</td><td>2.47</td><td></td></tr><tr><td>9</td><td>0.26</td><td>Very Good</td><td>H</td><td>SI1</td><td>61.9</td><td>55</td><td>337</td><td>4.07</td><td>4.11</td><td>2.53</td><td></td></tr><tr><td>10</td><td>0.22</td><td>Fair</td><td>E</td><td>VS2</td><td>65.1</td><td>61</td><td>337</td><td>3.87</td><td>3.78</td><td>2.49</td><td></td></tr><tr><td>11</td><td>0.23</td><td>Very Good</td><td>H</td><td>VS1</td><td>59.4</td><td>61</td><td>338</td><td>4</td><td>4.05</td><td>2.39</td><td></td></tr><tr><td>12</td><td>0.3</td><td>Good</td><td>J</td><td>SI1</td><td>64</td><td>55</td><td>339</td><td>4.25</td><td>4.28</td><td>2.73</td><td></td></tr><tr><td>13</td><td>0.23</td><td>Ideal</td><td>J</td><td>VS1</td><td>62.8</td><td>56</td><td>340</td><td>3.93</td><td>3.9</td><td>2.46</td><td></td></tr><tr><td>14</td><td>0.22</td><td>Premium</td><td>F</td><td>SI1</td><td>60.4</td><td>61</td><td>342</td><td>3.88</td><td>3.84</td><td>2.33</td><td></td></tr><tr><td>15</td><td>0.31</td><td>Ideal</td><td>J</td><td>SI2</td><td>62.2</td><td>54</td><td>344</td><td>4.35</td><td>4.37</td><td>2.71</td><td></td></tr><tr><td>16</td><td>0.2</td><td>Premium</td><td>E</td><td>SI2</td><td>60.2</td><td>62</td><td>345</td><td>3.79</td><td>3.75</td><td>2.27</td><td></td></tr><tr><td>17</td><td>0.32</td><td>Premium</td><td>E</td><td>I1</td><td>60.9</td><td>58</td><td>345</td><td>4.38</td><td>4.42</td><td>2.68</td><td></td></tr><tr><td>18</td><td>0.3</td><td>Ideal</td><td>I</td><td>SI2</td><td>62</td><td>54</td><td>348</td><td>4.31</td><td>4.34</td><td>2.68</td><td></td></tr><tr><td colspan="12">19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 20 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19, Very Good diamonds</td></tr></table>


图5-23 diamonds数据集


cut（切工质量）：钻石的切工质量，包括几个等级，如“Fair”（一般）、“Good”（良好）、“Very Good”（非常好）、“Premium”（优质）和“Ideal”（理想）。

color（颜色）：钻石的颜色等级，从 “J”（最差）到 “D”（最好），“D”表示无色。

clarity（纯度）：钻石的纯度等级，包括几个等级，如 “I1”（最低）、“SI2”“SI1”“VS2”“VS1”“VVS2”“VVS1” 和 “IF”（最高）。

depth（深度百分比）：钻石的深度与宽度之比，衡量了钻石的剖面视觉效果。

table（台宽百分比）：钻石顶部的宽度与整体宽度之比，用于衡量钻石的切割质量。

price（价格）：钻石的价格，这是我们希望预测的目标变量。

x、y、z（尺寸）：钻石的长度、宽度和深度。

示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})
# 读取数据
data = pd.read_csv('data/diamonds.csv')

# 创建绘图对象和坐标轴
fig, ax = plt.subplots(figsize=(10, 6))

# 绘制线性回归图
sns.regplot(data=data, x='carat', y='price', scatter_kws={'s': 10}) ①

# 设置标题和轴标签
ax.set_title('钻石克拉数与价格的线性回归图', fontsize=16)
ax.set_xlabel('克拉数', fontsize=14)
ax.set_ylabel('价格', fontsize=14)

# 设置刻度标记大小
ax.tick_params(axis='both', labelsize=12)

# 显示图形
fig.tight_layout()
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.regplot()函数绘制了线性回归图。在这个图中，钻石的克拉数（carat）被设置为X轴，价格（price）被设置为Y轴，scatter_kws={'s': 10}用于指定散点图上点的大小。

运行上述代码，绘制的图形如图5-24所示。


钻石克拉数与价格的线性回归图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/57a3f9c2fc364fecf5ff523527de11fbb4101d0095927f3f5b80b062342278a2.jpg)



图5-24钻石克拉数与价格的线性回归图


## 5.9 联合图

联合图（JointPlot）是一种用于可视化两个变量之间关系的图表类型。它通常结合了两个绘图元素：散点图和直方图（或密度估计图），以便更全面地理解两个变量之间的分布和相关性。在科研绘图与学术图表绘制中，联合图的应用场景如下。

（1）探索相关性：研究人员可以使用联合图来查看两个变量之间的相关性。通过观察散点图中点的分布和趋势，可以初步了解它们之间是否存在线性或非线性关系。

（2）可视化分布：联合图不仅显示了两个变量之间的关系，还在图的边缘绘制了直方图或密度估计图，用于可视化每个变量的分布。这有助于观察变量的数据分布情况。

（3）条件分布：联合图还可以根据一个变量的值来查看另一个变量的条件分布。例如，可以根据性别绘制身高和体重之间的联合图，以查看性别对身高和体重的影响。

（4）异常值检测：通过查看联合图中的散点图，可以帮助研究人员识别数据中的异常值或离群点，这对于数据质量控制非常有用。

（5）变量变换：在某些情况下，研究人员可能需要对变量进行变换，以使其更好地满足模型假设。通过观察联合图，可以识别是否需要对数据进行对数、平方根等变换。

（6）分类数据分析：对于分类数据，联合图可以用来查看两个分类变量之间的交叉分布，从而帮助研究人员理解不同类别之间的关系。

（7）科研论文图表：在科研论文中，联合图可以用来可视化实验结果、相关性分析和数据分布，以帮助读者更好地理解研究成果。

## 5.9.1 绘制联合图

在Seaborn中，可以使用sns.jointplot函数创建联合图。它通常显示两个变量的散点图，以及两个变量的直方图。这使得您可以同时查看两个变量的分布及它们之间的关系，例如散点云的形状、线性趋势等。

虽然联合图主要用于双变量分析，但我们可以通过选择不同的参数来定制联合图，以更好地了解两个变量之间的关系，例如使用kind参数来选择不同类型的联合图，如散点图、核密度估计图等。因此，联合图也可以包含一些多变量的信息，但其主要关注点仍在于双变量关系的可视化。

## 1. jointplot的基本用法

```python
import seaborn as sns
tips = sns.load_dataset("tips")
g = sns.jointplot(x="total_bill", y="tip", data=tips) 
```

这段代码将生成一个联合图，包括以下内容。

散点图：在图的中央部分，以x轴为总账单金额，y轴为小费金额，显示了每个数据点的散点分布。

直方图：分别在x轴和y轴的两侧显示了总账单金额和小费金额的分布直方图。

运行上述代码，绘制的图形如图5-25所示。

## 2. 使用kind参数

我们还可以通过kind参数绘制不同类型的图。

${ \mathrm { k i n d } } { = } ^ { \prime } { \mathrm { s c a t t e r } } ^ { \prime }$ ，绘制散点图。

$\operatorname { k i n d } { = } ^ { \prime } \mathrm { r e g } ^ { \prime }$ ，绘制散点图和回归模型拟合线。

kind='kde'，绘制核密度估计图。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/a23aa9785354bb94c33ff38b51df385a6f9ad96fe91cc27fdb50e610006e2f0a.jpg)



图5-25 联合图


示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt

sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 创建示例数据（假设 data 是包含两个变量 x 和 y 的 DataFrame）
data = sns.load_dataset("iris")  # 示例数据集（这里使用了鸢尾花数据集）
```

```python
绘制联合图
joint = sns.jointplot(data=data,
    x="sepal_length",
    y="sepal_width",
    kind="scatter")
添加标题，并调整标题位置
joint.ax_joint.set_title("联合图示例", y=1.2)  # 调整 y 参数以提高标题位置
显示图形
plt.show()
```

这段代码将生成一个联合图，用于可视化鸢尾花的花萼长度和花萼宽度之间的关系。标题“联合图示例”位于图的上方，增加了图的可读性。通过这个联合图，我们可以更好地理解这两个变量之间的关系及它们的分布情况。

代码第①行使用jointplot函数创建联合图。其中的参数解释如下。

data=data：指定数据集为前面加载的"iris"数据集。

x="sepal_length" 和 y="sepal_width"：分别指定x轴和y轴的变量为花萼长度和花萼宽度。

代码第②行通过joint对象的ax_joint属性，设置联合图的标题为“联合图示例”，并通过调整y参数将标题位置稍微向上移动，以避免与图形重叠。

运行上述代码，绘制的图形如图5-26所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/3a309b78840e71c82200b2e6f22a0ea708110caa697db62f6c703edafff62595.jpg)



图5-26 联合图示例


此外，jointplot支持调整颜色、图例、坐标轴范围等参数，提供了丰富的自定义控制力。jointplot函数集成了绘制联合图的各个组件,使得绘图代码非常简洁，它是探索变量关系的首选绘图函数。

## 5.9.2示例：绘制钻石数据集联合图

本节我们使用钻石数据集示例，直观地了解钻石的克拉数（carat）和价格（price）之间的关系。

示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 读取数据集
data = pd.read_csv('data/diamonds.csv')
joint = sns.jointplot(data=data, x='carat', y='price', kind='scatter') ①
# 添加标题
joint.ax_joint.set_title('Diamonds 联合图示例', y=1.2)  # 调整 y 参数以提高标题位置
# 调整图形布局，防止标题被遮挡
# plt.tight_layout()

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.jointplot函数创建联合图，传入数据集data及x轴和y轴的变量名。x轴是“carat”，y轴是“price”，并且设

置“kind='scatter'”来创建散点图。

运行上述代码，绘制的图形如图5-27所示。

## 5.10 本章总结

本章主要介绍了几种常见的双变量图形的绘制方法，包括散点图、折线图、面积图、柱状图、热力图等。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/0ed185df65d31e09ebdb7b8fad1c0b7691996366295c76a2756e273ca732274b.jpg)



图5-27 Diamonds联合图示例


这些图形可以可视化两个变量之间的关系，如对应、趋势、分布等。每个图形都有自己的特点和应用场景。通过示例学习具体的绘制方法，并对比在同一数据上的可视化效果。

掌握这些双变量图形的绘制，可以更好地分析和展示变量之间的依赖关系，是数据分析中的重要手段。这些图形在探索式数据分析中应用广泛。

## 第6章 绘制多变量图形

多变量图形用于可视化和分析多个变量之间的关系和模式。常见的多变量图形包括气泡图、堆积折线图、堆积面积图、堆积柱状图、平行坐标图、矩阵图、分面网格分类图。

## 6.1 气泡图

气泡图是一种数据可视化图形，用于展示三个或更多变量之间的关系。它类似于散点图，但在气泡图中，除了横轴和纵轴上的数据点之外，还使用了一个或多个气泡的大小来表示第三个或更多的变量。

气泡图通常由以下要素组成。

（1）横轴（X轴）：横轴通常表示数据集中的一个变量，通常是一个数值变量。

（2）纵轴（Y轴）：纵轴也表示数据集中的一个变量，通常也是一个数值变量。

（3）气泡的大小：气泡的大小表示数据集中的另一个数值变量。气泡的大小可以根据该变量的数值来调整，通常使用面积或直径来表示。较大的气泡表示较大的数值，而较小的气泡表示较小的数值。

（4）气泡的颜色：气泡的颜色可以表示数据集中的第四个变量，通常是一个分类变量。不同的颜色表示不同的类别或子组，这有助于进一步区分数据。

（5）数据点标签（可选）：可以选择在气泡上添加标签，以显示具体数值或其他相关信息。

## 6.1.1气泡图的应用

气泡图是一种多变量可视化工具，常见于数据分析和数据可视化领域。它的应用范围非常广泛，以下是一些常见的气泡图应用场景。

（1）经济数据分析：气泡图常用于展示不同国家或地区的经济指标，如国内生产总值（GDP）和人均收入之间的关系，横轴可以表示GDP，纵轴表示人均收入，而气泡的大小可以表示人口数量，不同颜色的气泡代表不同的地区或国家。这有助于比较各地区的经济状况。

（2）金融市场分析：在金融领域，气泡图可以用于展示不同资产类别的回报率、波动性和市值之间的关系。这有助于投资者识别风险和回报之间的权衡。

（3）科学研究：科学研究中的气泡图可以用于展示实验结果，其中横轴和纵轴表示两个相关变量，而气泡的大小可以表示第三个变量，如实验样本的数量。

（4）地理信息系统（GIS）：气泡图在GIS中常用于地理数据的可视化，其中横轴和纵轴表示地理坐标，气泡的大小可以表示地区的人口或某种地理现象的强度。

（5）环境科学：在环境科学领域，气泡图可以用于显示不同地区或国家的环境指标，如二氧化碳排放量和可再生能源的使用情况，以便进行环境政策和可持续发展研究。

（6）医疗和生物学：气泡图可以用于显示不同治疗方案的效果，其中横轴和纵轴表示治疗参数，气泡的大小表示患者数量，不同颜色的气泡可以表示不同的疾病类型。

（7）社会科学：在社会科学研究中，气泡图可以用于分析社会变量之间的关系，如教育水平、收入和居住地的关联，以便理解社会问题和趋势。

这些只是气泡图的一些应用示例，实际上，气泡图可以用于任何需要同时展示多个变量之间关系的场景。通过合理选择横轴、纵轴、气泡大小和颜色的变量，可以帮助分析师和决策者更好地理解数据，做出有意义的决策。

## 6.1.2气泡图与散点图的区别

气泡图实际上是一种特殊类型的散点图，它在散点图的基础上引入了额外的维度，通过点的大小和颜色来表示第三个维度的信息。

它们之间的区别如下所示。

## （1）点的大小和颜色：

散点图：在散点图中，所有的数据点通常具有相同的大小和颜色。它们的主要目的是显示数据点之间的分布、关联性和趋势。

气泡图：气泡图通过点的大小和颜色来表示一个或多个额外的变量。通常，气泡图使用点的大小来表示数据点的某种特征或值，而点的颜色则用于表示另一个特征或值。这使得气泡图能够同时传达更多的信息。

## （2）数据的多维度：

散点图：散点图主要用于显示两个变量之间的关系，其中一个变量位于x轴，另一个变量位于y轴。这使得散点图适用于探索两个变量之间的相关性。

气泡图：气泡图通常用于同时表示三个或更多变量之间的关系。除了x轴和y轴上的两个变量外，点的大小和颜色还可以用来表示其他维度的信息。

## （3）适用场景：

散点图：散点图适用于探索和呈现数据点之间的分布、趋势、异常值等关系。它们特别适合用于比较两个变量之间的关联性。

气泡图：气泡图更适合用于展示多个变量之间的复杂关系，尤其是在需要同时考虑大小和颜色的情况下。它们在多变量分析、数据聚类和区分数据子集时非常有用。

总之，气泡图和散点图都是重要的数据可视化工具，但它们在表示多维数据关系和信息传达方面有不同的优势。选择使用哪种图形类型通常取决于你的数据集和分析目的。

## 6.1.3 绘制气泡图

要使用Seaborn绘制气泡图，可以借助sns.scatterplot函数，并使用size参数来设置气泡的大小，使用hue参数来设置气泡的颜色。示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 创建示例数据
data = {
    'X': [1, 2, 3, 4, 5],
    'Y': [10, 20, 15, 30, 25],
    'Size': [50, 100, 150, 200, 250],    # 气泡的大小
    'Color': ['A', 'B', 'C', 'D', 'E']    # 气泡的颜色
}

df = pd.DataFrame(data)
# 绘制气泡图，调整点大小的范围和图例位置
plt.figure(figsize=(8, 6))    # 设置图形大小
sns.scatterplot(data=df, x='X', y='Y', size='Size',
    hue='Color',
    sizes=(10, 200),
    legend='brief',
    palette='Set1')

# 添加标题
plt.title('Seaborn 气泡图示例')

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行创建数据，包括四个变量：X、Y、Size（气泡的大小）和Color（气泡的颜色）。这些数据被存储在一个名为data的字典中，并使用Pandas中的DataFrame进行处理。

代码第②行使用sns.scatterplot函数创建气泡图，其中参数的解释如下。

data参数指定数据来源。

x和y参数分别表示X轴和Y轴的数据。

size参数设置气泡的大小。

hue参数设置气泡的颜色。

sizes参数用于指定气泡的大小范围。

legend参数设置图例的显示方式，brief会尽量简洁地显示图例。

palette参数用于指定颜色调色板。

这段代码演示了如何使用Seaborn库创建一个简单的气泡图，可视化了X、Y、Size和Color这四个变量之间的关系。通过调整气泡的大小、颜色等参数，可以更好地展示数据之间的差异和关系。

运行示例代码，绘制的图形如图6-1所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/e61196ae49483a47afc83e8cea2a8f20848257971fda87fbe5741f9dc970956d.jpg)



图6-1 Seaborn气泡图示例


## 6.1.4示例：绘制空气质量气泡图

本节我们利用4.2.2小节介绍过的airquality数据集，通过绘制气泡图分析纽约市不同月份的风速、温度和臭氧浓度之间的关系。

示例代码如下。

```python
import pandas as pd  
import seaborn as sns  
import matplotlib.pyplot as plt 
```

```python
# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 读取数据集
data = pd.read_csv('data/airquality.csv')

# 创建气泡图
plt.figure(figsize=(10, 6))    # 设置图形大小

# 绘制气泡图，x 表示风速，y 表示温度，大小表示臭氧浓度，颜色表示月份
sns.scatterplot(data=data,
    x='Wind',
    y='Temp',
    size='Ozone',
    hue='Month',
    sizes=(3, 150),
    palette='Set1')

# 设置标题和轴标签
plt.title('空气质量气泡图')
plt.xlabel('风速 (Wind)')
plt.ylabel('温度 (Temp)')

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用sns.scatterplot()创建气泡图，其中参数的解释如下。

data=data：使用读取的数据集。

x='Wind'：设置x轴的数据为“Wind”，代表风速。

y='Temp'：设置y轴的数据为“Temp”，代表温度。

size='Ozone'：根据“Ozone”列的数据决定气泡的大小。

hue='Month'：根据“Month”列的数据决定气泡的颜色。

sizes=(3, 150)：设置气泡的大小范围，最小为3，最大为150。

palette='Set1'：使用“Set1”调色板为不同月份的数据点选择颜色。

这段代码演示了如何使用Seaborn创建一个气泡图，以可视化风速、温度、臭氧浓度和月份之间的关系。不同的月份通过不同颜色的气泡来表示，气泡的大小与臭氧浓度相关。这样的可视化图表有助于理解气象数据之间的关联和趋势。

运行示例代码，绘制的图形如图6-2所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/3fb0fc2643ce5ded0e2ac13bd8349fb6711e308acccc0768e310a653af0ab04b.jpg)



图6-2空气质量气泡图


## 6.2 堆积折线图

堆积折线图可以显示多个数据系列叠加在一起的折线图，常用于展现不同类目的数据趋势变化。

以下是堆积折线图常见的应用场景。

（1）时间序列数据的趋势比较：堆积折线图常用于比较多个时间序列数据的趋势。例如，一个公司可以使用堆积折线图来比较不同产品线的销售趋势，以了解哪个产品线对总销售额的贡献最大。

（2）市场份额分析：堆积折线图可以用于比较不同公司或产品在市场上的份额变化。每个公司或产品的趋势线叠加在一起，显示它们在市场份额方面的相对贡献。

（3）资源分配和规划：在项目管理和资源规划中，堆积折线图可用于比较不同项目或任务的进度趋势，以及它们对总体资源利用的影响。

（4）社会经济数据：政府和研究机构可以使用堆积折线图来比较不同地区或群体的社会经济指标（如失业率、人口增长率等）的趋势，以便更好地了解这些变化。

（5）生态学研究：在生态学领域，堆积折线图可以用于比较不同物种或生态系统中各个因素的趋势，以研究它们之间的相互作用。

（6）投资组合分析：在金融领域，堆积折线图可用于比较不同投资组合中各个资产的表现，并展示它们对总投资组合价值的贡献。

总之，堆积折线图是一种强大的数据可视化工具，适用于许多领域，可以帮助分析师、决策者和研究人员更好地理解多个系列的趋势及它们在整体中的相对影响。通过堆积折线图清晰地展示数据，有助于我们作出有根据的决策和推断。

## 6.2.1 绘制堆积折线图

以下是一个使用Matplotlib库绘制堆积折线图的示例代码。

```python
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

实验 $=$ ['实验1', '实验2', '实验3', '实验4', '实验5']  
方法1结果 $= [10, 15, 13, 17, 20]$ 方法2结果 $= [8, 12, 11, 14, 18]$ 方法3结果 $= [6, 9, 10, 13, 16]$ 

方法1结果 $=$ np.array（方法1结果）  
方法2结果 $=$ np.array（方法2结果）  
方法3结果 $=$ np.array（方法3结果）

```txt
plt.figure(figsize=(10, 6)) 
```

```javascript
plt.plot(实验，方法1结果，label='方法1', marker='o') ①
```

```python
plt.plot(实验，方法2结果，label='方法2', marker='s')
plt.fill_between(实验，方法1结果，方法1结果 + 方法2结果，
color='lightblue', alpha=0.5)
```

```txt
plt.plot(实验，方法3结果，label='方法3', marker='^') ④
plt.fill_between(实验，方法1结果 + 方法2结果，方法1结果 + 方法2结果 + 方法3结果，color='lightgreen', alpha=0.5) ⑤
```

```txt
plt.title('科研结果的堆积折线图')
plt.xlabel('实验')
plt.ylabel('测量值')
```

```python
添加图例
plt.legend()
# 显示图形
plt.grid(True)
plt.xticks(rotation=45) # 旋转 x 轴标签，以避免重叠
plt.tight_layout() # 自动调整子图布局
plt.show()
```

主要代码的解释如下。

代码第①、②和④行使用plt.plot 函数分别绘制了三种方法的折线图。

第一种方法的折线图，使用圆圈标记（marker='o'）。

第二种方法的折线图，使用正方形标记（marker='s'）。

第三种方法的折线图，使用三角形标记（marker='^'）。

代码第③和⑤行使用plt.fill_between函数填充了折线图下方的区域，以实现堆积效果。分别填充了第一种方法和第二种方法之间的区域（color='lightblue'），以及第一种方法、第二种方法和第三种方法之间的区域（color='lightgreen'）。alpha 参数用于设置填充区域的透明度，使其不会完全遮挡下方的折线。

运行示例代码，绘制的图形如图6-3所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/0f917347ed54aa16b4cb29db25736870877ed3da133f68b21b31baf2754d7d13.jpg)



图6-3科研结果的堆积折线图


## 6.2.2示例：绘制苹果公司股票OHLC堆积折线图

股票分析师会采用OHLC（Open（开盘价）-High（最高价）-Low（最低价）-Close（收盘价）缩写）堆积折线图分析。本节我们介绍如何绘制苹果公司股票OHLC堆积折线图，数据来自“AAPL.csv”文件，部分内容如图6-4所示。

<table><tr><td colspan="2">A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td></td></tr><tr><td>1</td><td>Date</td><td>Close</td><td>Volume</td><td>Open</td><td>High</td><td>Low</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>2023/1/1</td><td>$186.68</td><td>53117000</td><td>$185.55</td><td>$187.56</td><td>$185.01</td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>2023/1/2</td><td>$187.00</td><td>51245330</td><td>$183.74</td><td>$187.05</td><td>$183.67</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>2023/1/3</td><td>$183.96</td><td>49515700</td><td>$184.90</td><td>$185.41</td><td>$182.59</td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>2023/1/4</td><td>$185.01</td><td>49799090</td><td>$184.41</td><td>$186.10</td><td>$184.41</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>2023/1/5</td><td>$184.92</td><td>101256200</td><td>$186.73</td><td>$186.99</td><td>$184.27</td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>2023/1/6</td><td>$186.01</td><td>65433170</td><td>$183.96</td><td>$186.52</td><td>$183.78</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>2023/1/7</td><td>$183.95</td><td>57462880</td><td>$183.37</td><td>$184.39</td><td>$182.02</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>2023/1/8</td><td>$183.31</td><td>54929130</td><td>$182.80</td><td>$184.15</td><td>$182.44</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>2023/1/9</td><td>$183.79</td><td>54755000</td><td>$181.27</td><td>$183.89</td><td>$180.97</td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>2023/1/10</td><td>$180.96</td><td>48899970</td><td>$181.50</td><td>$182.23</td><td>$180.63</td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>2023/1/11</td><td>$180.57</td><td>50214880</td><td>$177.90</td><td>$180.84</td><td>$177.46</td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td>2023/1/12</td><td>$177.82</td><td>61944620</td><td>$178.44</td><td>$181.21</td><td>$177.32</td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td>2023/1/13</td><td>$179.21</td><td>64848370</td><td>$179.97</td><td>$180.12</td><td>$177.43</td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td>2023/1/14</td><td>$179.58</td><td>121946500</td><td>$182.63</td><td>$184.95</td><td>$178.04</td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>2023/1/15</td><td>$180.95</td><td>61996910</td><td>$181.03</td><td>$181.78</td><td>$179.26</td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td>2023/1/16</td><td>$180.09</td><td>68901810</td><td>$177.70</td><td>$180.12</td><td>$176.93</td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>2023/1/17</td><td>$177.25</td><td>99625290</td><td>$177.33</td><td>$179.35</td><td>$176.76</td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>2023/1/18</td><td>$177.30</td><td>55964400</td><td>$176.96</td><td>$178.99</td><td>$176.57</td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td>2023/1/19</td><td>$175.43</td><td>54834980</td><td>$173.32</td><td>$175.77</td><td>$173.11</td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td>2023/1/20</td><td>$172.99</td><td>56058260</td><td>$172.41</td><td>$173.90</td><td>$171.69</td><td></td><td></td><td></td><td></td></tr><tr><td>22</td><td>2023/1/21</td><td>$186.68</td><td>53117000</td><td>$185.55</td><td>$187.56</td><td>$185.01</td><td></td><td></td><td></td><td></td></tr><tr><td>23</td><td>2023/1/22</td><td>$187.00</td><td>51245330</td><td>$183.74</td><td>$187.05</td><td>$183.67</td><td></td><td></td><td></td><td></td></tr><tr><td>24</td><td>2023/1/23</td><td>$183.96</td><td>49515700</td><td>$184.90</td><td>$185.41</td><td>$182.59</td><td></td><td></td><td></td><td></td></tr><tr><td>25</td><td>2023/1/24</td><td>$185.01</td><td>49799090</td><td>$184.41</td><td>$186.10</td><td>$184.41</td><td></td><td></td><td></td><td></td></tr><tr><td>26</td><td>2023/1/25</td><td>$184.92</td><td>101256200</td><td>$186.73</td><td>$186.99</td><td>$184.27</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="11">27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 27 、AAPL 十</td></tr></table>


图6-4 AAPL.csv文件（部分）


示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```txt
data = pd.read_csv("data/AAPL.csv") 
```

```txt
data['Close'] = data['Close'].str.replace("$', '').astype(float)
data['Open'] = data['Open'].str.replace("$', '').astype(float)
data['High'] = data['High'].str.replace("$', '').astype(float)
data['Low'] = data['Low'].str.replace("$', '').astype(float) 
```

```python
data['Date'] = pd.to_datetime(data['Date']) ③ 
```

```txt
plt.figure(figsize=(10, 6)) 
```

```python
plt.plot(data['Date'], data['Close'], label='收盘价', color='blue', linewidth=1)
plt.plot(data['Date'], data['Open'], label='开盘价', color='green', linewidth=1)
plt.plot(data['Date'], data['High'], label='最高价', color='red', linewidth=1)
plt.plot(data['Date'], data['Low'], label='最低价', color='purple', linewidth=1)
```

```python
plt.fill_between(data['Date'], data['Open'], data['Close'], color='lightblue', alpha=0.5)
plt.fill_between(data['Date'], data['Low'], data['High'], color='lightgreen', alpha=0.5) 
```

```txt
plt.title('苹果公司股票 OHLC 堆积折线图')
plt.xlabel('日期')
plt.ylabel('价格')
```

```txt
plt.grid(True) 
```

```txt
plt.xticks(rotation=45) 
```

```txt
plt.legend() 
```

```txt
plt.tight_layout()
plt.show() 
```

主要代码的解释如下。

代码第①～②行是数据清洗部，其中使用.str.replace('$', '') 去除OHLC 列中的美元符号，并使用 .astype(float) 将它们转换为浮点数类型。这是因为在 CSV 文件中，这些价格值可能包含美元符号，而在绘制时需要将其转换为数值。

代码第③行将日期列转换为日期时间类型，以便后续的时间序列绘图。这使得 Matplotlib 能够正确地处理日期数据。

代码第④～⑦行用来绘制OHLC堆积折线图，其中使用 plt.plot 绘制四条折线，代表收盘价、开盘价、最高价和最低价。每一行代码都会绘制一条折线，其中包括标签、颜色和线宽度的设置。

代码第⑧行使用plt.fill_between函数在开盘价和收盘价之间填充浅蓝色，用于表示每日的价格涨跌情况。

代码第⑨行使用plt.fill_between 函数在最低价和最高价之间填充浅绿色，用于表示每日价格的波动范围。

运行示例代码，绘制的图形如图6-5所示。


苹果公司股票OHLC堆积折线图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/16750c1191fc128015f4641d9af7a8fb7f1c07184018a500f3fa62f02f5191ae.jpg)



图6-5苹果公司股票OHLC堆积折线图


## 6.3 堆积面积图

堆积面积图是一种数据可视化图形，通常用于展示多个类别的数据在一个连续轴上的累积关系。每个类别的数据以不同颜色的堆积区域表示，以便观察整体趋势及每个类别的贡献。

## 6.3.1 堆积面积图的应用

堆积面积图通常用于展示多个类别或组的数据在一个时间段或连续轴上的积累趋势。以下是堆积面积图的应用示例。

（1）财务数据分析：堆积面积图可以用来展示公司的财务数据，如收入、成本、利润等在不同时间段的堆积变化。每个类别代表一个财务指标，而时间轴表示不同的财年或季度。

（2）市场份额分析：堆积面积图可用于展示不同竞争对手在市场上的份额随时间的变化。每个竞争对手的市场份额以不同颜色的堆积面积表示，以便比较它们的影响力。

（3）生态学研究：在生态学研究中，堆积面积图可以用来展示不同物种在生态系统中的相对丰富度随时间的变化。每个物种的丰富度以不同颜色的堆积面积表示。

（4）人口统计学：堆积面积图可以用于展示不同年龄组或人口组在一段时间内的人口分布变化。每个年龄组或人口组以不同颜色的堆积面积表示。

（5）气象数据分析：在气象学中，堆积面积图可用于展示不同气象因素（如温度、湿度、降水等）在一年中的季节性变化。每个气象因

素以不同颜色的堆积面积表示。

（6）电力消耗分析：堆积面积图可用于展示不同能源来源（如煤炭、天然气、风能、太阳能等）在一个地区的电力消耗情况。每种能源来源以不同颜色的堆积面积表示。

堆积面积图是一种强大的工具，可帮助我们理解数据的分布、趋势和相对贡献。通过比较不同类别的堆积面积，我们可以快速识别出主要的趋势和变化，从而作出更好的决策。

## 6.3.2绘制堆积面积图

绘制堆积面积图通常需要多个数据系列，以便将它们堆积在一起。下面是一个使用Matplotlib库绘制堆积面积图的示例代码。

```python
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```txt
data = pd.DataFrame({
'Month': ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
'Series1': [10, 15, 25, 30, 35],
'Series2': [5, 10, 15, 20, 25],
'Series3': [8, 12, 18, 24, 30]
}) 
```

```txt
plt.figure(figsize=(10, 6)) 
```

```python
colors = ['skyblue', 'lightgreen', 'salmon'] 
```

```python
plt.stackplot(data['Month'], data['Series1'], data['Series2'], data['Series3'], labels=['Series1', 'Series2', 'Series3'], colors=colors)

# 添加标题和轴标签
plt.title('堆积面积图示例')
plt.xlabel('月份')
plt.ylabel('值')

# 添加图例
plt.legend(loc='upper left')

# 显示图表
plt.show()
```

在上述示例代码中，我们首先使用了一个示例数据集，其中包含三个数据系列（Series1、Series2和Series3）。然后，我们使用plt.stackplot函数绘制堆积面积图，指定数据系列、标签和颜色。最后，我们添加了标题、轴标签和图例，并通过plt.show()显示图表。

运行示例代码，绘制的图形如图6-6所示。


堆积面积图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/25f2ed28f7bc5728539f6d5f1f439f07840d7d69e9080ce93587008b834fd0ed.jpg)



图6-6堆积面积图示例


## 6.3.3 示例：绘制苹果公司股票OHLC堆积面积图

6.2.2节的苹果公司股票OHLC堆积折线图，还可以使用OHLC堆积面积图来表示，示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```txt
从CSV文件中读取数据data = pd.read_csv("data/AAPL.csv")
```

```txt
data['Close'] = data['Close'].str.replace("$', '').astype(float)
data['Open'] = data['Open'].str.replace("$', '').astype(float)
data['High'] = data['High'].str.replace("$', '').astype(float)
data['Low'] = data['Low'].str.replace("$', '').astype(float) 
```

```python
data['Date'] = pd.to_datetime(data['Date']) 
```

```txt
plt.figure(figsize=(10, 6)) 
```

```python
stacked_data = data[['Open', 'Low', 'Close', 'High']].cumsum(axis=1) ① 
```

```python
plt.fill_between(data['Date'], stacked_data['Open'], stacked_data['Low'], color='lightblue', alpha=0.5, label='开盘价 - 最低价') # 用不同颜色填充开盘价 - 最低价之间的区域
plt.fill_between(data['Date'], stacked_data['Low'], stacked_data['Close'], color='lightgreen', alpha=0.5, label='最低价 - 收盘价') # 用不同颜色填充最低价 - 收盘价之间的区域
plt.fill_between(data['Date'], stacked_data['Close'], stacked_data['High'], color='salmon', alpha=0.8, label='收盘价 - 最高价') # 使用更醒目的颜色和透明度填充收盘价 - 最高价之间的区域
```

```txt
plt.title('苹果公司股票 OHLC 堆积面积图（包括最高价）')
plt.xlabel('日期')
```

```python
plt.ylabel('价格')  
# 添加网格线  
plt.grid(True)  
# 旋转日期标签，以避免重叠  
plt.xticks(rotation=45)  
# 显示图例  
plt.legend()  
# 显示图形  
plt.tight_layout()  
plt.show()
```

主要代码的解释如下。

代码第①行计算堆积数据，使用Pandas中的.cumsum()函数计算了OHLC四列数据的累积和，得到的堆积数据用于绘制堆积面积图。

运行示例代码，绘制的图形如图6-7所示。


苹果公司股票OHLC堆积面积图（包括最高价）


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/2439e28ba64be6edc7903da062c6ac1ad080b34a2ed15735fc6c7b58804b5530.jpg)



图6-7苹果公司股票OHLC堆积面积图（包括最高价）


## 6.4 堆积柱状图

堆积柱状图是一种用于可视化分类数据的图形类型，特别适用于展示多个类别在一个或多个组中的相对比例和总计。它将多个柱状图堆积在一起，以形成一个整体柱状图，其中每个柱子代表一个组，而堆积在柱子内部的不同颜色的部分代表不同的类别。

## 6.4.1 堆积柱状图的应用

堆积柱状图主要用于呈现不同类别的数据在多个组或子组中的比例和组成。以下是堆积柱状图常见的应用示例。

（1）市场份额分析：堆积柱状图常用于展示不同品牌或公司的市场份额。每个柱子代表一个市场或行业，柱子内的不同颜色部分表示不同品牌或公司的市场份额，帮助观察者理解各个品牌的相对地位。

（2）资源分配：在项目管理中，堆积柱状图可用于展示不同资源或任务在项目中的分配情况。每个柱子代表一个项目阶段或时间段，柱子内的不同颜色部分表示不同资源或任务的占用情况，有助于优化资源分配。

（3）研究数据分析：在科学研究中，堆积柱状图可以用来展示实验数据的不同类别的分布情况。每个柱子代表一个实验条件或样本组，柱子内的不同颜色部分表示不同类别的测量值。

（4）金融分析：在金融领域中，堆积柱状图可以用来展示不同资产类别的投资组合。每个柱子代表一个投资组合，柱子内的不同颜色部分表示不同资产类别的占比。

总之，堆积柱状图是一种强大的工具，可用于多个领域的数据分析和可视化，以帮助观察者更好地理解数据的组成和比例关系。

## 6.4.2 绘制堆积柱状图

Matplotlib库和Seaborn库都可以绘制堆积柱状图，Matplotlib提供了更多的控制选项，适合需要自定义绘图的情况，而Seaborn更适合快速创建具有漂亮默认样式的图表，甚至我们还可以使用Pandas库直接绘制。

以下示例代码演示了如何使用Matplotlib绘制堆积柱状图。

```python
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 城市和对应的气体成分比例数据
cities = ['北京', '上海', '广州']
oxygen = [21, 25, 19]  # 氧气比例（%）
nitrogen = [70, 65, 60]  # 氮气比例（%）
other_gases = [9, 10, 21]  # 其他气体比例（%）

# 创建图表
plt.figure(figsize=(8, 6))
```

```python
绘制堆积柱状图，使用不同颜色
plt.bar(cities, oxygen, label='氧气', color='lightblue') ①
plt.bar(cities, nitrogen, label='氮气', color='lightgreen', bottom=oxygen) ②
plt.bar(cities, other_gases, label='其他气体', color='orange', bottom=[sum(x) for x in zip(oxygen, nitrogen)]) ③
添加轴标签和标题
plt.xlabel('城市')
plt.ylabel('气体比例(%)')
plt.title('不同城市的空气成分比例')
调整图例位置
plt.legend(loc='upper left', bbox_to_anchor=(1, 1)) ④
显示图表
plt.show()
```

主要代码的解释如下。

代码第①～③行分别绘制了堆积柱状图的三个部分，分别表示氧气、氮气和其他气体的比例。在这里，我们使用不同的颜色来区分这些部分，通过color参数指定颜色。通过bottom参数来指定在绘制氮气和其他气体时的基线是氧气部分，这样它们就会叠加在氧气上。

代码第④行用于添加图例，loc='upper left' 指定了图例的位置在左上角，bbox_to_anchor=(1, 1)指定了图例放在图表的外部，以避免图例遮挡图形。

综上所述，这段代码创建了一个堆积柱状图，用于比较不同城市的空气成分比例，通过设置不同的颜色和图例位置，使图表更加清晰和易于理解。运行上述代码，绘制的图形如图6-8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/86e5fb435dff1488771f5edde037e11b428481a47ffe40fce13bf4c011db07d1.jpg)



图6-8不同城市的空气成分比例


## 6.4.3示例：绘制玻璃特征堆积柱状图

本节我们通过一个示例熟悉一下如何绘制堆积柱状图，该示例数据来自“Glass.csv”文件，该文件存储有关不同类型的玻璃样本的化学成分数据，部分内容如图6-9所示。

该文件包含以下列。

RI：折射率（Refractive Index），是光通过玻璃时的折射率。

Na：钠的含量，以百分比表示。

Mg：镁的含量，以百分比表示。

Al：铝的含量，以百分比表示。

Si：硅的含量，以百分比表示。

K：钾的含量，以百分比表示。

Ca：钙的含量，以百分比表示。

Ba：钡的含量，以百分比表示。

Fe：铁的含量，以百分比表示。

Type：玻璃的类型，是一个分类标签。在这个数据集中，每个类型都用一个整数表示。

<table><tr><td colspan="2">A1</td><td><eq>\vdots</eq></td><td colspan="2">✘ ✓ <eq>{f}_{x}</eq></td><td colspan="7">RI</td></tr><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td></td></tr><tr><td>1</td><td>RI</td><td>Na</td><td>Mg</td><td>AI</td><td>Si</td><td>K</td><td>Ca</td><td>Ba</td><td>Fe</td><td>Type</td><td></td></tr><tr><td>2</td><td>1.52101</td><td>13.64</td><td>4.49</td><td>1.1</td><td>71.78</td><td>0.06</td><td>8.75</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>3</td><td>1.51761</td><td>13.89</td><td>3.6</td><td>1.36</td><td>72.73</td><td>0.48</td><td>7.83</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>4</td><td>1.51618</td><td>13.53</td><td>3.55</td><td>1.54</td><td>72.99</td><td>0.39</td><td>7.78</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>5</td><td>1.51766</td><td>13.21</td><td>3.69</td><td>1.29</td><td>72.61</td><td>0.57</td><td>8.22</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>6</td><td>1.51742</td><td>13.27</td><td>3.62</td><td>1.24</td><td>73.08</td><td>0.55</td><td>8.07</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>7</td><td>1.51596</td><td>12.79</td><td>3.61</td><td>1.62</td><td>72.97</td><td>0.64</td><td>8.07</td><td>0</td><td>0.26</td><td>1</td><td></td></tr><tr><td>8</td><td>1.51743</td><td>13.3</td><td>3.6</td><td>1.14</td><td>73.09</td><td>0.58</td><td>8.17</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>9</td><td>1.51756</td><td>13.15</td><td>3.61</td><td>1.05</td><td>73.24</td><td>0.57</td><td>8.24</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>10</td><td>1.51918</td><td>14.04</td><td>3.58</td><td>1.37</td><td>72.08</td><td>0.56</td><td>8.3</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>11</td><td>1.51755</td><td>13</td><td>3.6</td><td>1.36</td><td>72.99</td><td>0.57</td><td>8.4</td><td>0</td><td>0.11</td><td>1</td><td></td></tr><tr><td>12</td><td>1.51571</td><td>12.72</td><td>3.46</td><td>1.56</td><td>73.2</td><td>0.67</td><td>8.09</td><td>0</td><td>0.24</td><td>1</td><td></td></tr><tr><td>13</td><td>1.51763</td><td>12.8</td><td>3.66</td><td>1.27</td><td>73.01</td><td>0.6</td><td>8.56</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>14</td><td>1.51589</td><td>12.88</td><td>3.43</td><td>1.4</td><td>73.28</td><td>0.69</td><td>8.05</td><td>0</td><td>0.24</td><td>1</td><td></td></tr><tr><td>15</td><td>1.51748</td><td>12.86</td><td>3.56</td><td>1.27</td><td>73.21</td><td>0.54</td><td>8.38</td><td>0</td><td>0.17</td><td>1</td><td></td></tr><tr><td>16</td><td>1.51763</td><td>12.61</td><td>3.59</td><td>1.31</td><td>73.29</td><td>0.58</td><td>8.5</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>17</td><td>1.51761</td><td>12.81</td><td>3.54</td><td>1.23</td><td>73.24</td><td>0.58</td><td>8.39</td><td>0</td><td>0</td><td>1</td><td></td></tr><tr><td>18</td><td>1.51784</td><td>12.68</td><td>3.67</td><td>1.16</td><td>73.11</td><td>0.61</td><td>8.7</td><td>0</td><td>0</td><td>1</td><td></td></tr></table>


图6-9 Glass.csv文件（部分）


示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
sns.set_palette("coolwarm")  # 设置颜色调色板 ①

# 读取 CSV 文件，指定列名称
data = pd.read_csv('data/Glass.csv', usecols=['RI', 'Na', 'Mg', 'Al', 'Si', 'K', 'Ca', 'Ba', 'Fe', 'Type']) ②

# 选择要绘制的数值列
cols = ['Na', 'Mg', 'Al', 'Si', 'K', 'Ca', 'Ba', 'Fe']

# 创建画布
fig, ax = plt.subplots(figsize=(8,6))

# 按 Type 列分组，绘制堆积柱状图，使用自定义颜色
data[cols].groupby(data['Type']).sum().plot(kind='bar', stacked=True, ax=ax)③

# 设置标签
```

```python
ax.set_xlabel('玻璃类型')  
ax.set_ylabel('数值')  
ax.set_title('玻璃元素的堆积柱状图')  
# 显示图例  
ax.legend(['钠(Na)', '镁(Mg)', '铝(Al)', '硅(Si)', '钾(K)', '钙(Ca)', '钡(Ba)', '铁(Fe)'])  
plt.show()
```

这段代码使用了Pandas、Seaborn和Matplotlib库来创建一个堆积柱状图，用于比较不同类型玻璃中各元素的含量。

主要代码的解释如下。

代码第①行使用Seaborn库的颜色调色板，使得图表的颜色更加美观。

代码第②行读取了一个CSV文件，包含各元素的含量数据及玻璃的类型。

代码第③行使用Pandas库的plot函数，按照玻璃类型（'Type'列）将数据分组，并绘制了堆积柱状图，以可视化各元素的含量。stacked=True参数使得柱状图堆积起来，表示各元素的累积含量。


玻璃元素的堆积柱状图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/0c633956954686a17d7ee1edb99d816a8b0bed1392cb01caae0249fd3b8607fe.jpg)



图6-10玻璃元素的堆积柱状图


运行示例代码，绘制的图形如图6-10所示。

## 6.5 平行坐标图

平行坐标图是一种用于可视化多维数据的图形类型。它特别适用于探索多个特征或属性之间的关系，在数据可视化中被广泛使用。在平行坐标图中，每个数据点表示一条线段，该线段与坐标轴平行，每个坐标轴代表数据的一个特征或属性。通过在不同的坐标轴上绘制线段，可以观察到不同特征之间的关系和模式。

以下是平行坐标图的应用示例。

（1）数据探索和发现模式：平行坐标图可用于探索多维数据集中的模式、趋势和异常值。通过观察线段在不同坐标轴上的分布和交叉，可以帮助数据分析人员识别数据中的关系和规律。

（2）特征分析：在机器学习和数据科学中，平行坐标图可以用来分析不同特征之间的相关性和影响。这有助于选择最重要的特征以用于建模和预测。

（3）分类和聚类：平行坐标图可以帮助可视化不同类别或簇之间的差异。这对于分类和聚类任务的结果解释和验证非常有用。

（4）时间序列分析：如果每个坐标轴代表时间的不同点，那么平行坐标图可以用于可视化时间序列数据中的趋势和变化。

（5）地理信息系统（GIS）：在GIS中，平行坐标图可以用于可视化和分析具有多个地理属性的地理数据，如城市规划、地理特征的空间分布等。

（6）生物信息学：在生物学和遗传学中，平行坐标图可以用于分析基因组数据，比较不同基因的表达水平，或者可视化不同样本之间的差异。

（7）金融分析：在金融领域中，平行坐标图可以用于分析不同金

融指标之间的关系，或者用于股票和投资组合的分析。

总之，平行坐标图是一种多功能的可视化工具，可用于各种领域的数据分析和探索，特别是当涉及多维数据时。

## 6.5.1 绘制平行坐标图

可以使用Python中的Matplotlib或Seaborn库绘制平行坐标图。以下示例代码演示了如何使用Seaborn创建平行坐标图。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 读取 iris 数据集
iris = sns.load_dataset('iris') ①

# 创建平行坐标图
plt.figure(figsize=(10, 6))
pd.plotting.parallel_coordinates(iris, 'species', colormap='viridis') ②
# 添加标题
plt.title("平行坐标图示例")
# 显示图表
plt.show()
```

这段代码的目的是绘制一个平行坐标图，用于可视化iris数据集中不同种类的鸢尾花在四个特征（花萼长度、花萼宽度、花瓣长度和花瓣宽度）上的分布情况。通过不同种类的鸢尾花的线条颜色，我们以观察它们在不同特征上的差异。

主要代码的解释如下。

代码第①行使用load_dataset函数加载了iris数据集，该数据集包含鸢尾花的特征数据。

代码第②行使用parallel_coordinates函数创建了平行坐标图。其中，“iris”是数据集，“species”是类别列，用于确定数据点的颜色，“colormap='viridis'” 设置了颜色映射为 “viridis”。

运行示例代码，绘制的图形如图6-11所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/5a85b993fdb50718601c9c19aea700fb79fb06146706dff62a63ebdd7bc0bd42.jpg)



图6-11平行坐标图示例


提示 如何分析平行坐标图？

当绘制好平行坐标图后，可以采用以下步骤来分析和理解图表。

（1）观察趋势：首先，查看每条线（数据点）在不同维度上的走势。观察线条是如何在各个维度之间移动的。这有助于识别维度之间的关系和趋势。

（2）比较不同类别：如果我们在图上使用了颜色映射或图例来表示不同的类别或分组，比较不同颜色之间的线条。看看它们是否在不同维度上有明显的差异。

（3）查找模式：尝试识别任何可见的模式或形状。这些模式可能表明数据在某些维度上具有特定的行为或关系。

（4）关注交叉点：注意数据线在平行坐标图中的交叉点。当线条相交时，表示数据在该维度上具有相似性。寻找这些交叉点有助于理解哪些维度之间存在关联。

（5）查找异常值：观察是否有任何在某些维度上明显偏离的数据点，这些可能是异常值。异常值可能对整体数据分析产生重要影响。

（6）多维度比较：利用平行坐标图的多维度特性，同时观察多个维度之间的关系。这有助于理解多个因素如何一起影响数据。

## 8.5.2示例：绘制高温和低温条件下的数据差异平行坐标图

温度对于空气的各种指标是有一定的影响的，本例我们通过平行坐标图，观察和分析高温和低温条件对空气中各种指标数据的影响。

示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D 
```

```python
data = pd.read_csv('data/airquality.csv') 
```

```python
high_temp_data = data[data['Temp'] > 80]  
low_temp_data = data[data['Temp'] <= 80] 
```

```txt
plt.figure(figsize=(12, 8)) # 增加图表大小
```

```txt
pd.plotting.parallel_coordinates(high_temp_data, 'Month', colormap='Reds', alpha=0.7, linewidth=2) # 颜色映射为 'Reds' ④
pd.plotting.parallel_coordinates(low_temp_data, 'Month', colormap='Blues', alpha=0.7, linewidth=2) # 颜色映射为 'Blues' ⑤
```

```python
red_line = Line2D([0], [0], color='red', markerfacecolor='red', label='高温条件')
⑥
blue_line = Line2D([0], [0], color='blue', markerfacecolor='blue', label='低温条件')
⑦
```

```txt
plt.xlabel('特征', fontsize=12) # 调整字体大小
plt.ylabel('数值', fontsize=12)
plt.title('高温和低温条件下的数据差异平行坐标图', fontsize=14) # 调整标题字体大小
```

```javascript
plt.legend(['高温条件', '低温条件'], fontsize=12) # 调整图例字体大小
```

```python
plt.grid(axis='y', linestyle='--', alpha=0.5) 
```

```txt
plt.gca().set_facecolor('#F4F4F4') # 设置图表背景颜色
```

```txt
# 显示图表
plt.show()
```

这段代码展示了如何使用 Python 中的 Pandas 和 Matplotlib 库创建平行坐标图，用于比较高温和低温条件下的气象数据差异。

主要代码的解释如下。

代码第①行从 matplotlib.lines 模块中导入 Line2D 类。Line2D 是matplotlib 中的一个核心类，用于表示二维图像中的线条。

代码第②～③行通过条件筛选创建两个新的DataFrame对象，high_temp_data 包含高温条件下的数据，low_temp_data 包含低温条件下的数据。

代码第④～⑤行使用pd.plotting.parallel_coordinates 绘制平行坐标图。对于高温条件下的数据，颜色映射为“Reds”，线条不透明度为0.7，线条宽度为 2；对于低温条件下的数据，颜色映射为“Blues”，线条不透明度为0.7，线条宽度为2。

代码第⑥～⑦行创建了两个图例条目，其参数含义如下。

[0], [0]：这两个参数指定了图例条目的位置。通常我们不关注这个位置，因此可以将其设置为0。

color：指定图例条目的颜色。

markerfacecolor：指定标记内部填充的颜色。

label：指定图例条目的标签。

这段代码产生了一个平行坐标图，用于比较高温和低温条件下的气象数据的差异，通过不同颜色的线条和标签来区分两组数据。这种可视化工具有助于观察数据的分布和趋势。

运行示例代码，绘制的图形如图6-12所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/5e0a870ed959ae3f2497b752b4fcace584ce066feaf8745bcea2fa25af1825fa.jpg)



图6-12 高温和低温条件下的数据差异平行坐标图


## 6.6 矩阵图

矩阵图（Correlation Matrix Plot）是一种用于可视化多个变量之间相关性的图形。

矩阵图有多种类型，以下是一些常见的类型。

相关性矩阵图。

散点矩阵图。

密度矩阵图。

每种类型的矩阵图都有其独特的用途和优势，接下来我们分别介绍一下。

## 6.6.1相关性矩阵图

相关性矩阵图是一种用于可视化多个变量之间的关联关系的图形。它通常用于了解数据中各个变量之间的相关性，帮助发现变量之间的潜在模式或趋势。在相关性矩阵图中，变量以矩阵的形式排列，每个单元格显示两个变量之间的关联度，通常使用颜色编码来表示。

相关性矩阵图通常使用热力图来表示。在热力图中，相关性矩阵的数值（相关系数）通过颜色编码来表示。通常，相关性强度的高低用颜色的深浅来表示，深色表示相关性较强，浅色表示相关性较弱。采用这种可视化方式，可以一目了然地了解多个变量之间的相关性。

提示 相关性系数表示多个变量的相关性度量，通常使用Pearson（皮尔逊）相关系数，皮尔逊相关系数的取值范围为-1到1之间。

当相关系数为 1 时，表示完全正相关，即两个变量呈线性正关系。

当相关系数为 -1 时，表示完全负相关，即两个变量呈线性负关系。

当相关系数接近 0 时，表示没有线性关系，即两个变量之间没有线性关联。

由于相关性矩阵图采用热力图表示，具体的绘制方法可以参考5.6.2小节，这里不再赘述。

## 6.6.2示例：绘制不同汽车型号性能相关性热力图

下面我们使用mpg_ggplot2数据集比较不同型号的汽车的性能数据，包括燃油效率、马力等。

示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

sns.set() # 使用 Seaborn 库的默认设置来绘制图形
plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
```

```python
plt.rcParams['axes.unicode_minus'] = False # 设置负号显示
# 读取 CSV 文件
df = pd.read_csv("data/mpg_ggplot2.csv")
# 选择数值类型的列
numeric_columns = df.select_dtypes(include=['number'])
# 计算性能相关性矩阵
correlation_matrix = numeric_columns.corr()
# 使用 Seaborn 创建热力图
plt.figure(figsize=(10, 8))
sns.heatmap(correlation_matrix,
    annot=True,
    cmap='coolwarm',
    linewidths=.5)
# 添加标题
plt.title('不同汽车型号性能相关性热力图')
# 显示图形
plt.tight_layout()
plt.show()
```

主要代码的解释如下。

代码第①行使用df.select_dtypes(include=['number'])选择数据框中的数值类型列，将其存储在numeric_columns中。这一步可以确保只计算数值列之间的相关性。

代码第②行使用numeric_columns.corr()计算选定的数值列之间的相关性矩阵，并将结果存储在correlation_matrix中。这个矩阵将包含每对列之间的相关性值。

代码第③行使用sns.heatmap()函数创建热力图，传递了相关性矩阵correlation_matrix，参数设置如下。

annot=True：在每个单元格中显示相关性值。

$\scriptstyle { \mathrm { c m a p } } = ^ { \prime } { \mathrm { c o o l w a r m } } ^ { \prime }$ ：设置颜色映射为冷暖色调。

linewidths=.5：设置单元格之间的线宽。

运行上述代码，绘制的图形如图6-13所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/5d00fb0ee55e950d19ea59fc8769e55b899fa29dc24950283e456020fdd11fac.jpg)



图6-13不同汽车型号性能相关性热力图


## 6.6.3 散点矩阵图

散点矩阵图也称为散点矩阵或散点图矩阵，是一种用于可视化多个数值变量之间的关系的图形。它将多个散点图排列成矩阵的形式，使我们可以在同一图中比较不同变量之间的散点关系。

以下示例代码演示了如何使用Seaborn库创建散点矩阵图。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()
# 设置图表的样式和图中字体
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 导入数据集（示例数据）
# 这里使用 Seaborn 内置的 iris 数据集作为示例
iris = sns.load_dataset("iris")
```

```python
# 创建散点矩阵图
sns.pairplot(iris, hue="species", markers=["o", "s", "D"])
# 添加图标题
plt.suptitle("散点矩阵图示例")
# 显示图表
plt.show()
```

在这个示例代码中，我们使用Seaborn的pairplot函数创建了散点矩阵图。参数hue="species"用于根据类别变量（这里是花的种类）对散点进行着色，而markers参数指定了不同类别的数据点的形状。

散点矩阵图将显示数据集中各个数值变量之间的关系，其中每个小散点图对应两个不同变量的散点图。这种可视化方式有助于发现变量之间的模式、趋势和相关性。

运行上述代码，绘制的图形如图6-14所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/00ec7a3cfda12d49a41b8372daf25ecef3dcac84814543d4726946b2e3b2d997.jpg)



图6-14 散点矩阵图示例


## 6.6.4 示例：绘制车辆特征散点矩阵图

下面我们使用mpg_ggplot2数据集绘制车辆特征散点矩阵图，示例代码如下。

```python
import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt

# 使用 Seaborn 的默认样式
sns.set()

# 读取数据
f = pd.read_csv("data/mpg_ggplot2.csv")

# 创建散点矩阵图
sns.set_style("ticks") # 设置图表样式为 ticks
sns.pairplot(f, diag_kind="kde", markers="o", hue="class")

# 显示图表
plt.show()
```

在这个示例代码中，我们首先读取了CSV文件中的数据，然后使用Seaborn的pairplot函数创建了相关性散点矩阵图。diag_kind="kde"参数用于在对角线上显示核密度估计，markers="o"参数表示使用圆点作为散点的标记，hue="class"参数根据数据的class列对散点进行着色。

运行上述代码，绘制的图形如图6-15所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/3e903c5ef6c25b75ca9770a510257c36cefe02db57ecb8a95f2a16a53d5dcaee.jpg)



图6-15车辆特征散点矩阵图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/a2a61762f2ca62acfc3cca9cb859a081df7ca3afc14b391a8a2a887cf908b6bc.jpg)



图6-15车辆特征散点矩阵图（续）


## 6.6.5 密度矩阵图

密度矩阵图是一种用于可视化多个数值变量之间的关系和分布的图形技术。它类似于散点矩阵，但用密度估计替代了散点图，以更清晰地显示变量之间的分布。

以下示例代码演示了如何使用Python的Seaborn库创建密度矩阵图。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 设置图表样式和字体
sns.set_style('whitegrid', {'font.sans-serif': ['SimHei', 'Arial']})

# 使用 Seaborn 的默认样式
sns.set()

# 加载 Seaborn 内置的示例数据集
iris = sns.load_dataset("iris")

# 创建密度矩阵图
sns.pairplot(iris, diag_kind="kde", markers="o", hue="species") ①

# 显示图表
plt.show()
```

主要代码的解释如下。

代码第①行使用pairplot函数创建了密度矩阵图，其参数设置如下。

iris是包含数据的DataFrame。

diag_kind="kde"参数表示在对角线上显示核密度估计，以替代默认的直方图。

markers="o"参数表示使用圆点作为散点的标记。

hue="species"参数根据数据集中的"species"列对散点进行着色，以区分不同种类的鸢尾花。


运行上述代码，绘制的图形如图6-16所示。


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/8c3a222b01336c91ac9a5f1db2854f2acd98232f5fe59e823ca06a01b4180d93.jpg)



图6-16密度矩阵图


## 6.6.6示例：绘制车辆特征密度矩阵图

下面我们使用mpg_ggplot2数据集绘制车辆特征密度矩阵图，示例代码如下。

```python
import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt

# 读取数据
f = pd.read_csv("data/mpg_ggplot2.csv")
# 设置图表样式和字体
```

```python
sns.set_style('whitegrid', {'font.sans-serif': ['SimHei', 'Arial']})  
# 创建密度矩阵图  
sns.pairplot(f, diag_kind="kde", markers="o", hue="class") ②  
# 显示图表  
plt.show()
```

这个示例使用了车辆特征变量的数据集，以创建密度矩阵图。密度矩阵图有助于了解不同特征变量之间的关系和分布，以及不同类型车辆之间的差异。这对于数据探索和分析非常有用。读者可以根据需要自定义图表的标题、轴标签和样式。

主要代码的解释如下。

代码第①行读取了CSV文件中的数据，数据文件的路径为“data/mpg_ggplot2.csv”。该文件包含了车辆特征变量的信息，包括制造商、型号、排气量、年份、气缸数、变速器类型等。

代码第②行使用pairplot函数创建了密度矩阵图，其参数设置如下。

f是包含数据的DataFrame。

diag_kind="kde" 参数表示在对角线上显示核密度估计，以替代默认的直方图。

markers="o" 参数表示使用圆点作为散点的标记。

hue="class"参数根据数据的"class"列对散点进行着色，以区分不同类型的车辆。

运行上述代码，绘制的图形如图6-17所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/d6f7872d333c20cfb54b6d0e5c8552e45b280b71951fc3201027ac2858357d4c.jpg)



图6-17车辆特征密度矩阵图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/65e1ba6e5a45b247fa4dfe2e45458a91663cc3481cc61db27d75f58feec75d78.jpg)



图6-17车辆特征密度矩阵图（续）


## 6.7 分面网格分类图

分面网格分类图通常被用于可视化多个分类变量之间的关系，因此可以被视为一种多变量图形。通过分面（facet）将数据集拆分成多个小图，每个小图都显示了数据在一个或多个分类变量的不同子集之间的比较。

以下是分面网格分类图的应用示例。

（1）社会科学研究：在社会科学研究中，经常需要比较不同社会群体或群体子集的数据。分面网格分类图可以用来比较不同群体之间的变量分布，以识别潜在的趋势或差异。

（2）医学研究：在医学研究中，可以使用分面网格分类图来比较不同药物治疗组和对照组之间的效果。每个子图可以表示一个药物或治疗方法，纵轴可以表示治疗效果指标，以帮助医生和研究人员了解哪种治疗方法最有效。

（3）环境监测：在环境科学领域中，分面网格分类图可以用来比较不同地区或时间点的环境参数，如空气质量、水质或气温。这有助于科学家识别环境变化的模式和趋势。

（4）金融分析：在金融领域中，可以使用分面网格分类图来比较不同投资组合或资产类别的表现。每个子图可以代表一个投资组合，横轴可以表示时间，纵轴可以表示回报率。

## 6.7.1 绘制分面网格分类图

可以使用Python中的Seaborn库绘制分面网格分类图。分面网格分类图用于在不同子图中比较不同组或类别的数据分布，这有助于更好地理解数据的特征和关系。以下示例代码演示了如何使用Seaborn创建分面网格分类图。

```python
import matplotlib.pyplot as plt
# 加载数据集
df = sns.load_dataset("tips")
# 创建 FacetGrid 对象，按 time 列进行分面
g = sns.FacetGrid(df, col="time") ①
# 映射每个子图的直方图
g.map(plt.hist, "total_bill") ②
# 设置图标题为 time 列值
g.set_titles("{col_name}") ③
# 设置 x、y 轴标签
g.set_axis_labels("Total Bill", "Count")
# 调整子图间距
g.fig.subplots_adjust(wspace=0.3) ④
# 设置共享 y 轴的范围
g.set(ylim=(0, 60)) ⑤
# 显示图形
plt.show()
```

在上述示例代码中，使用Seaborn库创建了一个分面网格分类图，使用数据集tips，按照time列的不同值进行分面，并在每个子图中绘制了total_bill列的直方图。主要代码的解释如下。

代码第①行创建了一个FacetGrid对象 g，并使用 col="time" 指定按照time列进行分面，这意味着会有两个子图，分别对应 Lunch和Dinner。

代码第②行使用g.map(plt.hist, "total_bill") 在每个子图中绘制total_bill列的直方图。

代码第③行使用g.set_titles("{col_name}") 设置子图的标题，将标题设置为time列的值，即Lunch和Dinner。

代码第④行使用g.fig.subplots_adjust(wspace=0.3) 调整子图之间的水平间距，以改善布局。

代码第⑤行使用g.set(ylim=(0, 60)) 设置共享的y轴范围，将y轴范围限制在0到60之间。

运行上述代码，绘制的图形如图6-18所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/a7b18e9ae3cde66c0f5c74db9bb0d3024e3ed301f1b5ee292ce9bdb42ed374de.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/14d15d00fc44dc27258ac5561866e63bb0c84ba62dee4b600503e178dd64ad2e.jpg)



图6-18分面网格分类图示例


## 6.7.2示例：绘制不同制造商的汽车公路里程分布分面网格图

下面我们通过示例来熟悉分面网格图的绘制方法。该示例是为了创建一个分面网格分类图，用于比较不同制造商的汽车公路里程分布。


示例代码如下。


```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 设置图表样式和字体
sns.set_style('whitegrid', {'font.sans-serif': ['SimHei', 'Arial']})
# 读取数据
df = pd.read_csv("data/mpg_ggplot2.csv")

# 创建 FacetGrid 对象，按 manufacturer 进行分面，同时使用 hue 参数按 class 分组并赋予不同颜色
g = sns.FacetGrid(df, col="manufacturer", col_wrap=3, hue="class") ①

# 子图绘制带有颜色标记的直方图
g. map(sns.histplot, "hwy", bins=10) ②
# 设置轴标签
g. set_axis_labels("Highway MPG", "Count")
# 调整子图间距
g. fig.subplots_adjust(wspace=0.3) ③

# 设置共享的 y 轴范围
g. set(ylim=(0, 8))

# 添加整个图形的标题
g. fig.suptitle("不同制造商的汽车公路里程分布（按类别着色）", y=1.02)

# 添加图例
g. add_legend(title="车辆类型")

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行创建FacetGrid对象：使用Seaborn的FacetGrid函数创建一个分面网格对象 g。这个对象将帮助对数据进行分组，并在多个子图中显示这些分组的数据。

代码第②行使用sns.histplot函数映射到每个子图上，绘制了hwy列的直方图。bins=10参数指定了直方图的分箱数量。

代码第③行使用g.fig.subplots_adjust(wspace=0.3)调整子图之间的水平间距，以改善布局。

运行示例代码，绘制的图形如图6-19所示。


不同制造商的汽车公路里程分布（按类别着色）


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/051b9c922d920d1854380738a0cad1313be551087ec08e634401a54ddeddcdc0.jpg)


图6-19不同制造商的汽车公路里程分布分面网格图

这段代码的最终效果是创建一个分面网格分类图，每个子图代表不同制造商的汽车在公路里程方面的分布情况，而颜色则根据车辆类型进行区分，帮助您观察和比较不同制造商和车辆类型之间的关系。

## 6.8 本章总结

本章介绍了多变量数据的可视化方法，包括气泡图、堆积折线图、堆积面积图、堆积柱状图、平行坐标图、矩阵图和分面网格分类图。这些方法允许我们在一个图表中同时展示多个变量的关系，以更全面地理解数据。通过这些多变量图形，我们可以更深入地分析数据，识别趋势和关联性，提高数据分析和可视化的技能。

## 第7章 绘制其他2D图形

在前面的章节中，我们已经学习了如何使用Python进行基本的2D图形绘制，包括折线图、散点图、柱状图等。然而，在数据可视化的领域，有许多其他类型的2D图形，可以帮助我们更好地理解和传达数据。本章将深入探讨一些其他2D图形绘制的技术和应用。

## 7.1 雷达图

雷达图，又称为蛛网图或星型图，是一种用于可视化多维数据的图形类型。它通常用于比较多个数据点或实体在多个属性或特征上的表现。雷达图的核心特点是将不同属性的数据值映射到一个多边形的顶点上，然后通过连接这些顶点来形成一个多边形，展示多个数据点之间的差异和相似性。

雷达图常用于可视化多维度的比较，特别是在评估多个变量或特征在不同情况下的表现时。它可以帮助观察者直观地识别哪些维度具有较高或较低的值，以及它们之间的相对关系。雷达图通常用于数据的归一化或标准化，以确保不同维度的值具有可比性。

## 7.1.1 绘制雷达图

绘制雷达图与传统的笛卡尔坐标系图形有一些显著的不同之处。绘制雷达图的步骤如下。

（1）导入所需库：导入绘图所需的库，通常是Matplotlib和NumPy。

（2）准备数据：收集或生成要在雷达图上表示的数据。数据通常以矩阵或列表的形式存在，其中一行代表一个数据点，一列代表一个维度。确保数据的范围适用于雷达图的坐标系。

（3）计算角度：确定要在雷达图的每个维度上放置的角度。通常情况下，角度均匀分布在整个雷达图上，可以使用NumPy的 linspace 函数来计算。

（4）创建雷达图坐标系：使用Matplotlib的 subplot 函数创建一个极坐标系（polar coordinates）。这是绘制雷达图所需的坐标系。

（5）绘制数据多边形：对于每个数据点，计算它在每个维度上的坐标，然后绘制数据多边形。可以使用Matplotlib的plot函数来连接数据点，形成多边形的边界线，然后使用fill函数来填充多边形的区域，以突出数据。

（6）设置类目标签和轴标签：添加类目标签，这些标签通常是每个维度的名称，可以使用 set_thetagrids 或 set_xticklabels 函数设置雷达图的轴标签。

（7）设置其他属性：根据需要设置雷达图的其他属性，如标题、坐标范围、网格线、图例等。

（8）显示雷达图：使用show函数将雷达图显示出来，或者将其保存为图像文件。

以下示例代码演示了如何使用Matplotlib库绘制一个简单的雷达图。

```python
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```txt
cities = ['城市 A', '城市 B', '城市 C', '城市 D', '城市 E']
dimensions = ['经济', '医疗保健', '教育', '安全', '环境']
```

```python
data = np.array([
    [7, 8, 9, 6, 7],
    [8, 7, 7, 8, 6],
    [6, 7, 8, 7, 9],
    [9, 8, 7, 9, 7],
    [7, 6, 8, 7, 8]
]) 
```

```lua
N = len(dimensions)
angles = np.linspace(0, 2 * np.pi, N, endpoint=False).tolist()
angles += angles[:1] 
```

```python
plt.figure(figsize=(8, 6))  
ax = plt.subplot(111, polar=True) 
```

```python
for i in range(len(cities)):
    values = data[i].tolist()
    values += values[:1]
    ax.fill(angles, values, alpha=0.5, label=cities[i]) 
```

```txt
plt.xticks(angles[:-1], dimensions, fontsize=12)
# 添加图例
plt.legend(loc='upper right', bbox_to_anchor=(0.1, 0.1))
# 添加标题
plt.title('不同城市的维度评分雷达图', fontsize=16)
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行定义了一个名为 “cities” 的列表，其中包含五个城市的名称。

代码第②行定义了一个名为 “dimensions” 的列表，其中包含五个维度标签，分别是经济、医疗保健、教育、安全和环境。

代码第③行创建了一个名为 “data” 的NumPy数组，其中包含五个城市在不同维度上的评分数据。示例数据的范围在0到10之间。

代码第④行计算了维度的数量（N），这里是5个维度。

代码第⑤行使用NumPy的 linspace 函数生成一个包含5个角度值的列表（angles），这些角度均匀分布在0到2π之间，并不包括2π。这些角度用于确定雷达图中的每个维度的位置。

代码第⑥行将角度列表angles中的最后一个元素复制一份并添加到列表的开头，以创建一个闭合的角度路径。这是为了确保雷达图是一个封闭的多边形，使其能够连接起来，而不是一个简单的开放路径。

代码第⑦行创建雷达图的坐标系，并设置其为极坐标系（polar=True），用于绘制雷达图。

代码第⑧行通过循环遍历每个城市，为每个城市绘制雷达图，循环体中的参数如下。

values = data[i].tolist()：这行代码将数据数组 data 中的第 i 行数据转换为Python列表 values。这一行的目的是获取当前城市在不同维度上的评分数据。

values += values[:1]：这行代码将列表 values 中的第一个元素复制并添加到列表的末尾，以确保雷达图是一个封闭的多边形。这是因为雷达图的绘制需要起始和结束点相同，以形成封闭的图形。

ax.fill(angles, values, alpha=0.5, label=cities[i])：这行代码使用 fill 方法绘制雷达图的多边形区域。

代码第⑨行设置雷达图的维度标签，将角度（angles）与维度标签（dimensions）对应起来，用于在雷达图上显示维度信息。

代码第⑩行添加图例，将城市名称显示在图的右上角，以区分不同城市的雷达图。

运行示例代码，绘制的图形如图7-1所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/6a468694cca7134dc5416c3a5943b411443f27824a4dd1e4c63936084898b7a6.jpg)



图7-1雷达图示例


## 7.1.2示例：绘制问卷调查结果雷达图

下面我们通过示例介绍一下如何绘制雷达图。现在我们有一个问卷调查结果，如图7-2所示，数据保存在“问卷调查.csv”文件中。我们先从“问卷调查.csv”文件读取数据，然后绘制雷达图，以便于分析用户的满意度。示例代码如下。

<table><tr><td colspan="9">问卷调查.csv - Excel</td></tr><tr><td colspan="9">文件 开始 插入 页面布局 公式 数据 审阅 视图 开发工具 福昕PDF 告诉我您想要做什么... 共享</td></tr><tr><td colspan="9">C15 <eq>\vdots  \times  \checkmark  {fx}</eq></td></tr><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td>1</td><td>问题编号</td><td>题目</td><td>非常满意</td><td>比较满意</td><td>一般</td><td>不太满意</td><td>非常不满意</td><td></td></tr><tr><td>2</td><td>1</td><td>智慧教室实施后,您的教学效率与效果如何？</td><td>21.60%</td><td>54.30%</td><td>15.10%</td><td>6.40%</td><td>2.60%</td><td></td></tr><tr><td>3</td><td>2</td><td>数字化改造后,学校行政服务效率如何？</td><td>16.80%</td><td>46.20%</td><td>25.30%</td><td>8.90%</td><td>2.80%</td><td></td></tr><tr><td>4</td><td>3</td><td>您对学校设施智能化改造效果的评价如何？</td><td>25.30%</td><td>41.90%</td><td>19.80%</td><td>10%</td><td>3%</td><td></td></tr><tr><td>5</td><td>4</td><td>您对项目进度安排的满意度如何？</td><td>6.20%</td><td>12.40%</td><td>17.90%</td><td>42.80%</td><td>20.70%</td><td></td></tr><tr><td>6</td><td>5</td><td>您对项目资源配置的评价如何？</td><td>5.30%</td><td>9.60%</td><td>16.40%</td><td>42.70%</td><td>26%</td><td></td></tr><tr><td>7</td><td>6</td><td>您对系统操作培训与支持的满意度如何？</td><td>7.80%</td><td>13.20%</td><td>18.60%</td><td>41.40%</td><td>19%</td><td></td></tr><tr><td>8</td><td>7</td><td>您对项目后续建设与改进有何建议？</td><td>4.60%</td><td>8.30%</td><td>14.90%</td><td>46.70%</td><td>25.50%</td><td></td></tr><tr><td>9</td><td>8</td><td>您对系统功能优化或升级有何意见与想法？</td><td>8.90%</td><td>12.70%</td><td>16.40%</td><td>42.10%</td><td>19.90%</td><td></td></tr><tr><td>10</td><td>9</td><td>您对数字化改造项目的总体满意度如何？</td><td>7.20%</td><td>11.60%</td><td>18.40%</td><td>43.70%</td><td>19.10%</td><td></td></tr><tr><td rowspan="6">11 12 13 14 15 16</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图7-2问卷调查结果


```txt
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np 
```

```python
plt.rcParams['font.family'] = ['SimHei'] # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False # 设置负号显示
```

```txt
data = pd.read_csv("data/问卷调查.csv", encoding="gbk") ①
```

```txt
dimension_columns = ["非常满意", "比较满意", "一般", "不太满意", "非常不满意"] ②
```

```python
for column in dimension_columns:
    data[column] = data[column].str.rstrip('%').astype(float)
average_scores = data[dimension_columns].mean() 
```

```python
N = len(dimension_columns)
angles = np.linspace(0, 2 * np.pi, N, endpoint=False).tolist()
angles += angles[:1] 
```

```python
plt.figure(figsize=(8, 6))  
ax = plt.subplot(111, polar=True) 
```

```txt
values = average_scores.tolist()
values += values[:1]
ax.fill(angles, values, alpha=0.5, label="综合评分",facecolor='lightblue')
```

```txt
plt.xticks(angles[:-1], dimension_columns, fontsize=12) ⑧ 
```

```javascript
plt.legend(loc='upper right', bbox_to_anchor=(0.1, 0.1))
plt.title('问卷调查维度评分雷达图', fontsize=16)
```

```txt
plt.show() 
```

主要代码的解释如下。

代码第①行从“问卷调查.csv”文件中读取数据，并指定文件编码为GBK。这是因为文件包含中文字符，需要使用适当的编码解析文件。

代码第②行定义了一个要在雷达图中显示的维度的列表。这些维度对应数据文件中的列名。

代码第③行用于遍历维度列。

代码第④行在循环中，对每个维度列执行操作。这行代码首先使用str.rstrip('%')去除百分号字符，然后使用astype(float)将数据转换为浮点数类型。这是因为数据文件中的百分比值以字符串形式存储，需要转换为数值以进行后续计算。

代码第⑤行计算了每个维度列的平均值，以获得每个维度的平均评分。

代码第⑥行将平均评分转换为列表形式，以便在雷达图中使用。

代码第⑦行用于绘制雷达图。首先，将平均评分列表的第一个值复制到列表的末尾，以确保雷达图是一个闭合的图形。然后，使用ax.fill绘制雷达图，填充区域，并添加标签。alpha参数设置填充区域的透明度，facecolor参数设置填充区域的颜色。

代码第⑧行用于添加维度标签，将标签放置在雷达图的轴上。

运行上述代码，绘制的图形如图7-3所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/4abf55d25a0428d5c1a91d5a7262ac9bf6ff75fffc948d5dcd871b57db236158.jpg)



图7-3问卷调查维度评分雷达图


从图7-3可见，“不太满意”和“比较满意”偏多，而“非常满意”比较少。

## 7.2 矩形树状图

矩形树状图是一种用于可视化层次数据的图表类型，通常用于表示树状结构或分层数据。它的主要特点是以矩形的形式表示不同层次的数据，每个矩形的面积与数据的大小成比例。矩形树状图的应用场景如下。

（1）文件夹结构可视化：可以用于可视化计算机文件夹的嵌套结构，帮助用户了解文件和文件夹的分布。

（2）组织结构图：可以用于绘制组织结构图，表示不同部门、岗位或员工之间的关系。

（3）数据分类：可以用于表示数据的层次分类，如产品分类、地理区域分类等。

（4）层次关系可视化：可以用于可视化分层数据，如科学分类、产品销售分析等。

（5）树状图：可以用于可视化树状结构的数据，如家谱、组织结构、决策树等。

（6）地图热力图：在地理信息系统（GIS）中，可以用矩形树状图来表示地图上不同区域的数据分布。

（7）资源分配：在项目管理中，可以用来表示不同任务或资源的分配情况。

矩形树状图通常使用矩形的面积来表示数据的大小，因此更大的矩形代表更多的数据。这种可视化方式有助于用户直观地理解数据的分布和层次结构，从而更好地作出决策和分析。

## 7.2.1 绘制矩形树状图

在Python中，我们可以使用Squarify库来绘制矩形树状图，这个库提供了简单而强大的工具，用于创建各种类型的矩形树状图。

可以使用如下的pip指令安装Squarify库。

```batch
pip install squarify 
```

以下示例代码可以创建一个可视化的矩形树状图，用于展示不同科技书籍主题的分布情况，每个矩形的大小表示主题的权重或相关性，用颜色来区分不同的主题。

```python
import squarify
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']    # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False    # 设置负号显示

# 示例数据
topics = ["机器学习", "数据科学", "人工智能", "物联网", "区块链", "虚拟现实", "云计算", "自然语言处理"]

# 数据的权重，表示每个主题的相关性或重要性
weights = [30, 25, 15, 12, 20, 28, 10, 18]

# 自定义颜色
colors = ["#FF5733", "#33FF57", "#3366FF", "#FF33A1", "#FFA133", "#33B5E5", "#9933FF", "#FF3366"]

# 使用 squarify 绘制矩形树状图，并指定颜色
squarify.plot(sizes=weights, label=topics, alpha=0.7, color=colors)    ①

# 设置坐标轴不可见
plt.axis('off')

# 添加标题
plt.title("科技书籍主题分布矩形树状图")

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用Squarify库的 plot函数绘制矩形树状图，其中sizes参数指定了每个矩形的大小；label参数指定了每个矩形的标签；alpha参数控制透明度；color 参数指定了矩形的颜色。

代码第②行plt.axis('off')设置坐标轴不可见，因为矩形树状图不需要坐标轴。

运行上述代码，绘制的图形如图7-4所示。


科技书籍主题分布矩形树状图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/5b3e98285d29699191fe9eebe294f7e8f38a0fcad6e21086a4bc1b997dcd220e.jpg)



图7-4矩形树状图示例


## 7.2.2示例：绘制车辆分类矩形树状图

在本示例中，我们将使用Python的Pandas、Matplotlib和Squarify库来创建一个矩形树状图，用于可视化车辆分类数据的分布情况。该图表将展示不同车辆类别的数量，并使用颜色来区分它们。


示例代码如下。


```python
import pandas as pd
import squarify
import matplotlib.pyplot as plt

# 设置中文字体
plt.rcParams['font.family'] = ['SimHei']

# 导入数据
df_raw = pd.read_csv("data/mpg_ggplot2.csv")
    ①

# 准备数据
df = df_raw.groupby('class').size().reset_index(name='counts')
    ②
labels = df.apply(lambda x: str(x[0]) + "\n (" + str(x[1]) + ")", axis=1)
    ③
sizes = df['counts'].values.tolist()
    ④
colors = [plt.cm.Spectral(i/float(len(labels))) for i in range(len(labels))]⑤

# 绘制矩形树状图
plt.figure(figsize=(10, 8))
```

```txt
squarify.plot(sizes=sizes, label=labels, color=colors, alpha=0.8)
# 图表装饰
plt.title('车辆分类矩形树状图')
plt.axis('off')
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用Pandas库的read_csv函数读取名为“mpg_ggplot2.csv”的CSV文件，将数据加载到DataFrame的df_raw中。

代码第②行对数据进行处理，使用groupby函数按照“类别”列对数据进行分组，然后使用size()函数计算每个类别的数量，并将结果存储

在名为df的DataFrame中。

代码第③行通过应用一个lambda函数，创建标签，标签包括类别名称和对应的数量。

代码第④行sizes = df['counts'].values.tolist()：提取类别数量列的数值，并将其转换为Python列表，用于绘制树状图的大小。

代码第⑤行生成颜色列表，用于为每个矩形块分配颜色。这里使用plt.cm.Spectral颜色映射，颜色数与类别数相同。

代码第⑥行使用Squarify库的plot函数绘制矩形树状图。sizes参数指定每个矩形块的大小， label参数指定每个块的标签，color参数指定每个块的颜色，alpha参数设置块的透明度。

运行上述代码，绘制的图形如图7-5所示。


车辆分类矩形树状图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/f3a8320ac3a692f2ea18e3d3074326e46eef77bc57d8cc7320b1f4e7e445675f.jpg)



图7-5车辆分类矩形树状图


## 7.3 三元相图

三元相图属于多变量散点图，是一种用于可视化三个组分之间相对比例的图形类型。它通常用于分析和表示混合物或化合物中的三个不同成分或组分之间的相对比例关系。

三元相图如图7-6所示，通常基于一个等边三角形的坐标系，其中三个顶点分别表示三个组分，并且内部的点表示混合物中各个组分的比例。

三元相图的特点如下。

（1）等边三角形：通常使用一个等边三角形来表示三元相图，其中每个角代表一个组分。这个三角形的边界上的点表示单一成分的纯度，而在三角形内部的点表示混合物中不同组分的比例。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/4f4e3acd7f5753f1525e89dfc10d7533d2949076508e9bb3a756329d549c0436.jpg)



图7-6三元相图


（2）比例关系：三元相图通过点的位置来表示不同组分之间的比例关系。每个点在三角形内的位置表示了其包含的每个组分的百分比。

（3）直观可视化： 三元相图是一种直观的可视化工具，可以帮助人们理解不同组分之间的相对比例，尤其在化学、材料科学和地质学等领域中广泛应用。

（4）混合物分析： 三元相图通常用于分析混合物的组成，如合

金、岩石、液体混合物等。通过观察点在图中的位置，可以了解混合物中各个组分的含量和比例。

## 7.3.1 三元相图的应用

三元相图广泛应用于多个领域，特别是用于可视化和分析涉及三个组分或变量的相对比例关系。以下是一些三元相图的常见应用领域和示例。

## （1）化学与材料科学：

合金分析：用于表示不同合金中各种金属元素的比例，帮助工程师和科学家了解合金性能。

矿物学：用于分析矿石中不同矿物的组成比例，以确定矿石的性质和品质。

## （2）地质学：

岩石成分分析： 用于表示不同岩石样本中不同矿物的含量比例，帮助地质学家了解岩石的成分和特性。

## （3）生态学：

食物链分析：用于表示生态系统中不同生物种类的相对比例，以及它们之间的食物链关系。

## （4）环境科学：

土壤分析：用于表示土壤中不同元素的含量比例，以评估土壤质量和污染程度。

## （5）化工工程：

反应物比例：用于表示化工反应中不同原料的比例，帮助优化反应条件和生产工艺。

## （6）食品科学：

配方开发：用于表示不同成分在食品配方中的比例，以调整和改进食品配方。

## 7.3.2创建三元相图

可以使用 Plotly 库创建三元相图。确保已安装Plotly，如果尚未安装，可以使用以下的pip指令进行安装。

```batch
pip install plotly 
```

用Python创建一个简单的三元相图的示例代码如下。

```python
import plotly.express as px
import pandas as pd

# 创建数据框
data = pd.DataFrame({
    'A': [0.2, 0.7, 0.5],
    'B': [0.5, 0.2, 0.3],
    'C': [0.3, 0.1, 0.2]
})
# 绘制三元相图
fig = px.scatter_ternary(data, a="A", b="B", c="C",
    labels={"A": "Variable A", "B": "Variable B", "C": "Variable C"},
    title="三元相图示例", size_max=10, color_discrete_sequence=["red"])
# 显示图形
fig.show()
```

主要代码的解释如下。

代码第①行使用Pandas 创建一个包含三个变量A、B和C的DataFrame对象，它的列A、B和C分别代表了三个不同的变量。这些变量可以是我们感兴趣的数值或测量值，如温度、湿度、压力等。在这个示例中，我们用A、B 和 C 来表示这三个变量。

另外，DataFrame对象每一行代表一个独立的数据点或观测值。每一行包含了对应变量A、B和 C的数值。例如，第一行表示一个数据点，其中A的值为0.2、B的值为0.5、C的值为0.3。

代码第②行使用 px.scatter_ternary 函数创建三元相图，其中参数的解释如下。

data 参数指定数据框，其中包含了要可视化的数据。

$\mathrm { a } { = } { } ^ { \mathrm { w } } \mathrm { A } { \mathrm { " } } , \mathrm { b } { = } { } { } ^ { \mathrm { " } } \mathrm { B } { \mathrm { " } } , \mathrm { c } { = } { } ^ { \mathrm { " } } \mathrm { C } { \mathrm { " } }$ 参数分别指定三个轴（变量 A、B 和 C）的数据列。

labels 参数用于指定轴标签的名称。

title参数设置图表的标题。

size_max 参数用于指定定义点的最大值。

color_discrete_sequence 参数指定点的颜色为红色。

运行上述代码，绘制的图形如图7-7所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/da32a2cccaf31cfc26b5732cc3987befa49c296cec1234149fa6f5992df1cb4d.jpg)



图7-7三元相图示例


## 7.3.3示例：绘制铜锌镍合金三元相图

三元相图常用于合金分析，以下示例演示了如何使用Ploty库绘制铜（Cu）、锌（Zn）和镍（Ni）合金的三元相图。在这个示例中，我们将使用一个自定义的数据框来表示不同铜锌镍合金样本中的组分比例，并在三元相图中可视化这些比例关系。

示例代码如下。

```python
import plotly.express as px
import pandas as pd

# 创建数据框
data = pd.DataFrame({
    'Cu': [20, 40, 10, 30],
    'Zn': [30, 10, 60, 20],
    'Ni': [50, 30, 30, 50],
    '样本': ["样本 1", "样本 2", "样本 3", "样本 4"]
})
```

```python
fig = px.scatter_ternary(data, a="Cu", b="Zn", c="Ni", labels={"Cu": "铜百分比", "Zn": "锌百分比", "Ni": "镍百分比"}, title="铜锌镍合金三元相图", color="样本", size_max=5)

# 显示图形
fig.show()
```

运行上述代码，绘制的图形如图7-8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/0ea776dab5a530630b4560b77fb1f28f7f992e1f78278c16604ead01662befcb.jpg)



图7-8铜锌镍合金三元相图


从图7-8所示的三元相图中可见有4个数据点（样本），每个样本在三元相图中的位置表示了该样本中铜、锌和镍三个组分的比例关系。通过观察这些数据点，可以直观地了解不同合金样本之间的组分差异，以及各组分之间的相对比例。

## 7.4 峰峦图

峰峦图是一种数据可视化方法，用于展示多个密度分布曲线在同一图表中的重叠情况，以便比较和观察数据的分布特征。峰峦图通常用于以下3种情况。

（1）比较多个组或类别的分布：峰峦图允许同时显示多个组或类别的数据分布，以便更好地理解它们之间的相似性和差异性。

（2）可视化数据的密度：通过在不同密度分布之间绘制重叠的线条，峰峦图显示了数据的密度分布，有助于识别数据的高峰和低谷。

（3）观察分布的变化：可以使用峰峦图来观察数据分布随着时间、地点或其他因素的变化而变化的情况，从而识别潜在的趋势或模式。

## 7.4.1 绘制峰峦图

在Python中，我们可以使用joypy库来绘制峰峦图。可以使用如下的pip指令安装joypy库。

```txt
pip install joypy 
```

以下示例代码演示了如何使用joypy库绘制一个简单的峰峦图。

```python
import numpy as np
import pandas as pd
import joypy
from matplotlib import pyplot as plt

# 生成数据
df = pd.DataFrame({'category': ['A', 'B', 'C'] * 100, 'value': np.random.normal(size=300)}

# 使用 joypy 创建峰峦图，并设置颜色
fig, axes = joypy.joyplot(df, by='category', column='value', figsize=(10, 3), color='lightblue')

# 设置图表标题和标签
plt.title('Joy Plot of Category Data')
plt.xlabel('Value')

plt.show()
```

在这段代码中，使用joypy.joyplot函数创建峰峦图，其中参数的解释如下。

df：数据框，包含要可视化的数据。

by='category'：指定要根据哪一列数据进行分组，这里是根据“category”列的不同取值进行分组。

column='value'：指定要绘制在峰峦图上的值所在的列，这里是“value”列。

figsize=(10, 3)：设置图表的大小，这里是宽度为10个单位，高度为3个单位。

color='lightblue'：设置峰峦图的颜色为淡蓝色。

这段代码的主要作用是使用joypy库创建一个峰峦图，将数据按照不同的类别（'category'列）绘制出来，并设置了图表的颜色为淡蓝色。峰峦图是一种可用于观察数据分布情况的可视化工具，特别适用于比较多个类别之间的数据分布。

运行上述代码，绘制的图形如图7-9所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/fd52d194d755dbc79fe1260d721661f90489d300cc61ddad5ea7238aaf8579bc.jpg)



图7-9峰峦图示例


## 7.4.2示例：绘制不同车型的城市和高速公路里程的峰峦图

下面我们使用mpg_ggplot2数据集绘制峰峦图来可视化比较不同车型的城市和高速公路里程的油耗情况。

示例代码如下。

```python
import pandas as pd
import joypy
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```python
pd.set_option('display.max_rows', 500)
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1000) 
```

```python
df2 = pd.read_csv('data/mpg_ggplot2.csv') 
```

```python
def color_gradient(x=0.0, start=(0, 0, 0), stop=(1, 1, 1)):
    r = np.interp(x, [0, 1], [start[0], stop[0]])
    g = np.interp(x, [0, 1], [start[1], stop[1]])
    b = np.interp(x, [0, 1], [start[2], stop[2]])
    return (r, g, b)

fig, axes = joypy.joyplot(df2, 
```

```python
column=['hwy', 'cty'],
overlap=2.5,
by="model",
ylim='own',
x_range=(0,60),
figsize=(10,13),
colormap=lambda x: color_gradient(x, start=(.08,.45,.8), stop=(.8,.34,.44)),
alpha=0.6,
linewidth=.5,
linecolor='w')
plt.title('不同车型的城市和高速公路里程的峰峦图'
, fontsize=14
, color='grey'
, alpha=1)
plt.xlabel('每加仑英里数 (MPG)', fontsize=14, color='grey', alpha=1)
plt.ylabel('汽车型号', fontsize=8, color='grey', alpha=1)

# 调整子图布局，增加底部间距
plt.subplots.adjust(top=0.9, bottom=0.1)

# 保存图片
plt.savefig('joy_plot.png', dpi=300)
plt.show()
```

上述代码的解释如下。

代码第①～②行设置Pandas的显示选项，包括显示的最大行数、最大列数和显示宽度。这可以控制显示大数据集时的行列数，使结果更全面。

代码第③行定义color_gradient函数，用于生成joyplot中颜色渐变的效果。它通过输入参数，可以生成不同颜色之间的渐变结果。

代码第④～⑤行调用joypy.joyplot函数绘制峰峦图，并设置相关参数。

column：绘制的变量。

overlap：曲线重叠程度。

by：分组变量。

ylim：设置y轴的范围。

x_range：x轴范围。

figsize：图像大小。

colormap：指定色彩映射函数为color_gradient。

alpha：用于设置填充区域的透明度。

运行上述代码，绘制的图形如图7-10所示。


不同车型的城市和高速公路里程的峰峦图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/b309ab55-acde-43b9-902c-b5bb443e9499/e4b0ebea20377c4f5872b0f54a3db163db6e47b5daf03bf1e605aa0af165f82b.jpg)



每加仑英里数（MPG)


图7-10不同车型的城市和高速公路里程的峰峦图

## 7.5 本章总结

本章介绍了多种2D图形的绘制方法，包括雷达图、矩形树状图、三元相图和峰峦图。这些图形有助于展示不同数据之间的关系、趋势和模式，并提供了一种可视化数据的方式，使读者能够更深入地了解复杂的信息。通过本章的学习，读者可以掌握如何使用Seaborn库绘制这些特殊类型的图形，从而提高数据分析和可视化的技能，为数据驱动的决策提供更多有力的支持。

## 第8章 绘制3D图形

当谈到数据可视化时，3D图表是一种强大的工具，它可以帮助我们更好地理解和展示具有三个维度的数据。本章介绍如何绘制各种类型的3D图表，以及如何利用这些图表来传达数据的复杂关系。

## 8.1 绘制3D图形库

在Python中，有几个库可以用来绘制3D图形。以下是一些常用的3D图形库。

（1）Matplotlib：Matplotlib是一个功能强大的绘图库，可以用于创建各种类型的图形。我们可以使用Matplotlib创建3D散点图、曲线图、柱状图等。

（2）Mayavi：Mayavi是一个专门用于绘制3D科学数据可视化的库。它提供了丰富的绘图功能，适用于复杂的3D数据可视化任务。Mayavi的功能包括绘制体积图、等值面图、流线图等。

（3）Plotly：Plotly是一个交互式绘图库，可以用于创建3D散点图、曲面图、等值面图等。它支持在Web浏览器中交互式地浏览和探索3D图形。

## 8.2 3D静态图形

Matplotlib是一个强大的Python数据可视化库，它的mpl_toolkits.mplot3d子模块提供了绘制3D图形的功能。这个子模块允许用户创建各种类型的3D图形，包括散点图、线图、曲面图、网格图等。

## 8.2.1 3D散点图

3D散点图是一种用于可视化三维数据的图形表示方式，它与二维散点图类似，但在3D空间中显示数据点，通常使用X轴、Y轴和Z轴表示三个不同的变量或维度。每个数据点由三个值确定，分别对应于X轴、Y轴和Z轴上的位置。这种图形可以帮助我们更好地理解数据的分布、趋势和关系，尤其适用于数据集中包含多个连续或数值型变量的情况。

3D散点图有许多实际应用场景，主要的应用场景如下。

（1）数据挖掘和探索性数据分析：通过3D散点图可以直观地观察样本点的分布，帮助发现数据之间的内在关系和聚类结构，可以高效地完成特征选择、异常点检测等工作。

（2）多元统计分析：3D散点图可以同时展示多个变量，通过点的位置反映各维度的数值。这有助于观察多个变量之间的相关性，进行多元统计分析。

（3）轨迹和流场可视化：可以使用3D散点图可视化对象的三维运动轨迹，或是显示三维流场中的路径线。这类应用常见于运动学分析、气象学等领域。

（4）交互式数据分析：3D散点图支持旋转、缩放和过滤操作，可以让用户以交互的方式探索数据，发现数据间的关系。

## 8.2.2 绘制3D散点图

可以使用Matplotlib中的mpl_toolkits.mplot3d子模块绘制3D散点图。以下示例演示了如何使用Matplotlib绘制3D散点图。

示例代码如下。

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()    ①
ax = fig.add_subplot(111, projection='3d')    ②

# 生成一些示例数据
x = [1, 2, 3, 4, 5]
y = [2, 3, 4, 5, 6]
z = [3, 4, 5, 6, 7]

# 使用 scatter 绘制 3D 散点图
ax.scatter(x, y, z, c='r', marker='o')    ③

# 设置坐标轴标签
ax.set_xlabel('X 轴')
ax.set_ylabel('Y 轴')
ax.set_zlabel('Z 轴')

# 设置图标题
ax.set_title('3D 散点图示例')

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行调用matplotlib.pyplot模块的figure()函数创建一个Figure对象，Figure对象代表绘图的整个图像区域和坐标系，绘制3D图形需要创建Figure作为绘图的顶层容器。

代码第②行调用Figure对象的add_subplot函数在图像区域添加一个