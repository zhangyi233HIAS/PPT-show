Axes子图，其中参数111表示1行1列的第一个子图；projection='3d'表示创建一个3D坐标轴。

代码第③行在Axes对象ax上调用scatter函数绘制散点图，其中参数x，y，z为数据点的坐标；c为指定点的颜色，这里是red；marker为指定点的形状，这里是圆形。


3D散点图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/55a6fffcb118f73b06e456b7276804a00853162129cf1a5a5db293e23de55c8a.jpg)



图8-13D散点图示例


运行示例代码，绘制的图形如图8-1所示。

## 8.2.3 示例：绘制玻璃属性3D散点图

下面我们通过示例演示如何使用Matplotlib的mpl_toolkits.mplot3d子模块绘制3D散点图，该示例是绘制玻璃成分3D散点图，该示例数据来自Glass数据集。

示例代码如下。

```python
import pandas as pd
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 加载数据集
data = pd.read_csv("data/Glass.csv")
# 提取数据列
x = data["Na"]
y = data["Al"]
z = data["Mg"]
```

```txt
# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# 使用 scatter 绘制 3D 散点图
ax.scatter(x, y, z, c='r', marker='o')

# 设置坐标轴标签
ax.set_xlabel('钠 (Na)')
ax.set_ylabel('铝 (Al)')
ax.set_zlabel('镁 (Mg)')

# 设置图标题（中文）
ax.set_title('玻璃成分 3D 散点图')

# 保存图片为 PNG 格式，指定 DPI 为 300
plt.savefig("3D_Glass_Component_Scatter_Plot.png", dpi=300)

# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用Pandas读取CSV数据集，存储在data变量中。

代码第②行将图片保存为PNG格式的文件，指定DPI参数为300。

运行上述代码，绘制的图形如图8-2所示。

## 8.2.4 3D线图

3D线图是一种用于可视化三维数据的图表类型，通常用于显示在三个维度（X、Y、Z）上的数据趋势和关联性。

3D线图主要应用于以下几个方面。


玻璃成分3D散点图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/fdccb5f631da1132073ea39b82025d9e18a35a747e8041804c195c4976944afc.jpg)



图8-2玻璃成分3D散点图


（1）轨迹可视化：可以在三维空间中可视化对象的运动轨迹，如飞机的飞行路线、运动员的行走路线等。通过折线表示轨迹更加平滑连贯。

（2）映射时间的变化趋势：沿着时间轴绘制三维曲线图，展示某

一变量随时间的变化情况及趋势。如股票价格、气温变化等时间序列数据。

（3）显示空间路径：表示空间或地形中蜿蜒的路径，如山路、河流、管道等的定量结构信息。

（4）功能关系的图像：绘制表示光滑功能关系的三维曲面，可以帮助理解函数图像，如正弦曲线。

（5）线程的执行过程：在并行编程分析中，可以使用3D线图表示每个线程的执行过程及时间信息。

（6）医学动画：在医学动画中，可以利用3D折线构建人体器官或运动的图像，如肌肉收缩过程。

（7）游戏设计：构建游戏场景中的三维机械动画，如角色使用道具的动作。

## 8.2.5 绘制3D线图

3D线图是一种展示三维数据的图形，通常用于可视化三维数据中的趋势和模式。在Matplotlib中，我们可以使用mpl_toolkits.mplot3d子模块创建3D线图，下面的示例代码演示了如何绘制一个简单的3D线图。

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 创建示例数据
X = [1, 2, 3, 4, 5]
Y = [2, 3, 4, 5, 6]
Z = [1, 2, 1, 3, 2]

# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d') ①
# 绘制 3D 线图，并指定颜色
ax.plot(X, Y, Z, color='red')  # 在这里使用红色 ②
# 设置坐标轴标签和图标题
ax.set_xlabel('X 轴')
ax.set_ylabel('Y 轴')
ax.set_zlabel('Z 轴')
ax.set_title('简单的 3D 线图')

# 保存图片为 PNG 格式，指定 DPI 为 300
plt.savefig("3D_line_plot_colorful.png", dpi=300) ③
```

```txt
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行创建一个3D坐标轴并将其添加到Figure对象中。“projection='3d'” 参数表示要创建一个3D图。

代码第②行使用plot函数绘制3D线图。我们把X、Y和Z设置为数据

点坐标，然后通过color参数将线的颜色设置为红色。

代码第③行使用savefig函数将绘制的图形保存为PNG格式的文件。指定DPI参数为300，以提高图像的分辨率。

运行上述代码，绘制的图形如图8-3所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/17d619a83561b0d38bdf996367159c3c24a447ac69a55646f54df81692b25f0a.jpg)



图8-3简单的3D线图


## 8.2.6 示例：绘制鸢尾花花萼和花瓣的关系3D线图

本节我们将使用Seaborn库内置数据集iris创建一个3D线图，以展示鸢尾花数据集中花萼和花瓣的关系。这个图形将有助于我们可视化不同鸢尾花品种的特征之间的关系。

我们将使用内置数据集iris，其中包含了鸢尾花的测量数据。通过将花萼长度、花萼宽度和花瓣长度作为三个坐标轴的数据，我们可以创建一个交互式的3D线图，使我们能够旋转和查看数据，以更好地理解它们之间的关系。

示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 使用 Seaborn 加载鸢尾花数据集
iris = sns.load_dataset("iris")
# 创建 3D 图形
fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')
```

```python
for species in iris['species'].unique():
    species_data = iris[iris['species'] == species]
    ax.plot(species_data['sepal_length'],
    species_data['sepal_width'],
    species_data['petal_length'],
    label=species)

# 设置坐标轴标签
ax.set_xlabel("花萼长度 (cm)")
ax.set_ylabel("花萼宽度 (cm)")
ax.set_zlabel("花瓣长度 (cm)")

# 设置图例
ax.legend()

# 设置图标题
ax.set_title("鸢尾花花萼和花瓣的关系3D线图")

# 保存图片为PNG格式，指定DPI为300
plt.savefig("3D_line_plot.png", dpi=300)

# 显示图形
plt.show()
```

主要代码的解释如下。

这段代码使用Seaborn库和Matplotlib库绘制了鸢尾花数据集中花萼和花瓣的关系的3D线图。

代码第①行使用sns.load_dataset("iris")加载鸢尾花数据集，将数据存储在名为“iris”的DataFrame中。

代码第②行使用fig.add_subplot(111, projection='3d')创建一个3D坐标轴，将其添加到图形对象中，并将其赋给ax。

代码第③行绘制3D线图，其中使用for循环遍历鸢尾花数据集中的

每个品种，在循环体中的参数如下。

对于每个品种选择相应的数据子集，并使用ax.plot绘制3D线图。这里分别使用花萼长度、花萼宽度和花瓣长度作为x、y和z坐标。

对于每个品种的线图使用不同的颜色，并在图例中标记品种名称。

运行上述代码，绘制的图形如图8-4所示。


鸢尾花花萼和花瓣的关系3D线图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4ebd3b9ad23e535c06b1635a218af0f4af9ffd70817efa37c6c174de86296cb5.jpg)



图8-4鸢尾花花萼和花瓣的关系3D线图


## 8.2.7 3D曲面图

3D曲面图是一种可视化方式，它用于显示三维数据的表面形状和曲线。以下是3D曲面图的应用场景。

（1）地形建模：用3D曲面图来展示地形高度信息，建立数字高程模型。这对地理信息系统、地形分析都很有用。

（2）数学函数可视化：用3D曲面图来展示多变量函数的高维数据，更直观地展示函数的形式。

（3）流体建模：用3D曲面图来模拟流体的流动形式，建立计算流体动力学模型。

（4）医学图像：用3D曲面图展示MRI、CT等医学扫描结果，可视化人体器官和组织结构。

（5）计算机图形学：3D曲面图可用于表示三维模型的表面，用于计算机动画、游戏、虚拟现实等领域。

（6）气象气候学：建立三维气象变量的高度场分布，用3D曲面图展示天气系统的结构。

（7）科学计算可视化：可视化复杂的物理、化学模拟过程，通过3D曲面图直观呈现模拟结果。

（8）数据挖掘：对高维数据进行可视化分析，用3D曲面图展示数据之间的关系。

## 8.2.8 绘制3D曲面图

3D曲面图是一种可视化方式，用于显示三维数据中的连续性信息。它通常用于表示三维函数或数据集中的平滑变化。在Matplotlib中，我们可以使用plot_surface函数来创建3D曲面图。

以下是一个使用Matplotlib库的示例，演示如何创建一个简单的3D曲面图。

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 创建数据网格
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)

# 定义一个简单的三维函数（这里是一个二次函数）
Z = X**2 + Y**2

# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# 使用 plot_surface 函数创建 3D 曲面图，并使用颜色映射
surf = ax.plot_surface(X, Y, Z, cmap='viridis') ①

# 设置坐标轴标签和图标题
ax.set_xlabel('X Label')
ax.set_ylabel('Y Label')
ax.set_zlabel('Z Label')
ax.set_title('3D曲面图示例')

# 添加颜色映射的颜色栏
fig.colorbar(surf, shrink=0.5, aspect=10) ②
plt.savefig("3D_plot.png", dpi=300)
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行使用ax.plot_surface 函数创建3D曲面图，其中 X 和 Y 是数据网格，Z 是对应的函数值，cmap='viridis' 指定了颜色映射为“viridis”。

代码第②行使用fig.colorbar 添加颜色映射的颜色栏，shrink 和aspect 参数控制颜色栏的大小和外观。

运行上述代码，绘制的图形如图8-5所示。


3D曲面图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4c976bb5c5466970e64a102cb800da0f5a87b08695d2c4075b735cfa681266d5.jpg)



图8-53D曲面图示例


## 8.2.9 示例：绘制伊甸火山3D曲面图

伊甸山是新西兰奥克兰市的一座火山，也是一处受欢迎的旅游景点。本节我们将创建伊甸火山的3D曲面图，以展示其地形，示例代码


如下。


```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import pandas as pd
import numpy as np
plt.rcParams['font.family'] = ['SimHei']  # 设置中文字体
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```txt
data = pd.read_csv("data/volcano.csv", header=0) ① 
```

```txt
Z = data.values ② 
```

```txt
x = np.arange(1, Z.shape[1] + 1) ③ 
```

```python
y = np.arange(1, Z.shape[0] + 1) ④ 
```

```txt
X, Y = np.meshgrid(x, y) ⑤ 
```

```python
# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d') ⑥
# 使用 plot_surface 函数创建 3D 曲面图，并使用颜色映射
surf = ax.plot_surface(X, Y, Z, cmap='viridis') ⑦
# 设置坐标轴标签和图标题
ax.set_xlabel('X 轴标签')
ax.set_ylabel('Y 轴标签')
ax.set_zlabel('Z 轴标签', labelpad=20) # 调整 Z 轴标题与坐标轴的间距
ax.set_title('伊甸火山 3D 曲面图')

# 添加颜色映射的颜色栏，放在图的右侧外部，并调整与 Z 轴标题的距离
cbar = fig.colorbar(surf, shrink=0.5, aspect=10, pad=0.12) ⑧
cbar.set_label('颜色映射标签')

plt.savefig("3D_plot.png", dpi=300)
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①行从名为“volcano.csv”的CSV文件中读取数据，并将数据存储在名为“data”的DataFrame中。header=0参数表示跳过文件的第一行，将其视为列名。

代码第②行提取DataFrame中的数值数据，并将其存储在名为“Z”的NumPy数组中。

代码第③行创建一个NumPy数组x，其中包含从1到列数的一系列整数，用于表示X坐标。

代码第④行创建一个NumPy数组y，其中包含从1到行数的一系列整数，用于表示Y坐标。

代码第⑤行使用NumPy的meshgrid函数创建X坐标网格和Y坐标网格。这将创建两个矩阵X和Y，用于表示3D坐标的所有点。

代码第⑥行创建一个3D坐标轴，并将其赋给“ax”变量。projection='3d'参数表示创建一个3D坐标轴。

代码第⑦行使用plot_surface函数创建3D曲面图，其中X、Y、Z是坐标网格和对应的高度数据， cmap='viridis'指定了颜色映射。

代码第⑧行添加一个颜色映射的颜色栏，shrink和aspect参数控制颜色栏的大小和比例。

运行上述代码，绘制的图形如图8-6所示。


伊甸火山3D曲面图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/36956a4fc29513a4d00e24514404bae9c4e8b4f7df5045523f6b967af2cbf8df.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4098610430dd969e6f342613317896346b068250c0336e6ea5075059f88e8174.jpg)



图8-6伊甸火山3D曲面图


## 8.2.10 3D网格图

3D网格图是一种用于可视化三维数据的图表类型，它通常用于显示复杂的表面、曲线或场景。

3D网格图与3D曲面图的区别如下。

## 1. 3D网格图

数据表示：3D网格图通常表示离散的数据点，这些点位于三维空间中的特定坐标位置。这些坐标点之间通常没有平滑的连接，而是以网格的形式排列在坐标交点上。

图形特点：网格图呈现的是数据点之间的分布，通常没有平滑的表面。它强调了数据点之间的离散性和跃变。

应用领域：3D网格图通常用于表示离散的、非连续的数据，适用于地理信息系统（GIS）中的网格数据、分区数据或分类数据等场景。

## 2. 3D曲面图

数据表示：3D曲面图通常表示连续的数据分布，其数据点之间存在平滑的连接，形成一个连续的曲面或表面。

图形特点：曲面图呈现的是数据的连续性分布，通过平滑的曲面或表面来表示。这种图表类型更适合于可视化函数的输出、科学建模、工程分析等领域。

应用领域：3D曲面图通常用于表示连续的数据分布，如流体动力学模拟、地质建模、分子建模等需要考虑数据连续性的领域。

总之，3D网格图和3D曲面图之间的主要区别在于数据的离散性和连续性。网格图适用于表示离散的、非连续的数据，而曲面图适用于表示连续的、平滑的数据分布。选择使用哪种图表类型应根据自己的数据类型和可视化需求来决定。

## 8.2.11 绘制3D网格图

可以使用plot_wireframe函数绘制3D网格图，以下示例代码演示了如何创建一个简单的3D网格图。

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示
```

```python
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y) 
```

```txt
Z = X**2 + Y**2 ④ 
```

```python
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d') 
```

```txt
ax.plot_wireframe(X, Y, Z) ⑤ 
```

# 设置坐标轴标签和图标题

```txt
ax.set_xlabel('X Label')  
ax.set_ylabel('Y Label')  
ax.set_zlabel('Z Label')  
ax.set_title('3D网格图示例')
```

```txt
plt.savefig("3D_plot.png", dpi=300) 
```

```txt
# 显示图形
plt.show()
```

主要代码的解释如下。

代码第①～②行创建数据网格，它们都使用np.linspace函数生成在[-5, 5]范围内均匀分布的100个点，作为X和Y坐标轴上的数据点。

代码第③行使用np.meshgrid函数将X和Y坐标组合成网格，这将用于定义3D函数的输入坐标。

代码第④行是一个二次函数 $\sf Z = X ^ { \ast \ast } 2 + Y ^ { \ast \ast } 2$ ，表示Z坐标轴上的数值。

代码第⑤行使用plot_wireframe函数创建3D网格图。

运行上述代码，绘制的图形如图8-7所示。


3D网格图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/3bcd2ed592a41080bdde7fc586c53039c10f8554d6826b114e41095fa42c6026.jpg)



图8-73D网格图示例


## 8.2.12示例：绘制伊甸火山3D网格图

本节我们采用3D网格图可视化分析伊甸火山数据，以展示其地形，示例代码如下。

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import pandas as pd
import numpy as np

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
plt.rcParams['axes.unicode_minus'] = False  # 设置负号显示

# 导入数据，跳过第一行（列名）
data = pd.read_csv("data/volcano.csv", header=0)

# 提取数据列
Z = data.values

# 创建X和Y坐标
x = np.arange(1, Z.shape[1] + 1)
y = np.arange(1, Z.shape[0] + 1)
X, Y = np.meshgrid(x, y)

# 创建一个 Figure 对象和 3D 坐标轴
fig = plt.figure()
```

```txt
ax = fig.add_subplot(111, projection='3d')
# 使用 plot_wireframe 函数创建 3D 网格图
ax.plot_wireframe(X, Y, Z)
# 设置坐标轴标签和图标题
ax.set_xlabel('X 轴标签')
ax.set_ylabel('Y 轴标签')
ax.set_zlabel('Z 轴标签')
ax.set_title('伊甸火山 3D 网格图')

plt.savefig("3D_grid_plot.png", dpi=300)
# 显示图形
plt.show()
```

这段代码将3D曲面图修改成3D网格图，使用ax.plot_wireframe函数创建了一个3D网格图，其中X、Y坐标表示数据的行列位置，Z坐标表示每个点的高度值。

运行上述代码，绘制的图形如图8-8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/e2f53fdd936ce5679661b9b54a16de736b3433a9928b19f74ff241e8069eda7a.jpg)



图8-8伊甸火山3D网格图


## 8.3 交互式3D图形

交互式3D图形是指可以通过鼠标或其他交互方式操作、移动、旋转三维图像的3D图形，其主要特点如下。

（1）可以自由调整视角：用户可以通过鼠标拖曳、滚轮等方式调整观察3D图形的视角，从不同角度查看3D场景。

（2）支持旋转操作：用户可以旋转3D图形来持续观察不同角度的视图。

（3）支持缩放操作： 放大或缩小3D图形，将场景拉近或推远。

（4）鼠标悬停提示：鼠标悬停在图形上可以显示当前位置的具体数据或提示。

（5）支持动画：可以通过程序控制来生成3D动画，连续变化视角或数据。

本章使用Plotly库学习交互式3D图形。可以使用如下的pip指令安装Plotly库。

```batch
pip install Plotly 
```

## 8.3.1 绘制交互式3D散点图

以下示例代码演示了如何使用Plotly创建一个交互式3D散点图。

```python
import plotly.express as px

# 导入数据
df = px.data.iris()

# 创建交互式 3D 散点图
fig = px.scatter_3d(df, x='sepal_length',
    y='sepal_width',
    z='petal_length',
    color='species',
    size='petal_length', opacity=0.7)

# 设置图形标题和轴标签
fig.update_layout(
    title='鸢尾花数据集的交互式 3D 散点图',
    scene=dict(
    xaxis_title='Sepal Length',
    yaxis_title='Sepal Width',
    zaxis_title='Petal Length'
    )
)

# 显示交互式图形
fig.show()
```

在这个示例代码中，我们使用了Plotly库来创建一个交互式3D散点图。我们使用鸢尾花数据集中的数据，并指定了x、y、z轴的数据，以及颜色、点的大小和透明度。然后，我们设置了图形的标题和轴标签，并使用fig.show()来显示交互式图形。

运行上述代码，即可在浏览器中查看交互式3D散点图，如图8-9所示。


鸢尾花数据集的交互式3D散点图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/dafc387dbcea4a8f1901c2901395c9ed81f4f8b73cdc06a7f8e932046d4e1a88.jpg)



图8-9鸢尾花数据集的交互式3D散点图


## 8.3.2 绘制交互式3D曲面图

以下示例代码演示了如何使用Plotly创建一个交互式3D曲面图。

```python
import plotly.graph_objects as go
import numpy as np

# 创建数据网格
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)

# 定义一个三维函数（这里是一个二次函数）
Z = X**2 + Y**2

# 创建3D曲面图
fig = go.Figure(data=[go.Surface(z=Z, colorscale='Viridis')])

# 设置坐标轴标签和图标题
fig.update_layout(scene=dict(
    xaxis_title='X Label',
    yaxis_title='Y Label',
    zaxis_title='Z Label',
    ),
    title='交互式3D曲面图示例')

# 显示图形
fig.show()
```

运行上述码，即可在浏览器中查看交互式3D曲面图，如图8-10所示。


交互式3D曲面图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/546e2bec9b15c805c0f978498f10702900a1a04a779434ced9ddf758d70d6a58.jpg)



图8-10交互式3D曲面图示例


## 8.3.3 绘制交互式3D网格图

以下示例代码演示了如何使用Plotly创建一个交互式3D网格图。

```python
import plotly.graph_objects as go
import numpy as np

# 创建数据网格
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)

# 定义一个三维函数（这里是一个简单的 sin 函数）
Z = np.sin(np.sqrt(X**2 + Y**2))

# 创建3D网格图
fig = go.Figure(data=[go.Surface(z=Z, colorscale='Viridis')])

# 设置坐标轴标签和图标题
fig.update_layout(scene=dict(
    xaxis_title='X Label',
    yaxis_title='Y Label',
    zaxis_title='Z Label',
    ),
    title='交互式3D网格图示例')

# 显示图形
fig.show()
```

在这个示例代码中，我们首先创建了一个数据网格X和Y，然后定义了一个简单的三维函数 Z， Z是sin函数的曲面，然后使用 go.Surface创建3D网格图，并设置颜色映射为“Viridis”。

运行上述代码，即可在浏览器中查看交互式3D网格图，如图8-11所示。


交互式3D网格图示例


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/86ef363e1121e3aaf38d764bb28ae46cc6fdc427e49484a762ba46ebbc3765b3.jpg)



图8-11 交互式3D网格图示例


## 8.4 本章总结

本章介绍了3D图形的绘制方法，包括使用不同的3D绘图库来创建静态和交互式的3D图形。我们学习了如何绘制3D散点图、3D线图、3D曲面图和3D网格图，并通过示例展示了这些图形的应用场景。这些3D图形不仅可以提供更深入的数据展示，还能为数据分析和可视化增加更多的维度和交互性。通过本章的学习，我们能够掌握绘制3D图形的基本技能，为更全面地理解和呈现数据做好准备。

## 第9章 地理信息可视化

地理信息可视化是一种将地理空间数据以图形或图像的形式呈现出来，以便更好地理解和分析地理信息的过程。它将地理数据（如地图、地理坐标、地形、地点、地理特征等）与可视化元素（如点、线、区域、符号、颜色等）结合起来，以创建易于理解和解释的可视化呈现。

地理信息可视化的目的如下。

（1）传达信息：通过可视化地理数据，可以更有效地传达地理信息，使观众更容易理解地理现象、趋势和关系。

（2）发现模式：地理信息可视化有助于发现数据中的模式、趋势和异常，从而支持决策制定和问题解决。

（3）决策支持：在政府、商业和学术领域，地理信息可视化可以用于支持决策制定，如城市规划、资源管理、市场分析等。

（4）教育和研究：地理信息可视化在教育和研究中也有广泛的应用，可以帮助学生和研究人员更深入地了解地理概念和数据。

地理信息可视化通常包括以下类型的可视化方法。

（1）地图：创建各种类型的地图，包括点地图、线地图、面地图等，以显示地理数据的分布和关系。

（2）散点图和气泡图：使用点、圆圈或其他符号在地图上表示位置数据，通常用于显示地点或事件的分布。

（3）流向图：用于表示物流、人员流动或其他类型的流动数据，通常使用箭头或流线来表示。

（4）热力图：使用颜色渐变来表示地理区域的密度或强度，以帮

助观察数据的聚集情况。

（5）地形和地势图：使用等高线、颜色或其他方法来表示地形和地势的变化。

（6）地理信息系统（GIS）：使用GIS创建复杂的地理信息可视化，结合多个地理数据层进行分析。

地理信息可视化在许多领域都有广泛的应用，包括地理学、城市规划、环境科学、卫生研究、商业分析等。它是一种强大的工具，有助于我们更好地理解和利用地理空间数据。

## 9.1 地图散点图

地图散点图通常用于可视化地理数据，特别是在地图上显示各种地理位置的点。Python中有多个库可以用来创建地图散点图，主要有以下两个。

（1）Folium：Folium适合需要创建交互式地图可视化的用例，尤其是在Web应用程序中嵌入地图。

（2）Geopandas：Geopandas适合需要处理和分析地理数据的用例，以及创建静态地图可视化。

考虑到交互性，笔者推荐使用Folium库，下面我们详细介绍一下如何使用Folium库绘制地图散点图。

## 9.1.1 绘制地图散点图

Folium是一个用于创建交互式地图的Python库，它可以轻松地创建地图散点图。可以使用pip工具安装Folium库，安装指令如下。

```batch
pip install Folium 
```

以下是一个使用Folium创建地图散点图的示例。

```python
import folium
import pandas as pd

# 创建包含地理坐标的数据框
data = pd.DataFrame({    ①
    'City': ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"],
    'Longitude': [-74.006, -118.243, -87.629, -95.369, -112.074],
    'Latitude': [40.712, 34.052, 41.878, 29.760, 33.448],
    'Population': [8398748, 3990456, 2705994, 2320268, 1680992]
})

# 创建基本地图对象，指定地图的初始中心点坐标和缩放级别
map_obj = folium.Map(location=[data['Latitude'].mean(),
    data['Longitude'].mean()],
    zoom_start=4)    ②
# 添加散点标记
for index, row in data.iterrows():    ③
    folium.CircleMarker(
    location=[row['Latitude'], row['Longitude']], # 标记的位置，使用城市的经纬度
    radius=row['Population'] / 200000, # 标记的半径大小，根据人口数量动态计算
    color='blue',    # 标记的边框颜色
    fill=True,    # 是否填充标记

    fill_color='blue',    # 填充颜色
    fill_opacity=0.6,    # 填充不透明度
    tooltip=row['City']    # 悬停提示信息，显示城市名称
).add_to(map_obj)
# 显示地图
map_obj.save('map.html')    ④
```

主要代码的解释如下。

代码第①行创建一个包含地理坐标的DataFrame对象，其中包括城市名称（City）、经度（Longitude）、纬度（Latitude）和人口数量（Population）。

代码第②行使用folium.Map函数创建一个基本地图对象，我们指定地图的初始中心点坐标（使用数据框中的平均纬度和经度）和缩放级别。

代码第③行使用一个循环遍历DataFrame中的每个城市，并为每个城市创建一个散点标记。我们使用folium.CircleMarker函数来创建标记，并设置其位置、大小、颜色、填充等属性。

代码第④行将创建的地图保存为HTML文件，以便在浏览器中查看。使用map_obj.save('map. html')保存地图。

运行上述代码，会在程序文件的当前目录下生成map.html文件，打开该文件可以查看刚才创建的地图散点图。

## 9.1.2 绘制加利福尼亚州各城市数据

本示例使用Folium库采用地图散点图可视化显示加利福尼亚州各城市，该示例数据来自california_cities.csv文件，文件内容如图9-1所示，其中各列的说明如下。

city：城市名称。

latd：纬度。

longd：经度。

elevation_m：海拔高度(米)。

elevation_ft：海拔高度(英尺)。

population_total：总人口数。

area_total_sq_mi：总面积(平方英里)。

area_land_sq_mi：陆地面积(平方英里)。

area_water_sq_mi：水域面积(平方英里)。

area_total_km2：总面积(平方公里)。

area_land_km2：陆地面积(平方公里)。

area_water_km2：水域面积(平方公里)。

area_water_percent：水域面积百分比。

<table><tr><td colspan="16">california_cities.csv [只读] - Excel</td></tr><tr><td colspan="16">文件 开始 插入 页面布局 公式 数据 审阅 视图 开发工具 福昕PDF 告诉我您想要做什么... 共享</td></tr><tr><td colspan="16">H11 : X ✓ fx 50.811</td></tr><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td></tr><tr><td>1</td><td></td><td>city</td><td>latd</td><td>longd</td><td>elevation_elevation_</td><td>population</td><td>area_total</td><td>area_land</td><td>area_wate</td><td>area_total</td><td>area_land</td><td>area_wate</td><td>area_water_percent</td><td></td><td></td></tr><tr><td>2</td><td>0</td><td>Adelanto</td><td>34.57611</td><td>-117.433</td><td>875</td><td>2871</td><td>31765</td><td>56.027</td><td>56.009</td><td>0.018</td><td>145.107</td><td>145.062</td><td>0.046</td><td>0.03</td><td></td></tr><tr><td>3</td><td>1</td><td>AgouraHills</td><td>34.15333</td><td>-118.762</td><td>281</td><td>922</td><td>20330</td><td>7.822</td><td>7.793</td><td>0.029</td><td>20.26</td><td>20.184</td><td>0.076</td><td>0.37</td><td></td></tr><tr><td>4</td><td>2</td><td>Alameda</td><td>37.75611</td><td>-122.274</td><td></td><td>33</td><td>75467</td><td>22.96</td><td>10.611</td><td>12.349</td><td>59.465</td><td>27.482</td><td>31.983</td><td>53.79</td><td></td></tr><tr><td>5</td><td>3</td><td>Albany</td><td>37.88694</td><td>-122.298</td><td></td><td>43</td><td>18969</td><td>5.465</td><td>1.788</td><td>3.677</td><td>14.155</td><td>4.632</td><td>9.524</td><td>67.28</td><td></td></tr><tr><td>6</td><td>4</td><td>Alhambra</td><td>34.08194</td><td>-118.135</td><td>150</td><td>492</td><td>83089</td><td>7.632</td><td>7.631</td><td>0.001</td><td>19.766</td><td>19.763</td><td>0.003</td><td>0.01</td><td></td></tr><tr><td>7</td><td>5</td><td>AlisoViejo</td><td>33.575</td><td>-117.726</td><td>127</td><td>417</td><td>47823</td><td>7.472</td><td>7.472</td><td>0</td><td>19.352</td><td>19.352</td><td>0</td><td>0</td><td></td></tr><tr><td>8</td><td>6</td><td>Alturas</td><td>41.48722</td><td>-120.543</td><td>1332</td><td>4370</td><td>2827</td><td>2.449</td><td>2.435</td><td>0.014</td><td>6.342</td><td>6.306</td><td>0.036</td><td>0.57</td><td></td></tr><tr><td>9</td><td>7</td><td>AmadorCity</td><td>38.41944</td><td>-120.824</td><td>280</td><td>919</td><td>185</td><td>0.314</td><td>0.314</td><td>0</td><td>0.813</td><td>0.813</td><td>0</td><td>0</td><td></td></tr><tr><td>10</td><td>8</td><td>AmericanCanyon</td><td>38.16806</td><td>-122.253</td><td>14</td><td>46</td><td>19454</td><td>4.845</td><td>4.837</td><td>0.008</td><td>12.548</td><td>12.527</td><td>0.021</td><td>0.17</td><td></td></tr><tr><td>11</td><td rowspan="18">9</td><td rowspan="18">Anaheim</td><td rowspan="18">33.83611</td><td rowspan="18">-117.89</td><td rowspan="18">48</td><td rowspan="17">157</td><td rowspan="11" colspan="2">336000 50.811</td><td rowspan="10"></td><td rowspan="10"></td><td rowspan="10"></td><td rowspan="10"></td><td rowspan="7"></td><td rowspan="7"></td><td rowspan="7"></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图9-1 california_cities.csv文件


示例代码如下。

```python
import folium
import pandas as pd

# 导入所需的库，包括 Folium 和 Pandas
import folium
import pandas as pd

# 读取数据文件
data = pd.read_csv('data/california_cities.csv') ①
# 创建地图对象，使用加利福尼亚州的经纬度坐标作为初始中心点
california_map = folium.Map(location=[36.7783, -119.4179], zoom_start=6) ②
# 添加城市散点到地图上
for index, row in data.iterrows(): ③
    folium.CircleMarker(
    location=[row['latd'], row['longd']], # 标记的位置，使用城市的纬度和经度
    radius=5, # 标记的半径大小
    popup=f" 城市：{row['city']}<br>人口：{row['population_total']}<br>海拔高度：{row['elevation_m']} 米", # 弹出窗口内容
    color='blue', # 标记的边框颜色
```

```python
fill=True, # 是否填充标记
fill_color='blue', # 填充颜色
fill_opacity=0.6 # 填充不透明度
).add_to(california_map)

# 显示地图
california_map.save('california_cities_map.html')
```

主要代码的解释如下。

代码第①行创建一个包含地理坐标的DataFrame对象，其中包括城市名称（City）、经度（Longitude）、纬度（Latitude）和人口数量（Population）。

代码第②行使用folium.Map函数创建一个基本地图对象，我们指定地图的初始中心点坐标（使用数据框中的平均纬度和经度）和缩放级别。

代码第③行使用一个循环遍历DataFrame中的每个城市，并为每个城市创建一个散点标记。我们使用folium.CircleMarker函数来创建标记，并设置其位置、大小、颜色、填充等属性。

代码第④行将创建的地图保存为HTML文件，以便在浏览器中查看。使用map.save('california_cities_map.html')保存地图。

运行上述代码会在程序文件的当前目录下生成california_cities_map.html文件，打开该文件可以查看刚才创建的地图散点图。

## 9.2 地图热力图

地图热力图是一种用于可视化密度分布的数据图表类型，通常用于展示点数据的密度分布，其中颜色的深浅表示数据点的密度。在地理信息可视化中，地图热力图经常用来显示地理位置数据的热点分布，如人口密度、犯罪热点、交通流量等。

## 9.2.1 创建地图热力图

我们也可以使用Folium库创建地图热力图。以下示例代码演示了如何创建一个地图热力图。

```python
import folium
from folium.plugins import HeatMap
import pandas as pd

# 创建一个包含地理坐标的数据框
data = pd.DataFrame({
    'City': ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"],
    'Longitude': [-74.006, -118.243, -87.629, -95.369, -112.074],
    'Latitude': [40.712, 34.052, 41.878, 29.760, 33.448],
}
```

```python
'Population': [8398748, 3990456, 2705994, 2320268, 1680992]
})
# 创建一个基本地图对象，指定初始中心点坐标和缩放级别
m = folium.Map(location=[37.7749, -122.4194], zoom_start=6) # 这里使用加利福尼亚州的中心点坐标
②
# 使用给定数据创建一个包含坐标点的列表
locations = data[['Latitude', 'Longitude']].values.tolist()
③
# 创建热力图
HeatMap(locations).add_to(m)
④
# 显示地图
map_obj.save('heatmap.html')
⑤
```

主要代码的解释如下。

代码第①行创建一个包含地理坐标的DataFrame对象，其中包括城市名称（City）、经度（Longitude）、纬度（Latitude）和人口数量（Population）。

代码第②行使用folium.Map函数创建一个基本地图对象，我们指定地图的初始中心点坐标（使用数据框中的平均纬度和经度）和缩放级别。

代码第③行使用给定数据创建一个包含坐标点的列表locations，将纬度和经度信息转化为二维列表。

代码第④行创建热力图，使用HeatMap插件将 locations 添加到地图对象m上。

代码第⑤行将创建的地图保存为HTML文件，以便在浏览器中查看。使用map_obj. save('heatmap.html')保存地图。

运行上述代码，会在程序文件的当前目录下生成heatmap.html文件。打开该文件，可以查看刚才创建的地图热力图。

## 9.2.2 示例：绘制加利福尼亚州城市人口密度热力图

我们使用“california_cities.csv”文件数据，采用地图热力图可视化加利福尼亚州城市人口密度，示例代码如下。

```python
import folium
from folium.plugins import HeatMap
import pandas as pd

# 读取数据文件
data = pd.read_csv('data/california_cities.csv')
①
# 创建地图对象，使用加利福尼亚州的中心坐标作为初始中心点
california_map = folium.Map(location=[36.7783, -119.4179], zoom_start=6)②
```

```python
使用数据中的经纬度坐标和人口数据创建一个包含坐标点的列表
locations = data[['latd', 'longd', 'population_total']].values.tolist() ③
# 创建热力图
HeatMap(locations).add_to(california_map) ④
# 保存地图为 HTML 文件
california_map.save('california_population_heatmap.html')
```

主要代码的解释如下。

代码第①行读取包含城市数据的CSV文件，并将数据存储在名为“data”的DataFrame中。这个DataFrame包含了城市的各种信息，如经度、纬度和人口数据。

代码第②行使用folium.Map创建一个地图对象，指定了初始中心点的经度（36.7783）和纬度（-119.4179），以及初始缩放级别（zoom_start=6）。这里将地图的初始中心点设置为加利福尼亚州的中

心坐标。

代码第③行从data DataFrame 中提取城市的纬度、经度和人口数据，并将它们存储在一个包含坐标点的列表 locations 中。locations 列表的每个元素都是一个包含城市纬度、经度和人口数据的列表。

代码第④行使用HeatMap(locations)创建热力图，并将它添加到地图对象 california_map 中。这样，热力图会在地图上显示城市人口密度的热点分布情况。

运行上述代码，会在程序文件的当前目录下生成“california_population_heatmap.html”文件。打开该文件，可以查看刚才创建的地图热力图。

## 9.3 等值线图

等值线图是一种用来可视化数据的图表类型，它通过连接具有相同数值的数据点，以创建一系列曲线或线条来展示数据的分布和变化。这些曲线或线条通常被称为等值线或等高线，因为它们表示相同数值的数据点在图表上的位置。

通常，等值线图在地理信息系统（GIS）、气象学、地质学、工程学和科学研究等领域中广泛使用。

## 9.3.1创建等值线图

可以使用Matplotlib的contour() 函数在Python中创建等值线图。以下示例代码演示了如何创建一个简单的等值线图。

```python
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams['font.family'] = ['SimHei']    # 设置中文字体
```

```txt
plt.rcParams['axes.unicode_minus'] = False # 设置负号显示
```

```txt
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
X, Y = np.meshgrid(x, y)
Z = X**2 + Y**2 
```

```javascript
contour = plt.contour(X, Y, Z, levels=20, cmap='rainbow') ④ 
```

```txt
plt.colorbar(contour, label='Value') ⑤ 
```


# 添加标题和坐标轴标签


```txt
plt.title('简单等值线图')
plt.xlabel('X轴')
plt.ylabel('Y轴')
```

```txt
plt.show() 
```

主要代码的解释如下。

代码第①行使用NumPy的linspace()函数生成X轴的数据，范围是-5到5，分成100个元素。

代码第②行使用linspace()生成Y轴的数据，范围和分段数与X轴相同。

代码第③行使用NumPy的meshgrid()函数，根据X轴和Y轴的数据生成二维网格坐标点（X， Y）。

代码第④行使用plt.contour()函数绘制等值线图，传入坐标网格数据X、Y和高度数据Z，levels指定等高线的数量， cmap指定颜色映射表。

代码第⑤行使用plt.colorbar()函数添加颜色栏，传入之前的contour

输出，并设置颜色栏的标签为“Value”。

运行上述代码，绘制的图形如图9-2所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/82d2e575b1c80f085c38ec15c33e8a5519dfb2af97956e940a33475fe2d24a4f.jpg)



图9-2简单等值线图


## 9.3.2 示例：绘制伊甸火山地形图的等值线图

我们可以使用volcano数据集来创建等值线图，其中等值线将表示相同的高度。以下示例代码演示了如何使用volcano 数据集创建伊甸火山地形图的等值线图。

```python
import pandas as pd
import matplotlib.pyplot as plt

# 从 csv 文件加载数据
data = pd.read_csv("data/volcano.csv")
    ①
# 提取数据列
volcano = data.values
    ②
# 创建等值线图
contour = plt.contour(volcano, levels=20, cmap='terrain')
    ③
# 添加坐标轴标签
plt.xlabel('X Coordinates')
plt.ylabel('Y Coordinates')

# 添加颜色条
plt.colorbar()

# 添加标题
plt.title('Volcano Terrain Map')

# 保存图片
plt.savefig('contour.png')

plt.show()
```

主要代码的解释如下。

代码第①行使用Pandas库的read_csv()函数从CSV文件加载数据，存储在data中。

代码第②行使用data中的values属性提取其中的数值，存储在volcano变量中。

代码第③行使用plt.contour()函数绘制等值线图，数据来自volcano数

组。指定等值线的数量levels为20，颜色映射cmap为terrain。

运行以上代码，将生成一个显示伊甸火山地形的等值线图，如图9-3所示，其中颜色表示高度不同的区域，等值线轮廓显示了海拔高度的变化。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/591a12755f7cb7e5f1ccfc681fa0a58c22c5a40f84822afa0f1aa48a52ce8180.jpg)



图9-3伊甸火山地形图的等值线图


## 9.4 本章总结

本章介绍了地理信息可视化的方法，包括地图散点图、地图热力图和等值线图。这些工具能够帮助我们将数据与地理位置相关联，从而更好地理解地理分布和空间趋势。通过示例，我们展示了如何使用Python绘制这些地理信息可视化图形，特别是加利福尼亚州的城市数据和伊甸火山的地形图。这些可视化工具为科技领域的数据分析和决策提供了有力支持，能够帮助我们发现有关地理空间的深刻见解。通过学习本章内容，读者能够掌握地理信息可视化的基本技能，为地理数据分析和展示做好准备。

## 第10章 数据学术报告和学术论文

在本章中，我们将进一步深入讨论如何将数据分析成果有效地传达给其他人，包括学术报告、学术论文。

# 10.1 使用Jupyter Notebook撰写学术论文

使用Jupyter Notebook来撰写学术论文是一个不错的选择，特别是如果需要在文档中包含代码、数据分析和文本。

## 10.1.1 设置文档结构

Jupyter Notebook文档（.ipynb）支持使用Markdown单元格，Markdown单元格可以帮助创建标题、子标题、段落及插入LaTeX公式。默认情况下，Jupyter Notebook插入的单元格是代码类型的。如果要将代码类型单元格转换为Markdown单元格，可以通过菜单Cell→CellType→Markdown实现。

以下是一些常见的Markdown语法示例。

## 1. 标题

Markdown使用“#”来表示标题的级别。Markdown语法中提供了六级标题（从# 一级标题到###### 六级标题）。注意#后面要有个空格，然后才是标题内容。

示例如下。

```txt
一级标题  
二级标题  
三级标题  
四级标题  
五级标题  
六级标题
```

在Markdown单元格编辑Markdown代码，如图10-1所示，为了预览Markdown代码，我们可以运行该单元格，切换到预览模式，会看到如图10-2所示的效果。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/10815e5f307bd1f27dbcda80ce56fb540c51c79db8fc10e770bd45d006181a70.jpg)



图10-1 编辑Markdown代码


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/ffc34fb4e2fd4306a13b8ad26f27f0377e12f2f6e7069c28c65a08bd6fcccad1.jpg)



图10-2预览效果


## 2. 列表

无序列表可以使用“-”或“*”，有序列表则使用数字加“.”，注意“-”或“*”后面也要有个空格，示例如下。

－ 无序列表项1

－无序列表项 2

－无序列表项3

1．有序列表项1

2．有序列表项2

3．有序列表项3

上述的这个Markdown代码，切换到预览模式，会看到如图10-3所示的效果。

## 3. 引用

使用“>”符号表示引用，注意“>”后面也要有一个空格，示例如下。

〉这是一段引用文本。

上述的这个Markdown代码，切换到预览模式，会看到如图10-4所示的效果。

·无序列表项1

·无序列表项2

·无序列表项3

1.有序列表项1

2.有序列表项2

3.有序列表项3

图10-3预览效果

## 这是一段引用文本。

图10-4预览效果

## 4.粗体和斜体

使用“**”包围文本来表示粗体，使用“*”包围文本来表示斜体，注意“**”或“*”后面也要有个空格，示例如下。

这是**粗体**文本，这是*斜体*文本。

上述的这个Markdown代码，切换到预览模式，会看到如图10-5所示的效果。

这是粗体文本，这是斜体文本。

图10-5 预览效果

## 5. 图片

Markdown 图片的语法如下。

![图片alt]（图片链接"图片title")

示例代码如下。

![AI 生成图片]（./images/deepmind-mbq0qL3ynMs-unsplash.jpg "这是AI 生成的图片。")

上述的这个Markdown代码，切换到预览模式，会看到如图10-6所示的效果。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/ad74102a4269e498b3f599dacf3ed18a44c541290b18dbb957d871ada040fc7c.jpg)



图10-6预览效果


## 6. 插入LaTeX公式

在Markdown中，可以使用美元符号 $ 来插入LaTeX公式。示例如下。

这是一个行内公式：$E=mc^2$。

这是一个居中显示的公式：

$\) F = \frac{G \cdot m1 \cdot m2}{r^2} \($ 

上述的这个Markdown代码，切换到预览模式，会看到如图10-7所示的效果。

这是一个行内公式：E=mc²。

这是一个居中显示的公式：

$$
F = \frac {G \cdot m 1 \cdot m 2}{r ^ {2}}
$$

图10-7预览效果

## 7. 脚注

在R Markdown中，我们可以使用脚注来为文档中的特定文本添加注释或额外的信息。以下是在R Markdown中创建脚注的示例。

这是一些正文文本[^1]。

这是另一些正文文本[^2]。

［^1]：这是脚注1的内容。

[^2]：这是脚注2的内容。

上述的这个Markdown代码，切换到预览模式，会看到如图10-8所示的效果。

这是一些正文文本[^1]。

这是另一些正文文本[^2]。

[^1]：这是脚注1的内容。

[^2]：这是脚注2的内容。

这是一些正文文本1。

这是另一些正文文本2。

图10-8预览效果

## 8. 代码块

在Markdown中插入代码块可以用来显示和格式化代码，使其在文档中更易于阅读。Markdown支持不同类型的代码块，如果我们有多行代码或更大的代码段，可以使用三个反引号（```）或三个波浪号（～～～）来创建代码块，并指定代码块的编程语言，以便Markdown能够正确高亮显示代码。以下是一段Python代码。

```txt
def greet(name): 
```

```lua
print(f"Hello, {name}!") 
```

上述的这个Markdown代码，切换到预览模式，会看到如图10-9所示的效果。

以下是一段Java代码。

```txt
java
public class HelloWorld {
    public static void main(String[] args) {
    System.out.println("Hello, World!");
    }
} 
```

上述的这个Markdown代码，切换到预览模式，会看到如图10-10所示的效果。

```python
def greet(name):
    print(f"Hello, {name}!") 
```


图10-9预览效果


```java
public class HelloWorld {
    public static void main(String[] args) {
    System.out.println("Hello, World!");
    }
} 
```


图10-10 预览效果


## 9. 添加表格

我们可以使用Markdown语法创建简单的表格，示例如下。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/8cb87f2cd863c2517bbcead29dc81b74c9856a991b1c75a16bf6af75ff530c02.jpg)


在上面的示例中，使用“|”符号来分隔表格的列，使用“-”符号来创建表头下方的分隔线。生成的表格将根据Markdown语法呈现为HTML、PDF或其他输出格式的表格。

上述的这个示例，切换到预览模式，会看到如图10-11所示的效果。

<table><tr><td>姓名</td><td>年龄</td><td>职业</td></tr><tr><td>Alice</td><td>30</td><td>工程师</td></tr><tr><td>Bob</td><td>28</td><td>设计师</td></tr><tr><td>Charlie</td><td>35</td><td>分析师</td></tr></table>


图10-11 预览效果


## 10.1.2 导出文档

一旦论文完成了，可以使用Jupyter Notebook的导出功能将Notebook转换为PDF、HTML或其他格式。Jupyter Notebook支持导出的格式有很多，读者可以打开菜单File→Download as弹出如图10-12所示的导出文件子菜单。

如图10-12所示，这些文档格式都是支持的，但是直接导出.pdf等文档格式还需要安装一些其他的插件。对于初学者来说，笔者推荐导出.md文件，即Markdown 文件，它可以方便转换为其他格式的文档。

如果要导出.md文件，可以通过菜单File→Download as→Markdown(.md)下载.zip文件，例如笔者的文件是“10.1 使用Jupyter Notebook撰写学术论文.ipynb”，那么导出并下载后的文件则是“10.1使用JupyterNotebook撰写学术论文.zip”，解压该文件后的内容如图10-13所示。

<table><tr><td>AsciiDoc (.asciidoc)</td></tr><tr><td>HTML (.html)</td></tr><tr><td>LaTeX (.tex)</td></tr><tr><td>Markdown (.md)</td></tr><tr><td>Notebook (.ipynb)</td></tr><tr><td>PDF via LaTeX (.pdf)</td></tr><tr><td>PDF via HTML (.html)</td></tr><tr><td>PNG via HTML (.html)</td></tr><tr><td>reST (.rst)</td></tr><tr><td>Python (.py)</td></tr><tr><td>Reveal.js slides (.slides.html)</td></tr><tr><td>PDF via HTML (.html)</td></tr></table>


图10-12导出文件子菜单


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/352638f7672f901a9c481386e39d4a248a7dda5299acb22be73d5a167633b995.jpg)



图10-13解压后的文件内容


在图10-13中，“10.1 使用Jupyter Notebook撰写学术论文.md”是我们需要的主文件。我们可以使用一些Markdown工具打开该文件，笔者使用的是Typora工具。文件打开后如图10-14所示，使用Typora工具导出PDF文件或Word等格式的文件。Typora是一个收费软件，如果读者没有授权，也可以使用VS Code+Markdown Preview Enhanced扩展等。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/5128b0989ff4585a07ecdfc293a1969230968cf7a85b20f49dc9857c16fafac2.jpg)



图10-14 使用Typora工具打开.md文件


笔者可以使用Typora工具导出PDF文件，如图10-15所示，也可以导出Word文件，如图10-16所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/09fc6673435a5bc559e584088011c47c11c4b6e44186b483b9af338c28134b87.jpg)



图10-15 导出PDF文件


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/d5ff3ce0077bf0755d5c56ec080712f3c11b57b4b8277c73c4595f13a7e9c55b.jpg)



图10-16 导出Word文件


## 10.2 使用ChatGPT工具辅助制作报告

在这一部分，我们探讨如何使用人工智能工具（如ChatGPT）来辅助报告的制作和优化，包括与ChatGPT对话，制作思维导图、表格，以及自动化Excel和PPT演示文稿。

## 10.2.1 思维导图在数据学术报告中的作用

思维导图是一种用于组织和表示概念及其关系的图表工具。它由一个中心主题发散出相关的分支主题，层层递进，直观地呈现思路和逻辑关系。

在数据学术报告中，使用思维导图有以下作用。

（1）梳理报告的逻辑结构：思维导图可以直观地展示报告的主要章节和内容，梳理报告的逻辑顺序，对报告内容建立层级关系。

（2）明确重点内容：通过思维导图上的主题-子主题层级，可以明确报告要表达的核心观点和重点内容。

（3）构建报告框架：思维导图构建的结构可以直接转换为报告的框架，如各章节标题等。

（4）统整研究素材：将读到的文献、数据结果等素材以节点的形式添加到思维导图，统整归纳研究内容。

（5）识别逻辑漏洞：检查思维导图的连续性，识别报告逻辑的不完整之处。

（6）团队协作：在团队报告写作中，使用思维导图进行头脑风暴

和构建报告框架。

（7）清晰展示：在报告演示时，使用思维导图能更清晰地展示报告的主要内容和结构。

总之，思维导图是一个很好的制作报告工具，如果使用恰当，可以大大提高报告的质量。

## 10.2.2 绘制思维导图

可以手绘或使用电子工具创建思维导图。专业的软件或在线工具，如MindManager、XMind、Google Drawings、Lucidchart等，这些工具可以提供丰富的绘图功能和模板库，帮助读者快速创建各种类型的思维导图。

XMind绘制的思维导图如图10-17所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/ea08733c808e07508fc0d6f099da49df2e6b67d7b3ff937c9f2f7882430b3fe2.jpg)


图10-17 XMind绘制的思维导图

## 10.2.3 使用ChatGPT绘制思维导图

ChatGPT是一种自然语言处理模型，它并不具备直接绘制思维导图的功能，但是它可以通过如下方法实现。

方法1：通过ChatGPT生成Markdown代码描述的思维导图，再使用一些思维导图工具以Markdown文件格式导入。

方法2：使用ChatGPT通过文本的绘图语言PlantUML或Mermaid绘制思维导图，图10-18是一个使用PlantUML工具绘制的思维导图。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/ad999f69616fcbdf7d0f2e9107e8dfda6560621c2d8f0fc4c351501a3d2738b7.jpg)



图10-18 使用PlantUML绘制的思维导图


## 10.2.4 示例：使用Markdown 绘制“基于机器学习

# 的信用评分模型研究”思维导图

下面通过一个示例给大家介绍一下如何使用Markdown借助ChatGPT绘制思维导图。

## 我们向ChatGPT发送如下提问：

有如下论文背景，返回Markdown代码文档，注意主题层次关系。

标题：基于机器学习的信用评分模型研究

摘要：本研究构建了多个机器学习模型来预测个人信用评分，使用German Credit数据集，经过数据预处理，建立了Logistic回归、随机森林和神经网络模型，并进行了模型评估和比较，结果显示集成学习模型效果最优。

关键词：信用评分；机器学习；逻辑回归；随机森林；神经网络

## 1. 引言

研究背景和意义

相关工作综述

本文研究内容和贡献

## 2. 数据与方法

German Credit数据集介绍

数据预处理流程

模型选择和评估指标

## 3. 模型建立与比较

逻辑回归模型

随机森林模型

神经网络模型

模型评估指标比较

## 4. 结果分析

不同模型效果可视化

特征重要性分析

案例预测和错误分析

## 5. 结论与展望

研究工作总结

局限性和未来工作

## ChatGPT回答：

以下是你提供的论文背景信息的Markdown代码文档，注意主题层次关系。

# 基于机器学习的信用评分模型研究

## 摘要

本研究构建了多个机器学习模型来预测个人信用评分，使用German Credit数据集，经过数据预处理，建立了Logistic回归、随机森林和神经网络模型，并进行了模型评估和比较，结果显示集成学习模型效果最优。

## 关键词

信用评分；机器学习；逻辑回归；随机森林；神经网络

## 1. 引言

### 1.1 研究背景和意义

### 1.2 相关工作综述

### 1.3 本文研究内容和贡献

## 2. 数据与方法

### 2.1 German Credit数据集介绍

### 2.2 数据预处理流程

### 2.3 模型选择和评估指标

## 3. 模型建立与比较

### 3.1 逻辑回归模型

### 3.2 随机森林模型

### 3.3 神经网络模型

### 3.4 模型评估指标比较

## 4. 结果分析

### 4.1 不同模型效果可视化

### 4.2 特征重要性分析

### 4.3 案例预测和错误分析

## 5. 结论与展望

### 5.1 研究工作总结

### 5.2 局限性和未来工作

将上述Markdown代码复制到文本编辑工具中，并保存为“基于机器学习的信用评分模型研究.md”文件。

由于XMind工具提供了从Markdown文件导入的功能，可以使用XMind工具导入这个刚刚生成的Markdown文件：打开XMind工具，单击菜单“文件”→“导入”→Markdown，在弹出的导入文件对话框中选择要导入的XMind文件，如果导入成功，思维导图如图10-19所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/73c58645dd7e7f4eddece638757d7c05981ae2ccce9faf0ce2d21111de860b5c.jpg)



图10-19 导入Markdown文件的思维导图


## 10.2.5 示例：使用PlantUML绘制“基于机器学习的信用评分模型研究”思维导图

下面通过一个示例给大家介绍一下如何使用PlantUML绘制思维导

图，该示例背景还是“基于机器学习的信用评分模型研究”。

## 我们向ChatGPT发送请求消息：

有如下论文背景，帮我使用PlantUML绘制思维导图，注意主题层次关系。

标题：基于机器学习的信用评分模型研究

摘要：本研究构建了多个机器学习模型来预测个人信用评分，使用German Credit数据集，经过数据预处理，建立了Logistic回归、随机森林和神经网络模型，并进行了模型评估和比较，结果显示集成学习模型效果最优。

关键词：信用评分；机器学习；逻辑回归；随机森林；神经网络

1. 引言

研究背景和意义

相关工作综述

本文研究内容和贡献

2. 数据与方法

German Credit数据集介绍

数据预处理流程

模型选择和评估指标

3. 模型建立与比较

逻辑回归模型

随机森林模型

神经网络模型

模型评估指标比较

## 4. 结果分析

不同模型效果可视化

特征重要性分析

案例预测和错误分析

## 5. 结论与展望

研究工作总结

局限性和未来工作

## ChatGPT回答：

好的，根据你提供的论文背景，我使用PlantUML绘制了对应的思维导图。

plantuml 

@startmindmap 

* 基于机器学习的信用评分模型研究

** 引言

*** 研究背景和意义

*** 相关工作综述

*** 本文研究内容和贡献

** 数据与方法

*** German Credit数据集介绍

*** 数据预处理流程

*** 模型选择和评估指标

** 模型建立与比较

*** 逻辑回归模型

*** 随机森林模型

*** 神经网络模型

*** 模型评估指标比较

** 结果分析

*** 不同模型效果可视化

*** 特征重要性分析

*** 案例预测和错误分析

** 结论与展望

*** 研究工作总结

*** 局限性和未来工作

@endmindmap 

将上述代码复制并粘贴到PlantUML渲染工具，如图10-20所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/0136e8956909da7d6a37c8fa4afe9e8688433d2716e38faaaea1ab58bcdc41b7.jpg)



图10-20在线渲染工具


渲染完成后可以下载图片，最后得到的结果如图10-21所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/6162b31cfb911e26b8aabec66745d253ef1020126b36cb95dd901ab60b389557.jpg)


图10-21渲染完成后的思维导图

## 10.2.6 使用ChatGPT制作电子表格

在学术报告中使用表格可以更好地展示结构化的数据信息。学术报告中常见的几种表格如下。

（1）数据集基本信息表：显示所使用数据集的名称、来源、样本量、特征个数等基本信息。

（2）数据预处理表：记录在数据准备阶段进行的缺失值处理、异常值处理、特征工程等预处理步骤。

（3）模型评估指标表：按模型展示各项评估指标的值，如精确率、召回率、F1分数等。

（4）模型训练参数表：记录不同模型的训练参数设定，如迭代次数、学习率、隐层节点数等。

（5）特征重要性表：展示不同特征在模型中的重要性排名。

（6）预测结果示例表：给出模型预测的几个具体样本，对比真实标签和预测标签。

（7）术语定义表：解析报告中使用的主要术语和概念。

（8）参考文献表：以序号排列出报告引用的所有参考文献。需要根据报告的具体内容，选择适当的表格类型进行展示，并关注表格的清晰、美观。表格需要配有题注进行解释。

下面我们通过示例介绍如何使用ChatGPT制作两种电子表格。

# 10.2.7 示例：模型评估指标比较Markdown表格

## 我们向ChatGPT发送请求消息：

根据如下内容帮我制作“模型评估指标比较”Markdown表格。

在研究中，我们评估了不同机器学习模型在特定任务上的性能。该任务涉及对某一问题的解决，这些模型在解决问题时可能表现出不同的性能。

我们列出了不同机器学习模型的性能指标，包括准确率、精确率、召回率和F1值。这些指标是用于评估每个模型在某个任务上的性能的关键度量标准。

逻辑回归模型有0.789的准确率、0.824的精确率、0.811的召回率和0.817的F1值。

决策树模型的性能稍低，准确率为0.701、精确率为0.726、召回率为0.688，F1值为0.707。

随机森林模型表现出色，准确率为0.805、精确率为0.819、召回率为0.798，F1值为0.808。

SVM模型在准确率方面表现稳定，准确率为0.798，但精确率和召回率略低，分别为0.763和0.762，F1值为0.763。

神经网络模型有0.812的准确率、0.801的精确率、0.824的召回率和0.812的F1值。

这些性能指标可以帮助我们比较不同模型在任务中的效果，根据具体需求选择最适合的模型。

## ChatGPT回答：

好的，根据你提供的内容，我生成了下面的“模型评估指标比较”Markdown表格。

```txt
| 模型 | 准确率 | 精确率 | 召回率 | F1值 |
| -|-|-|-|-|-|
| 逻辑回归 | 0.789 | 0.824 | 0.811 | 0.817 |
| 决策树 | 0.701 | 0.726 | 0.688 | 0.707 |
| 随机森林 | 0.805 | 0.819 | 0.798 | 0.808 |
| SVM | 0.798 | 0.763 | 0.762 | 0.763 |
| 神经网络 | 0.812 | 0.801 | 0.824 | 0.812 |
```

将上述代码复制粘贴并保存为“模型评估指标比较.md”文件，然后使用Markdown工具预览，预览效果如图10-22所示。

<table><tr><td>模型</td><td>准确率</td><td>精确率</td><td>召回率</td><td>F1值</td></tr><tr><td>逻辑回归</td><td>0.789</td><td>0.824</td><td>0.811</td><td>0.817</td></tr><tr><td>决策树</td><td>0.701</td><td>0.726</td><td>0.688</td><td>0.707</td></tr><tr><td>随机森林</td><td>0.805</td><td>0.819</td><td>0.798</td><td>0.808</td></tr><tr><td>SVM</td><td>0.798</td><td>0.763</td><td>0.762</td><td>0.763</td></tr><tr><td>神经网络</td><td>0.812</td><td>0.801</td><td>0.824</td><td>0.812</td></tr></table>


图10-22 预览效果


## 10.2.8示例：模型评估指标比较CSV表格

## 我们向ChatGPT发送请求消息：

根据如下内容帮我制作“模型评估指标比较”CSV表格。

在研究中，我们评估了不同机器学习模型在特定任务上的性能。该任务涉及对某一问题的解决，这些模型在解决问题时可能表现出不同的性能。

我们列出了不同机器学习模型的性能指标，包括准确率、精确率、召回率和F1值。这些指标是用于评估每个模型在某个任务上的性能的关键度量标准。

逻辑回归模型有0.789的准确率、0.824的精确率、0.811的召回率和0.817的F1值。

决策树模型的性能稍低，准确率为0.701、精确率为0.726、召回率为0.688，F1值为0.707。

随机森林模型表现出色，准确率为0.805、精确率为0.819、召回率为0.798，F1值为0.808。

SVM模型在准确率方面表现稳定，准确率为0.798，但精确率和召回率略低，分别为0.763和0.762，F1值为0.763。

神经网络模型有0.812的准确率、0.801的精确率、0.824的召回率和0.812的F1值。

这些性能指标可以帮助我们比较不同模型在任务中的效果，根据具体需求选择最适合的模型。

好的，根据你提供的内容，我生成了下面的”模型评估指标比较”CSV表格。

模型,准确率,精确率,召回率,F1值

逻辑回归,0.789,0.824,0.811,0.817

决策树,0.701,0.726,0.688,0.707

随机森林,0.805,0.819,0.798,0.808

SVM,0.798,0.763,0.762,0.763 

神经网络,0.812,0.801,0.824,0.812

CSV文件是文本文件，因此可以使用任何文本编辑工具编辑。图10-23所示是使用“记事本”工具编辑CSV代码。

将文件保存为“模型评估指标比较.csv”文件格式，如图10-24所示，注意编码要选择ANSI。

保存好CSV文件后，我们可以使用Excel和WPS等Office工具打开。使用Excel打开CSV文件，如图10-25所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/fd0eb194a221f5cf0b595dd8ee2070660ef78b8fe3ee653c7cc11af174ba9315.jpg)



图10-23 在记事本中编辑CSV代码


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/fb65777b8ae9e97c0033896146c67f42ab56e6c21550415e18e7519102044680.jpg)



图10-24 保存CSV文件


<table><tr><td colspan="6">文件 开始 插入 页面布局 公式 数据 审阅</td></tr><tr><td>14</td><td></td><td colspan="2">× √ fx</td><td colspan="2"></td></tr><tr><td colspan="2">A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td>1</td><td>模型</td><td>准确率</td><td>精确率</td><td>召回率</td><td>F1值</td></tr><tr><td>2</td><td>逻辑回归</td><td>0.789</td><td>0.824</td><td>0.811</td><td>0.817</td></tr><tr><td>3</td><td>决策树</td><td>0.701</td><td>0.726</td><td>0.688</td><td>0.707</td></tr><tr><td>4</td><td>随机森林</td><td>0.805</td><td>0.819</td><td>0.798</td><td>0.808</td></tr><tr><td>5</td><td>SVM</td><td>0.798</td><td>0.763</td><td>0.762</td><td>0.763</td></tr><tr><td>6</td><td>神经网络</td><td>0.812</td><td>0.801</td><td>0.824</td><td>0.812</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">模型评估指标比较</td><td colspan="2">④</td></tr><tr><td colspan="6">就绪</td></tr></table>


图10-25 使用Excel打开CSV文件


## 10.3 本章总结

本章介绍了如何准备和制作数据学术报告、学术论文。我们首先学习了如何使用JupyterNotebook来撰写学术论文，包括设置文档结构和导出文档。接着，我们探讨了如何使用ChatGPT工具来辅助制作报告，包括绘制思维导图和制作电子表格。通过示例，我们展示了如何使用Markdown和PlantUML来绘制思维导图，以及如何创建模型评估指标比较的表格。这些技能对于将数据分析结果清晰、简洁地呈现给他人及进行学术研究和报告都非常有用。通过学习本章内容，读者能够更有效地组织和展示数据科学成果。

## 第11章 实战训练营

在本章中，我们将深入研究两个实际案例，展示如何应用数据分析和可视化技巧来解决实际问题。这些案例将帮助读者将之前学到的知识应用到实际情境中，加深对数据分析的理解。

## 11.1案例1：用t检验评估X药品治疗效果对比分析

这个案例将教我们如何在Python语言中执行t检验，评估药物治疗效果，并对结果进行解释和可视化呈现。它是一个典型的实际数据分析案例，将帮助科研人员理解如何应用统计方法来解决医疗领域的问题。

## （1）背景：

在本案例中，我们将探讨一种新药物（X药）的治疗效果。我们希望确定这种药物是否在患者的治疗中表现出显著的效果，以及与对照组相比是否有统计学上的差异。

## （2）目标：

评估X药在治疗组中的平均治疗效果。

与对照组进行比较，判断治疗组是否显著优于对照组。

使用t检验来进行统计检验，确定差异是否显著。

## （3）案例实现步骤：

数据准备；

假设检验；

结果解释；

可视化。

## 11.1.1 步骤1：数据准备

我们获取的数据是“clinical_trial_data.csv”文件，该文件的部分内容如图11-1所示，注意该文件的字符集编码为GBK。

该文件中包含了三个关键列，具体的解释如下。

Patient_ID（患者ID）：这一列是患者的唯一标识符，每个患者都有一个独特的ID。

Treatment_Group（治疗组）：这一列是每位患者所属的治疗组。有两个可能的取值，即“治疗组”和“对照组”，表示患者随机分配到了这两个不同的治疗组中。

Treatment_Effect（治疗效果）：这一列是与每位患者相关的治疗效果数据。治疗效果通常是一个数值，用于衡量治疗对患者的影响。正值表示治疗效果增强，负值表示治疗效果减弱。

读取“clinical_trial_data.csv”文件的代码如下。

```python
# 使用 pandas 读取 CSV 文件，指定文件编码为 GBK
import pandas as pd
clinical_data = pd.read_csv("data/clinical_trial_data.csv", encoding="GBK")
# 查看数据的前几行
print(clinical_data.head())
```

运行上述代码，结果如图11-2所示。

<table><tr><td colspan="2">[H11]</td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>1</td><td>Patient_ID</td><td>Treatment_Group</td><td>Treatment_Effect</td><td></td><td></td></tr><tr><td>2</td><td>1</td><td>治疗组</td><td>-2.687042816</td><td></td><td></td></tr><tr><td>3</td><td>2</td><td>治疗组</td><td>1.243551107</td><td></td><td></td></tr><tr><td>4</td><td>3</td><td>治疗组</td><td>1.60174933</td><td></td><td></td></tr><tr><td>5</td><td>4</td><td>对照组</td><td>-2.777784824</td><td></td><td></td></tr><tr><td>6</td><td>5</td><td>治疗组</td><td>-1.428713718</td><td></td><td></td></tr><tr><td>7</td><td>6</td><td>对照组</td><td>-0.648122105</td><td></td><td></td></tr><tr><td>8</td><td>7</td><td>对照组</td><td>1.381285991</td><td></td><td></td></tr><tr><td>9</td><td>8</td><td>对照组</td><td>0.501095803</td><td></td><td></td></tr><tr><td>10</td><td>9</td><td>治疗组</td><td>2.014704542</td><td></td><td></td></tr><tr><td>11</td><td>10</td><td>治疗组</td><td>1.146469369</td><td></td><td></td></tr><tr><td>12</td><td>11</td><td>对照组</td><td>-1.831621038</td><td></td><td></td></tr><tr><td>13</td><td>12</td><td>对照组</td><td>2.622194897</td><td></td><td></td></tr><tr><td>14</td><td>13</td><td>对照组</td><td>1.977452629</td><td></td><td></td></tr><tr><td>15</td><td>14</td><td>治疗组</td><td>3.307857372</td><td></td><td></td></tr><tr><td>16</td><td>15</td><td>对照组</td><td>-2.881610467</td><td></td><td></td></tr><tr><td>17</td><td>16</td><td>治疗组</td><td>3.894712868</td><td></td><td></td></tr><tr><td>18</td><td>17</td><td>对照组</td><td>3.473872354</td><td></td><td></td></tr><tr><td>19</td><td>18</td><td>治疗组</td><td>0.774966651</td><td></td><td></td></tr><tr><td>20</td><td>19</td><td>治疗组</td><td>4.560067944</td><td></td><td></td></tr><tr><td>21</td><td>20</td><td>治疗组</td><td>3.075766624</td><td></td><td></td></tr><tr><td>22</td><td>21</td><td>治疗组</td><td>-0.949207616</td><td></td><td></td></tr><tr><td>23</td><td>22</td><td>对照组</td><td>0.484847884</td><td></td><td></td></tr><tr><td colspan="6">clinical_trial_data</td></tr><tr><td colspan="6">就绪</td></tr></table>


图11-1 clinical_trial_data.csv文件（部分）


<table><tr><td></td><td>Patient_ID</td><td>Treatment_Group</td><td>Treatment_Effect</td></tr><tr><td>0</td><td>1</td><td>治疗组</td><td>-2.687043</td></tr><tr><td>1</td><td>2</td><td>治疗组</td><td>1.243551</td></tr><tr><td>2</td><td>3</td><td>治疗组</td><td>1.601749</td></tr><tr><td>3</td><td>4</td><td>对照组</td><td>-2.777785</td></tr><tr><td>4</td><td>5</td><td>治疗组</td><td>-1.428714</td></tr></table>


图11-2运行结果


## 11.1.2 步骤2：假设检验

假设检验是统计学中一种常用的推断性统计方法，用于评估关于总体或总体参数的统计假设是否成立。它帮助我们通过样本数据作出关于总体的推断，判断某种效应是否存在，并在统计显著性水平上进行判断。

本案例我们采用t检验。t检验是一种统计假设检验方法，用于比较两组数据的均值是否存在显著差异。

t检验通常用于以下情况。

（1）比较两个样本的均值： 当我们有两组数据，想知道它们的均值是否有显著差异时，可以使用t检验。

（2）确定一个样本的均值是否不同于已知的理论值：我们可以使用t检验来验证一个样本的均值是否与某个理论值或已知的参考值存在显著性差异。

t检验的基本思想是通过比较样本均值与样本标准误差之间的比值（t值）来评估均值之间的差异是否显著。

通常，t检验的步骤如下。

（1）提出假设：建立零假设（H0）和备择假设（H1），其中H0表示没有显著差异，H1表示存在显著差异。

（2）计算t值：通过将样本均值之差除以标准误差来计算t值。t值表示观察到的差异相对于样本误差的大小。

（3）计算自由度：自由度用于确定t分布的形状。它取决于样本大小和研究设计。

（4）计算p值：使用t值和自由度计算出p值，p值表示观察到的差异在零假设下出现的概率。较小的p值表示较强的证据支持备择假设。

（5）做出决策：根据p值与显著性水平的比较，可以决定是否拒绝零假设。如果p值小于显著性水平（通常为0.05），则拒绝零假设，认为存在显著差异。

t检验可以应用于许多领域，包括医学、社会科学、自然科学等，以评估两组数据之间的差异是否具有统计学意义。它是一种常见的统计工具，用于研究和决策分析。

以下是进行假设检验（t检验）的Python代码，用于比较治疗组和对照组的平均治疗效果是否存在显著差异。

```python
# 按治疗组分割数据
treatment_group = clinical_data['Treatment_Group'] ①
treatment_effect = clinical_data['Treatment_Effect'] ②
# 计算治疗组和对照组的平均治疗效果
mean_treatment = treatment_effect[treatment_group == '治疗组'].mean() ③
mean_control = treatment_effect[treatment_group == '对照组'].mean() ④
# 进行假设检验（t检验）来评估治疗效果
from scipy import stats ⑤
t_test_result = stats.ttest_ind(treatment_effect[treatment_group == '治疗组'], treatment_effect[treatment_group == '对照组'])
# 输出结果
```

```lua
print("治疗组的平均治疗效果：", mean_treatment)
print("对照组的平均治疗效果：", mean_control)
print("t检验结果：")
print(t_test_result)
```

上述代码的解释如下。

代码第①行和第②行从clinical_data数据框中提取出治疗组（Treatment_Group）和治疗效果（Treatment_Effect）这两列数据，并将它们存储在名为treatment_group和treatment_effect的变量中，以便后续分析使用。

代码第③行计算了治疗组的平均治疗效果。它使用了条件索引，只选择了治疗组的数据进行平均值计算，并将结果存储在mean_treatment变量中。

代码第④行计算了对照组的平均治疗效果，并将结果存储在mean_control变量中。

代码第⑤行导入scipy模块中的stats，为后续的t检验做准备。scipy模块是Python中的一个重要的科学计算模块，提供了大量的科学计算、工程计算、数据分析方面的算法和函数。

代码第⑥行执行了t检验（假设检验），比较了治疗组和对照组的平均治疗效果是否存在显著差异。ttest_ind函数中有两个样本，分别是治疗组和对照组的治疗效果数据。它会计算t值、自由度（df）、p-value等统计信息。

这段代码的主要目的是进行t检验，比较两组数据的平均值是否存在显著差异，并将结果输出到控制台中，以帮助判断治疗效果是否显著。

上述代码运行的结果如下。

```txt
治疗组的平均治疗效果：0.48645788603952317  
对照组的平均治疗效果：-0.08402642917276239 t  
检验结果：  
TtestResult(statistic=1.417123502791191, p-value=0.15961816144139054, df=98.0)
```

## 11.1.3 步骤3：结果解释

进行t检验后，我们会得到一些统计信息，包括t值、自由度（df）、p-value等，具体的解释如下。

t值（t-statistic）：t值是用来衡量两组数据均值之间差异的统计量。它的绝对值越大，表示两组数据的均值差异越显著。在t检验中，我们关注t值的绝对值。

自由度（Degrees of Freedom，df）： 自由度是用来确定t分布的参数之一。它的值取决于样本大小和假设检验的类型。在t检验中，自由度通常等于两个样本的大小之和减2（df = n1 + n2 - 2），其中n1和n2分别是两个样本的大小。

p-value（p-值）： p-value是一个非常重要的统计指标，用于判断假设检验的结果是否显著。它表示在零假设成立的情况下，观察到样本数据或更极端情况的概率。通常，如果p-value小于预先设定的显著性水平（通常是0.05或0.01），我们拒绝零假设，认为两组数据的均值存在显著差异。如果p-value大于显著性水平，我们接受零假设，认为没有显著差异。

对步骤2运行结果的解释如下。

（1）治疗组的平均治疗效果：0.4864579：这是治疗组中患者的平均治疗效果值，表示在治疗组中患者的平均治疗效果是0.4864579。

（2）对照组的平均治疗效果：-0.08402643：这是对照组中患者的平均治疗效果值，表示在对照组中患者的平均治疗效果是-0.08402643。可以看出，治疗组的平均治疗效果略高于对照组。

（3）t检验结果：关于t检验的结果。

## 11.1.4 步骤4：可视化

通过可视化方式呈现分析结果，以便更好地理解和传达研究的结论。在这个案例中，由于我们采用t检验比较两组的治疗效果，可视化可以帮助我们更清晰地展示结果。

我们可以使用柱状图或箱线图来比较治疗组和对照组的治疗效果分布。这些图表可以帮助科研人员直观地看到两组数据的差异。

以下是一些可能用于可视化治疗组和对照组治疗效果分布的示例代码，使用了Seaborn库进行绘图。请注意，这些代码只是示例，读者可以根据需要进行自定义和扩展。

示例代码如下。

```python
import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib
matplotlib.rcParams['font.sans-serif'] = ['SimHei']  # 设置中文字符显示
matplotlib.rcParams['axes.unicode_minus'] = False    # 设置负号显示

# 提取需要用于可视化的数据
data = clinical_data[['Treatment_Group', 'Treatment_Effect']]
# 创建柱状图
ax = sns.barplot(x='Treatment_Group', y='Treatment_Effect',
data=data, errorbar=None)
ax.set_xlabel('组别')
ax.set_ylabel('平均治疗效果')
ax.set_title('治疗组和对照组治疗效果对比')

plt.show()
```

在上述示例代码中，第一个示例绘制了一个柱状图（见图11-3），显示了治疗组和对照组的平均治疗效果，并使用颜色对两组进行了区分。

读者可以根据需要进一步自定义这些图表，添加标签、颜色、图例等，以便更好地呈现你的分析结果。

此外，我们还可以绘制一个箱线图来比较治疗组和对照组治疗效果的分布情况，如图11-4所示。


治疗组和对照组治疗效果对比


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/a1cb36b1665629bbf0bef0d5d32b885ee4b571d927112865ebfc459321096819.jpg)



图11-3 柱状图



治疗组和对照组治疗效果分布对比


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/55b75a38a749424f7151aa65d9a3c1d511ae52c45c0c30eeee0da97e7f2abbc4.jpg)



图11-4 箱线图


## 11.2案例2：美国大豆品种数据集可视化分析

大豆是世界上最重要的粮食作物之一，美国是一个世界性的大豆生产和出口国。不同大豆品种的识别对确保食品安全及大豆生产和贸易至关重要。

本案例使用公开的美国大豆品种数据集Soybean.csv，该数据集收录了669个大豆样本，每个样本包含35个形态和病害相关的特征。我们对数据集进行可视化分析，以便更深入地了解不同大豆品种的特征分布。

我们尝试从以下几个方面进行可视化分析。

（1）可以绘制不同大豆品种样本数量的柱状图或饼图，展示类别分布。

（2）可以通过散点图、相关性热图等观察不同特征之间的关系。

（3）可以使用箱线图、小提琴图等比较不同大豆品种在某一属性指标上的差异。

（4）可以尝试使用矩阵散点图分析多个不同特征之间的相互影响。

## 11.2.1 步骤1：数据准备

我们获取的数据是“Soybean.csv”文件，该文件的部分内容如图11-5所示。

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td><td>O</td><td>P</td><td>Q</td><td>R</td></tr><tr><td>1</td><td>class</td><td>date</td><td>plant.stan</td><td>precip</td><td>temp</td><td>hail</td><td>crop.hist</td><td>area.dam</td><td>sever</td><td>seed.tmt</td><td>germ</td><td>plant.grov</td><td>leaves</td><td>leaf.halo</td><td>leaf.marg</td><td>leaf.size</td><td>leaf.shrea</td><td>leaf.malf</td></tr><tr><td>2</td><td>diaporthe</td><td>6</td><td>0</td><td>2</td><td>1</td><td>0</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>3</td><td>diaporthe</td><td>4</td><td>0</td><td>2</td><td>1</td><td>0</td><td>2</td><td>0</td><td>2</td><td>1</td><td>1</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>4</td><td>diaporthe</td><td>3</td><td>0</td><td>2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>2</td><td>1</td><td>2</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>5</td><td>diaporthe</td><td>3</td><td>0</td><td>2</td><td>1</td><td>0</td><td>1</td><td>0</td><td>2</td><td>0</td><td>1</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>6</td><td>diaporthe</td><td>6</td><td>0</td><td>2</td><td>1</td><td>0</td><td>2</td><td>0</td><td>1</td><td>0</td><td>2</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>7</td><td>diaporthe</td><td>5</td><td>0</td><td>2</td><td>1</td><td>0</td><td>3</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>8</td><td>diaporthe</td><td>5</td><td>0</td><td>2</td><td>1</td><td>0</td><td>2</td><td>0</td><td>1</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>9</td><td>diaporthe</td><td>4</td><td>0</td><td>2</td><td>1</td><td>1</td><td>1</td><td>0</td><td>1</td><td>0</td><td>2</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td>10</td><td>diaporthe</td><td>6</td><td>0</td><td>2</td><td>1</td><td>0</td><td>3</td><td>0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>0</td><td>2</td><td>2</td><td>0</td><td>0</td></tr><tr><td rowspan="16">11</td><td rowspan="16" colspan="18">diaporthe- 6</td></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图11-5 Soybean.csv文件（部分）


Soybean数据集的所有特征属性说明如下。

class：类别标签，表示每个样本所属的类别，通常用于分类任务。

date：数据记录的日期或时间戳，用于跟踪数据采集的时间。

plant.stand：大豆植株的生长状态或植株的立场。

precip：观察期间的降水量或降雪量。

temp：观察期间的气温。

hail：是否有冰雹发生。

crop.hist：大豆作物的历史或种植历史情况。

area.dam：植株所在地区的损坏程度。

sever：植株的损坏严重性。

seed.tmt：种子处理情况。

germ：大豆种子的发芽情况。

plant.growth：大豆植株的生长状态。

leaves：大豆植株叶子的数量。

leaf.halo：叶子周围的光环或边缘情况。

leaf.marg：叶子的边缘状态或特征。

leaf.size：叶子的大小。

leaf.shread：叶子的撕裂或损坏情况。

leaf.malf：叶子的异常情况。

leaf.mild：叶子的疾病或病害情况。

stem：植株茎的信息。

lodging：植株倾斜或倒伏情况。

stem.cankers：植株茎上的病变情况。

canker.lesion：茎上的病变病灶情况。

fruiting.bodies：产生水果体的情况。

ext.decay：外部腐烂情况。

mycelium：真菌丝状体的情况。

int.discolor：内部褪色或变色情况。

sclerotia：硬块体的情况。

fruit.pods：水果荚的信息。

fruit.spots：水果上的斑点情况。

seed：种子的信息。

mold.growth：霉菌生长情况。

seed.discolor：种子的褪色或变色情况。

seed.size：种子的大小。

shriveling：植株或种子的皱缩情况。

roots：植株根部的信息。

读取的数据代码如下。

```python
# 导入 pandas 模块
import pandas as pd
# 读取 CSV 文件
# 读取 Soybean 数据集
data = pd.read_csv('data/Soybean.csv')
data
```

上述代码的运行结果如图11-6所示。

<table><tr><td></td><td>class</td><td>date</td><td>plant.stand</td><td>precip</td><td>temp</td><td>hail</td><td>crop.hist</td><td>area.dam</td><td>sever</td><td>seed.tmt</td><td>...</td><td>int.discolor</td><td>sclerotia</td><td>fruit.pods</td><td>fruit.spots</td><td>seed</td><td>mold.growth</td></tr><tr><td>0</td><td>diaporthe- stem- canker</td><td>6.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>1</td><td>diaporthe- stem- canker</td><td>4.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>2</td><td>diaporthe- stem- canker</td><td>3.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>3</td><td>diaporthe- stem- canker</td><td>3.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>4</td><td>diaporthe- stem- canker</td><td>6.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>678</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>679</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>680</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>681</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>682</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>


图11-6运行结果（部分）


## 11.2.2 步骤2：清洗数据

仔细查看运行结果，会发现其中有很多NA数据，这些数据需要清洗，示例代码如下。

```python
data = pd.read_csv('data/Soybean.csv', dtype={'precip': float, 'temp': float})  
# 填充数值特征的空值  
for col in data.columns:  
    if data[col].dtype != 'object': median = data[col].median()  
    data[col].fillna(median, inplace=True)  
# 填充类别特征的空值  
data = data.fillna('Unknown')  
data
```

上述代码的运行结果如图11-7所示。

<table><tr><td></td><td>class</td><td>date</td><td>plant.stand</td><td>precip</td><td>temp</td><td>hail</td><td>crop.hist</td><td>area.dam</td><td>sever</td><td>seed.tmt</td><td>...</td><td>int.discolor</td><td>sclerotia</td><td>fruit.pods</td><td>fruit.spots</td><td>seed</td><td>mold.growth</td></tr><tr><td>0</td><td>diaporthe-stem-canker</td><td>6.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>1</td><td>diaporthe-stem-canker</td><td>4.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>2</td><td>diaporthe-stem-canker</td><td>3.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>3</td><td>diaporthe-stem-canker</td><td>3.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>4</td><td>diaporthe-stem-canker</td><td>6.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>678</td><td>2-4-d-injury</td><td>0.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>679</td><td>herbicide-injury</td><td>0.0</td><td>1.0</td><td>2.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>680</td><td>herbicide-injury</td><td>2.0</td><td>1.0</td><td>2.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>681</td><td>herbicide-injury</td><td>0.0</td><td>1.0</td><td>2.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>3.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>682</td><td>herbicide-injury</td><td>2.0</td><td>1.0</td><td>2.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>3.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td colspan="18">683 rows × 36 columns</td></tr></table>


图11-7运行结果


## 11.2.3不同大豆品种的样本数量分布柱状图

根据不同大豆品种样本数量分布的柱状图，我们可以熟悉和了解以下几个方面的内容。

（1）数据集中的大豆品种构成：通过查看柱状图的横轴和柱子数量，可以了解数据集中包含了哪些大豆品种，共有多少种大豆品种。

（2）每个品种的样本量：柱状图直观显示了每个品种对应的样本数量的多少，可以快速对比不同品种的样本量。

（3）样本数量的分布情况：看柱状图的柱子高度分布，来判断数据集中不同品种的样本数量分布是否均匀，存在哪些数据分布不平衡的情况。

示例代码如下。

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 数据处理
...
plt.figure(figsize=(10, 8))
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})

ax = sns.countplot(x="Class", data=data)
ax.set_xticklabels(ax.get_xticklabels(), rotation=40, ha="right")

ax.set_xlabel('大豆品种')
ax.set_ylabel('样本数量')
ax.set_title('不同大豆品种的样本数量分布')
```

运行上述代码，生成的柱状图如图11-8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4b54f3388ba336d5b4400c0c05d54ce3ba30ce237e5ebd5df3bdddef45211d63.jpg)



图11-8 不同大豆品种的样本数量分布柱状图


## 11.2.4 叶边缘、撕裂、畸形三者相关性分析

对大豆的叶边缘（leaf.marg）、撕裂（leaf.shread）和畸形

（leaf.malf）三个特征相关性的研究，可以帮我们解决如下问题。

（1）探索植物发育机理：研究不同叶片特征的相关性，可以揭示植物发育过程中的内在关联，理解不同生理症状的成因机制。

（2）评估生长环境和处理的影响：比较同一植株在不同生长环境或处理条件下这三个特征的相关性变化，可以评估外界条件对植物发育的影响。

（3）为进一步研究提供方向：相关性的差异可提示需要进一步研究的问题，如探究相关性变化的具体机制。

（4）发现新现象：相关性分析可能发现植物学界尚未注意到的特征关联，为进一步的新发现提供线索。

示例代码如下。

```python
import seaborn as sns
import matplotlib.pyplot as plt

# 设置中文字体和负号正常显示
plt.rcParams['font.family'] = ['SimHei']
plt.rcParams['axes.unicode_minus'] = False

# 选择数据
columns = ['leaf.marg', 'leaf.shread', 'leaf.malf']
sub_data = data[columns]

# 计算相关性矩阵
corr_matrix = sub_data.corr()

# 绘制热力图
fig, ax = plt.subplots(figsize=(6, 6))
sns.heatmap(corr_matrix,
    annot=True,
    cmap='Blues',
    ax=ax)

# 设置标签
ax.set_title('叶片特征相关性')
ax.set_xlabel('特征')
ax.set_ylabel('特征')

plt.show()
```

运行上述代码，生成的热力图如图11-9所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/6d287f448e4a9b16e467f7a5c19822b6ced65bef09c83c1f860069d753dfe687.jpg)



图11-9 叶边缘、撕裂、畸形三者相关性热力图


## 11.2.5 计算产量指数

为了比较不同大豆品种在某一属性指标上的差异，我们需要考察大豆的产量。然而，原始数据集中没有直接的产量这一数值列，所以我们可以使用与产量相关的多个特征来合成一个产量指数，从而反映不同品种的产量水平。这里选择了三个特征。

（1）fruit.pods：果实豆荚数，反映产量多少。

（2）seed：种子数，也和产量相关。

（3）fruit.spots：果斑病症状，可能影响产量。

然后给每个特征赋予一个权重。

（1）fruit.pods： 果荚数，直接反映产量水平，所以给了较高的权重0.5。

（2）seed：种子数，也是产量的关键指标，给了权重0.3。

（3）fruit.spots：果实斑点病症状，采用负权重-0.2，因为该特征与产量为负相关。

计算产量指数的代码如下。

```python
import pandas as pd
data = pd.read_csv('data/Soybean.csv', dtype={'precip': float, 'temp': float}) 
```

```python
for col in data.columns:
    if data[col].dtype != 'object':
    median = data[col].median()
    data[col].fillna(median, inplace=True)

# 填充类别特征的空值
data = data.fillna('Unknown')

# 构建产量指数
data['yield_index'] = data['fruit.pods'] * 0.5 + data['seed'] * 0.3 - data['fruit.spots'] * 0.2
data
```

运行上述代码，输出结果如图11-10所示，可见增加了yield_index列。

<table><tr><td>temp</td><td>hail</td><td>crop.hist</td><td>area.dam</td><td>sever</td><td>seed.tmt</td><td>...</td><td>sclerotia</td><td>fruit.pods</td><td>fruit.spots</td><td>seed</td><td>mold.growth</td><td>seed.discolor</td><td>seed.size</td><td>shriveling</td><td>roots</td><td>yield_index</td></tr><tr><td>1.0</td><td>0.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>-0.8</td></tr><tr><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>-0.8</td></tr><tr><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>1.0</td><td>...</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>-0.8</td></tr><tr><td>1.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>-0.8</td></tr><tr><td>1.0</td><td>0.0</td><td>2.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>4.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>-0.8</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>1.0</td><td>0.0</td><td>2.0</td><td>2.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>1.5</td></tr><tr><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>1.5</td></tr><tr><td>0.0</td><td>0.0</td><td>1.0</td><td>3.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>1.5</td></tr><tr><td>0.0</td><td>0.0</td><td>1.0</td><td>3.0</td><td>1.0</td><td>0.0</td><td>...</td><td>0.0</td><td>3.0</td><td>0.0</td><td>0.0</td><td>0. 0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>1.0</td><td>1.5</td></tr></table>


图11-10 输出结果


## 11.2.6 不同大豆品种在产量上的差异

我们可以通过箱线图来分析不同大豆品种的产量差异。箱线图同样适用于比较不同品种在产量指标上的差异，主要可以从以下几个角度进行分析。

（1）比较中位数线：中位数线较高的品种产量水平较高。

（2）对比四分位距：四分位距表示产量的波动范围，可以看出品种间变异程度的差异。

（3）观察异常值：可以发现产量特别高或低的样本。

综合这几个角度，箱线图也可以清晰直观地显示不同大豆品种间在产量分布和变异方面的差异。

示例代码如下。

```python
sns.set_style('darkgrid', {'font.sans-serif': ['SimHei', 'Arial']})  
# 先设置 figure 尺寸  
plt.figure(figsize=(10, 8))  
# 然后绘制箱线图  
ax = sns.boxplot(x='Class', y='yield_index', data=data)  
# 其他自定义设置  
plt.setp(ax.get_xticklabels(), rotation=90)  
ax.set_title('不同大豆品种的产量指数箱线图')  
# 保存图片  
plt.savefig('boxplt.png', dpi=300)  
plt.show()
```

运行上述代码，生成的箱线图如图11-11所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/5b9c8d1c06e5ba1c3d18284389e1be4080d746942eac89f6ab464d67fca77ba7.jpg)



图11-11不同大豆品种的产量指数箱线图


## 11.2.7大豆产量影响因素分析散点矩阵图

大豆是重要的经济作物，其产量受诸多因素的影响。为了分析影响大豆产量的关键因素，我们采用了多变量可视化分析的方法——散点矩阵图，同时展示了影响产量的多个因素之间的关系。多变量关系的全面可视化可以揭示产量变化的内在机制。本节通过Python代码绘制了大豆产量数据集的散点矩阵图，根据气候、土壤等不同类别因素，观察它们与产量指数的相关分布。分析结果发现，降水量和温度等气候因素是影响产量的主要限制因素，而土壤的透水性和肥力也有显著影响。我们还发现，温度和降水的交互作用会加剧产量的波动。

通过可视化分析，确定了影响大豆产量的关键环境因子及其机制，为改善产量水平提供了指导。

示例代码如下。

```python
选择特征
num_features = ['precip', 'temp', 'yield_index']
绘制散点矩阵图
sns.pairplot(data[num_features], kind='scatter', diag_kind='kde')
设置标题并显示图形
plt.suptitle('大豆产量影响因素分析散点矩阵图', y=1.05)
plt.tight_layout()
plt.show()
# 保存图片
plt.savefig('boxplt.png', dpi=300)
```

主要代码的解释如下。

代码第①行选择3个有代表性的特征，即precip（降水量）、temp（气温）和yield_index（产量指数），它是一个1～5之间的连续数值，值越大代表产量越好。

代码第②行使用sns.pairplot函数绘制散点矩阵图，其中kind='scatter'指定绘制散点图，diag_kind='kde'指定用对角线绘制每个特征的核密度估计图。

运行上述代码，生成的散点矩阵图如图11-12所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/18f80164e1662c27c1e372dd357057fa965dd334d46de1f1d0b6f1da25994797.jpg)



图11-12 散点矩阵图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4ae21927f24ddc4d5c04941cdabe3183e30b10cae99277d1fea45f1b953a6912.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/c7ed3e30dde5048a80076027017e3539c42883590a75d005328a00a43620033f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4c753cd6d3c63860a398f8fdffd707eff74abe90973e4f46aaae511f941bfe6f.jpg)



图11-12 散点矩阵图（续）


从图11-12所示的散点矩阵图中我们分析的结果如下。

（1）从对角线的核密度图可以看出，降水量、温度和产量指数总体上都是右偏的分布。

（2）从降水量和温度的散点图可以看出，两者之间存在正相关，高温、高降水分布在图的右上部。

（3）从降水量和产量指数的散点图可以看出，两者之间存在较强的正相关，更多的高降水样本对应更高的产量指数。

（4）从温度和产量指数的散点图也可以看出，两者之间存在正相关，但相关性不如降水量强。

（5）综合来说，降水量是影响产量最关键的气候因素，温度的影响次之。两者结合会增强对产量的影响。

（6）根据正相关分布，我们可以采取增加降水量和适度控制温度的措施来提高大豆产量。

## 11.2.8不同大豆品种在产量上的差异峰峦图

通过绘制不同大豆品种在产量上的差异峰峦图，可以帮助我们可视化不同大豆品种之间的产量分布，并显示它们之间的差异。

示例代码如下。

```python
import numpy as np
import pandas as pd
import joypy
from matplotlib import pyplot as plt
import seaborn as sns

# 使用 Seaborn 调色板生成鲜艳的颜色
cmap = sns.color_palette("husl", as_cmap=True)

# 创建峰峦图
fig, axes = joypy.joyplot(data, by='Class', column='yield_index', figsize=(10, 8), colormap=cmap) ①

# 设置图表标题和标签
plt.title('不同大豆品种的产量分布 Joyplot')
```

```python
plt.xlabel('产量指数 (yield_index)')

# 保存峰峦图为图片文件
plt.savefig('joyplot.png', dpi=300, bbox_inches='tight') # 将文件保存为PNG格式，dpi指定分辨率，bbox_inches='tight'用于确保图像边界适应图表

# 显示图形（如果需要）
plt.show()
```

主要代码的解释如下。

代码第①行使用joypy.joyplot()函数用于创建峰峦图。以下是该函数的各个参数的说明。

data：要绘制的数据集，通常是一个DataFrame对象。这是要可视化的数据。

by：指定数据分组的列，通常是一个分类变量。在峰峦图中，每个不同的分组将在同一图表中生成一条密度分布曲线。在代码中，by='Class' 表示根据 “Class” 列的不同取值来分组数据。

column：指定要在峰峦图中显示的数值列。在代码中，column='yield_index' 表示要显示 “yield_index” 列的数据分布。

figsize：一个元组，指定生成图表的尺寸。元组的两个值分别表示图表的宽度和高度。在代码中，figsize=(10, 8) 意味着生成的图表尺寸宽度为10个单位、高度为8个单位。

colormap：用于指定颜色映射的参数。颜色映射将应用于不同分组的密度分布曲线，以区分它们。在代码中，colormap=cmap 使用了之前创建的 cmap 颜色映射对象。

运行上述代码，生成的图形如图11-13所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/04ceb0278d429457dc59341bdf99dcfc3c2cb9dc01610fc53af8db5e4cb2a729.jpg)



图11-13 不同大豆品种在产量上的差异峰峦图


## 11.3 本章总结

本章提供了两个实际案例，展示了如何应用数据分析和可视化技巧来解决实际问题。首先，我们深入研究了X药品治疗效果的评估案例，包括数据准备、假设检验、结果解释和可视化。接着，我们转向了美国大豆品种数据集的可视化分析，包括数据准备、清洗数据、样本数量分布柱状图、相关性分析、计算产量指数、产量差异分析、散点矩阵图和峰峦图。这些案例展示了如何在实际问题中运用数据科学的方法，为读者提供了宝贵的实践经验。通过本章的学习，我们将更好地理解数据分析的实际应用和技巧，以及如何用它们来解决复杂问题。

## 附录 科研论文中图表的绘制与配色

在科研论文中，图表的绘制和配色是至关重要的，它们直接影响了论文的质量和可读性。以下是一些关于科研论文图表绘制和配色的基础指导。

## 1.1选择合适的图表类型

以下是一些常见的图表类型及它们适用的情况。

## 1. 柱状图

用于比较不同类别或项目之间的数量。

适用于离散数据，如产品销售额、城市人口等。

## 2. 线图

用于显示随时间变化的数据趋势。

适用于连续数据，如股票价格、气温变化等。

## 3. 散点图

用于显示两个变量之间的关系或相关性。

适用于查看数据的分布和离群点。

## 4. 饼图

用于显示各部分相对于整体的比例。

适用于表达占比，但要注意避免使用过多的饼图。

## 5.箱线图

用于显示数据的分布和统计信息，如中位数、四分位数和离群点。

适用于比较多个数据集的分布。

## 6. 热力图

用于显示矩阵数据的关系，通常通过颜色来表示数值。

适用于展示相关性或模式。

## 7. 雷达图

用于比较多个项目在多个维度上的性能。

适用于多维数据的可视化。

## 8. 直方图

用于显示数据的分布情况，特别是数据的频率分布。

适用于了解数据的形状和中心趋势。

## 9. 地图

用于地理数据可视化，显示地区的数据差异。

适用于地理空间分析和定位数据。

在选择图表类型时，需要考虑数据的性质、表达的目的及受众的需求。同时，也要注意避免滥用某种图表类型，确保图表的设计能够有效传达信息。

例如，为了比较不同产品销售额，我们可以使用如附图1-1所示的柱状图。每个产品对应一个条形，销售额在纵轴上表示。这种图表类型清晰地比较了不同产品的销售额。

附图1-2所示是用饼图来比较不同地区的销售额。由于饼图通常用于显示占比数据，而不适用于对不同类别之间的数量进行直接比较。因此，当我们需要精确对比各个扇区代表的销售额时，饼图可能不是最佳选择。


不同产品的销售额比较


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/aadc18114d9d78704eb249f91d0195f121e15981a0fd02cef609d8a23d977a64.jpg)



附图1-1 柱状图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/430daaf7b1c45281fa59927426b43b12d4763c122fb2fa5debfd17e69ae8714d.jpg)



附图1-2饼图


正确的方法是使用柱状图或条形图，因为它们可以清晰地显示不同地区之间的差异，更适合比较不同地区的销售额。

## 1.2善于把握色彩

善于把握色彩是非常重要的，正确使用色彩可以提高图表的可读性和吸引力。

## 1.2.1了解色彩的规律

无论我们能看到多少种色彩，实际上都是由三种颜色的光交映混合而成的，也就是我们所说的“光谱三原色”。而我们现在要讨论的色彩搭配理论知识建立在“物理三原色”的基础上（见附图1-3）。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/212253a36e5802172b841a3286485206e8623932b060e17c36a4fc3676852d4f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/845a8abb4f920e614b1448f6ab1524b671da6b86b5356ae33f41a633278444c0.jpg)



附图1-3色彩的三原色


红、绿、蓝三原色之间相互独立而又密切相关，它们可以相互混合、过渡。我们将这三种颜色及它们之间的渐变称为色相环（见附图1-

4）。色相环包含了所有可能的颜色，但仅限于颜色的基本属性。这个色相环是我们日后进行科研论文配图中的颜色选择和搭配的重要参考工具和样本。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/59137e683880b8fa36021a960749a84d4f3d97b7486ca4e99195ceb3dd9abfed.jpg)



附图1-4 色相环的形成


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/b3386c53aaa0f916705e97c4a44179aa362b3acd9f25be0f4acbea257b9641b1.jpg)



附图1-5 Photoshop里的“色相/饱和度”工具


色相环上的每一个色相都有两个发展趋势：一个是明暗变化，即逐渐变亮成为白色或逐渐变暗成为黑色；另一个是纯度（也称饱和度）变化，就是逐渐褪色变成灰色。我们可以通过Photoshop里的“色相/饱和度”工具来操作（见附图1-5）这两个属性。这样，我们就得到了一个球状立体的色谱，我们把它称为“色立体”，如附图1-6所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/b7149801b95a1235c027d29475699ff722b5b050ec62ff8281227c92440ae446.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/f209a416938784efb1c9ee990ce44094b28ffd7afa7acd43dd71b0da44b6cbf2.jpg)



附图1-6色立体


掌握色彩立体的诀窍，就是以色相环为基础，所有的颜色在向圆心发展的过程中经历纯度的逐渐减弱，也就是逐渐褪色变成灰色；向上发展逐渐增加明度变成白色，向下发展逐渐减少明度变成黑色。由于圆心的色彩已经完全褪去，成为白色到黑色的渐变，白色、黑色及它们之间过渡的各种灰色我们统称为“无彩色”。

## 1.2.2 控制色调

需要明确一个观点：配图的本质不在于添加颜色，而在于控制颜色。具体来说，在一个图表中，不是颜色越多越好看。颜色越多，往往会导致视觉混乱，不容易给读者留下深刻的印象。因此，在学习绘制图表和进行配色时最关键的是学会掌握色调。无论内容多么丰富多变，我们都应该将它们限制在一个特定的色彩范围内，以保持整个图表的风格一致性。只要能够做到这一点，我们的图表绘制和配色就成功了一半，因此色调的理念非常重要。

如果我们想在科研论文图表的配套中使用不同的颜色，可以考虑以下方法。

## 方法一：明度或纯度的调整

我们可以选择一种基础颜色，然后通过调整它的明度（变亮或变暗）或纯度（饱和度）来创建不同的配色方案。例如，从一种蓝色开始，可以创建深蓝、浅蓝、中等蓝等不同的色调来区分不同的数据集或元素。这种方法保持了色调的一致性，同时为图表提供了更多的视觉变化，如附图1-7所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/7b36b43506ab1d5b074764a93cbdb663311a8d66542e901727f26f2b9b977961.jpg)



附图1-7明度或纯度的调整


## 方法二：邻近色或相似色

另一种方法是使用邻近色或相似色。邻近色或相似色都是针对色相环而言的，顾名思义，就是在色相环上邻近的或相似的颜色，如附图1-8所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/04e52169339f33370a177466a3f172a8db69f9703aa9db963ed31bc16e06e2e4.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/bc7d9d5dfe19276bbe1144e3e56de70bef614b3ff4006bc4a961b331e24eccf9.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/78957632c107eedb198b60eb8a513e0454a1991bc2faa801ea43dd701b72561c.jpg)



附图1-8邻近色或相似色


邻近色一般在色相环上挨得比较近，因此色彩的差异比较小。

相似色就相对来说远一点，色彩差异比邻近色大一些。由于在色相环上的位置彼此接近，这些颜色看上去比较相像。这意味着选择色相环上接近或相似的颜色来进行配色。例如，我们可以选择蓝色和绿色，它们在色相环上是相邻的，以表示不同的数据集或元素，如附图1-9所示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/d4875482317082f5cdadffbaf4ade4752266ca20238ea94b31ed6560c58aa185.jpg)



附图1-9邻近色或相似色


## 1.3 字体和字号

在科研论文图表中，通常需要遵循一定的字体和字号规范，以确保图表的一致性和可读性。以下是一些常见的字体和字号规范。

## 1.3.1 主标题 （图表标题）

主标题通常使用粗体字，字号一般为14号或更大，以突出图表的主题。示例如下。

主标题：14号粗体无衬线字体

## 1.3.2 坐标轴标签

坐标轴标签包括X轴标签和Y轴标签，字号通常为12号，使用无衬线字体，以确保标签清晰可读。示例如下。

X轴标签：12号无衬线字体

Y轴标签：12号无衬线字体

## 1.3.3 刻度标签

刻度标签是坐标轴上的数字或标记，字号通常为10号，使用无衬线字体，以清晰表示数值。示例如下。

刻度标签：10号无衬线字体

## 1.3.4 图例

图例包括图表中不同元素的标签，字号通常为12号，使用无衬线字体，以区分不同的元素。示例如下。

图例文本：12号无衬线字体

图例标题：12号无衬线字体

## 1.3.5 数据标注

如果图表中需要添加数据标注，字号通常应该比刻度标签稍大，以确保数据标注的可读性。示例如下。

数据标注：通常与刻度标签相近，根据需要可以略大于刻度标签。

## 1.4 标注清晰


科研论文示例柱状图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/9b577eda5790b25cfd9b0ee3ed1384d1a6659fe765ce79b64256f71ddc51522c.jpg)



数据来源：示例数据集


附图1-10 清晰标注的柱状图

图表上的每一个元素都需要标注清晰，包括标题、轴标签、图例

等，以确保自解释性。附图1-10就是带有清晰标注的柱状图。

## 1.5 分辨率足够

图表的分辨率最好在300～600dpi，以确保阅读和打印效果出色。使用矢量图形格式，以允许图像缩放而不失真。

## 1.6 布局规整

确保图表的布局规整，图表占比适中，边距充足，文字和图形排列紧凑但不拥挤，给人整洁美观的感觉。

为了确保科研论文图表的高分辨率和布局规整，我们可以使用以下方法。

（1）设置图像分辨率：在保存图表时，可以设置分辨率为300～600dpi，以确保图像在打印和显示时具有良好的清晰度。

（2）使用矢量图形格式：推荐使用矢量图形格式，如PDF或SVG，以允许图像缩放而不失真。矢量图形基于数学描述，可以在不损失质量的情况下缩放到任意大小。

（3）调整图表布局：确保图表的布局规整，包括适当的边距、文字和图形的合理排列，以及整洁美观的感觉。

（4）控制图表大小：在保存图表时，通过设置图表的宽度和高度来控制图表的大小。确保图表占比适中，不要过于拥挤或过于稀疏。

## 1.7 风格一致

科研论文强调图表元素的一致性和清晰度。以下是一些关于如何绘制符合风格一致的科研论文图表的建议。

（1）颜色一致性：在图表中使用一致的颜色方案，以表示不同的数据系列或图表元素。可以使用明亮的颜色来突出重要信息，但不要过分使用鲜艳的颜色。

（2）线条一致性：如果需要在图表中使用线条，应确保线条的类型（如实线、虚线、点线等）和粗细一致。例如，在折线图中，使用相同类型和宽度的线来表示不同的数据系列。

（3）字体一致性： 使用一致的字体风格和大小来标记图表元素，包括坐标轴标签、图例、数据标签等。字体应该足够大，以便于阅读，但不要太大以至于影响图表的清晰度。

（4）标记一致性：如果在图表中标记数据点或特殊事件，请使用一致的标记符号（如圆圈、方块、三角形等）。确保标记的大小和颜色在整个图表中一致。

（5）坐标轴一致性：在不同的图表中使用一致的坐标轴标度和刻度。这有助于比较不同图表中的数据。

（6）背景一致性： 考虑使用白色或淡色的背景，以减少干扰并提高图表的可读性。整个文档的背景颜色应一致。

（7）图例一致性：如果使用图例来标识数据系列，请确保图例的位置、样式和字体一致。图例应该清晰地说明每个数据系列的含义。

（8）图表尺寸一致性：如果在同一篇论文中使用多个图表，请尽量保持它们的尺寸一致，以便于比较。

（9）避免过度装饰：确保图表简洁清晰，避免不必要的装饰。每个元素都应有明确的目的。

（10）测试可打印性：在提交论文之前，确保图表在打印时保持清晰和可读。打印时可能会出现颜色问题，因此要确保图表在黑白打印时也具有良好的可读性。

最重要的是，在绘制科研论文图表时，始终考虑读者的理解和传达信息的有效性。确保图表清晰、简洁且一致，以帮助读者更好地理解你的研究成果。

## 封底

## 巧用科研利器，成就科研达人

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/1b918011cfe81b320dfc5ddbbae62b95a14fefed34f8a6252345acc3fb0f1e79.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/3c27a304a68277ce9eb70c77fce37c2dcd710eae95634d825b302cc3e7649d59.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/dc8fba335c4e280ef0e7e8a05ed425b521546340fbc7980880e8b47ae704d60c.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/54f46ee71561325a51f176682220a0de636db8f413063a6f2bf769fd23f0179a.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/c664f3c9ee41b8e0098fb8dbce72994d293d5a1916b671067b493674b7bf08e8.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/05dc990c9aee4ec6e032af52427c962cfb7a3b996c97de8e27b1d0d1ea538313.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/1680ff9708486a96ac507552d5ce40d262e92a066ae9c2496de76b029d01eead.jpg)



资源下载


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/e41c30aba75c32e420feff92f0cb298c595348d339e67a5ea775e8843958db0c.jpg)



“北京大学出版社”微信公众号


上架建议：计算机/科研绘图

ISBN 978-7-301-34962-5 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/4c006c5c16c6d3b3d0759efb614f1d404d4f359a61e5d005fe13d46eb5e9490c.jpg)



定价：109.00元


## P ython

## 科研绘图

Scientific Research Drawing and Academic Chart Drawing in Python Language 

from Entry to Proficiency 

## 与学术图表绘 牛山

入门到精通

关东升◎编著

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-14/3ab1ef4e-c0e8-40a0-a717-c9d760272f99/eea9ae94515b8d05120ba2bd4957edbe49f733eb370c88a438f5b0863c1873c4.jpg)
