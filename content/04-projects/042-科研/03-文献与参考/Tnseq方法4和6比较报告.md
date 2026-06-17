# 统计分析报告

**主题：4法与6法分析结果对比**

---

## 一、分析目的

本报告旨在比较两种不同分析方法（4法与6法）在同一批数据下的结果差异，评估方法选择对分析结果的影响和偏差大小。通过皮尔逊相关系数、平均绝对误差（MAE）和差异分布等统计指标，量化两种方法结果的一致性和差异性。

---

## 二、统计方法定义

### 1. 皮尔逊相关系数（Pearson Correlation Coefficient）

- **定义**：衡量两个变量线性相关程度的统计量，取值范围为 -1 到 1。
    - 1 表示完全正相关，-1 表示完全负相关，0 表示无线性相关。
- **意义**：相关系数越接近 1，说明两种方法结果越一致；越接近 -1，说明结果越相反。

### 2. 平均绝对误差（MAE, Mean Absolute Error）

- **定义**：两组数据对应值之差的绝对值的平均数。
    - 公式：MAE = mean(|A - B|)
- **意义**：MAE 越小，说明两种方法的结果越接近；MAE 越大，说明差异越大。

### 3. 差异分布（Difference Distribution）

- **定义**：两种方法在每个条件下的结果差（4法-6法）的分布情况。
- **意义**：可以直观了解差异的集中趋势和离散程度，判断是否存在系统性偏差。

---

## 三、结果展示与解读
## 0 存放位置
"F:\python代码\analysis_results.png"
![[Obsidian/analysis_results.png]]
这张图包含三个部分，分别展示了两个算法在不同条件下的皮尔逊相关系数、平均绝对误差（MAE）以及 logFC-B2-P 条件下差异分布的具体情况。

### 皮尔逊相关系数部分
- **横轴**：表示皮尔逊相关系数（Pearson Correlation），取值范围在-1到1之间。接近1表示正相关，接近-1表示负相关，接近0表示无线性相关。
- **纵轴**：表示不同的条件（Condition），如 logFC-B2-P、logFC-B3-P 等，每个条件对应一种特定的实验处理或数据状态。
- **柱状图**：每个条件对应一个柱子，柱子的长度表示该条件下两个算法之间的皮尔逊相关系数大小。颜色可能用来区分不同条件或表示其他相关信息。

###平均绝对误差（MAE）部分
- **横轴**：表示平均绝对误差（Mean Absolute Error, MAE），用于衡量两个算法预测值与实际值之间的平均绝对差异，值越小表示预测越准确。
- **纵轴**：同样表示不同的条件（Condition）。
- **柱状图**：展示了每个条件下两个算法的 MAE 值，帮助比较不同条件下的预测误差大小。

### 差异分布部分
- **横轴**：表示两个算法在 logFC-B2-P 条件下的差异（Difference），即算法1与算法2的预测值之差。
- **纵轴**：表示这些差异出现的频次（Count）。
- **直方图**：展示了差异的分布情况，形状可以反映数据的集中趋势和离散程度。比如图中显示数据大致呈正态分布，大多数差异集中在0附近，说明两个算法在该条件下的预测结果较为接近。

整体而言，这张图用于比较两个算法在不同条件下的相关性和预测误差，并展示了特定条件下的预测差异分布，帮助评估算法性能和一致性。

### 1. 皮尔逊相关系数

|Condition|Pearson Correlation|
|---|---|
|logFC-B2-P|0.64|
|logFC-B3-P|0.71|
|...|...|
|logFC-eggK5-P|-0.57|

- **解读**：大部分条件下相关系数为正，说明两种方法结果整体一致性较好。部分条件（如 logFC-eggwhite-mean、logFC-eggK2-P 等）为负，说明在这些条件下两种方法结果存在较大差异甚至方向相反。

### 2. 平均绝对误差（MAE）

|Condition|MAE|
|---|---|
|logFC-B2-P|0.44|
|logFC-B3-P|0.25|
|...|...|
|logFC-eggK5-P|0.32|

- **解读**：MAE 数值普遍较小，说明大多数条件下两种方法的结果差异有限。个别条件 MAE 较大，需关注这些条件下的分析差异。

### 3. 差异分布

- **解读**：通过直方图和核密度曲线，可以看到大部分差异集中在 0 附近，说明两种方法没有系统性偏差。但也存在极端值，提示个别样本差异较大。

---

## 四、结论与建议

1. **整体一致性**：大部分条件下，4法与6法结果高度相关，说明两种方法在绝大多数情况下是可靠且一致的。
2. **局部差异**：个别条件下相关系数为负或 MAE 较大，提示在这些条件下两种方法的结果存在较大分歧，建议进一步检查原始数据或分析流程。
3. **方法选择建议**：如对一致性要求高，可任选其一；如关注特定条件，建议优先分析差异较大的条件，或结合领域知识进一步判断。

---

## 五、如何解读本报告

- **相关系数高（接近1）+ MAE低**：两方法结果一致，可互换。
- **相关系数低或为负 + MAE高**：两方法结果差异大，需关注原因。
- **差异分布极端值**：关注异常样本或条件，排查数据或方法问题。

---

## 六、附录

- **统计方法代码**：见项目代码文件。
- **数据说明**：所有分析均基于 [4and6method-blank.xlsx](vscode-file://vscode-app/c:/Users/zhangyi/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 文件 Sheet1-4method 与 Sheet2-6method。
- **可视化结果**：详见 [analysis_results.png](vscode-file://vscode-app/c:/Users/zhangyi/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html)。

---

## 七、参考文献

- [皮尔逊相关系数 - 维基百科](vscode-file://vscode-app/c:/Users/zhangyi/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html)
- [平均绝对误差 - 维基百科](vscode-file://vscode-app/c:/Users/zhangyi/AppData/Local/Programs/Microsoft%20VS%20Code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html)