# 核心问题解答：基因ID匹配与KEGG号转化

**日期**：2026年5月29日  
**分析文件**：`1206-2121法6合并stm-ko-tag-KO-input-v1.xlsx`

---

## ⚠️ 关键发现

**您并没有使用RAST进行注释！**

从数据来看，您的实际流程是：

```
NCBI RefSeq蛋白序列 → eggNOG-mapper → KEGG注释
```

而不是：

```
NCBI基因组 → RAST注释 → eggNOG-mapper → KEGG注释
```

---

## 一、Task1：基因ID是如何匹配到JI728_xxxxx格式的？

### 1.1 答案：根本没有"转换"，原始ID就是JI728_xxxxx

**证据**：

| 数据来源              | ID格式                    | 示例          | 文件                                    |
| ----------------- | ----------------------- | ----------- | ------------------------------------- |
| NCBI RefSeq FASTA | `locus_tag=JI728_xxxxx` | JI728_00005 | `R51-code-protein-fasta-sequence.txt` |
| eggNOG注释 Sheet1   | `query`列                | JI728_00005 | `1206-2121法6合并...xlsx` Sheet1         |
| Tn-seq数据 Sheet3   | `Gene ID`列              | JI728_00005 | `1206-2121法6合并...xlsx` Sheet3         |

**匹配逻辑**（脚本第126-143行）：

```python
# Sheet3的Gene ID（JI728_xxxxx）←→ Sheet1的query（JI728_xxxxx）
# 直接按ID字符串匹配，无需转换
for row in ws.iter_rows(min_row=2, ...):
    gene_id = cell.value  # "JI728_00005"
    if gene_id in gene_full_info:  # 在Sheet1中查找
        # 写入注释信息
```

**匹配结果**：
| 项目 | 数量 |
|------|------|
| Sheet1（eggNOG注释）基因数 | 4,270 |
| Sheet3（Tn-seq数据）基因数 | 4,336 |
| **成功匹配** | **4,024（92.8%）** |
| 未匹配（Sheet1有，Sheet3无） | 246 |
| 未匹配（Sheet3有，Sheet1无） | 312 |

### 1.2 您的实际流程（无RAST）

```
步骤1: 从NCBI下载RefSeq蛋白序列
       文件: R51-code-protein-fasta-sequence.txt
       ID格式: >lcl|CP068386.1_prot_WBB24758.1_1 [locus_tag=JI728_00005]
                                          ↑
                                    这就是JI728_xxxxx的来源！

步骤2: 提交蛋白序列到eggNOG-mapper（在线服务）
       输入: 蛋白FASTA（JI728_xxxxx在header中）
       输出: query列保留JI728_xxxxx

步骤3: 合并到Tn-seq数据
       Sheet1（eggNOG）: query = JI728_00005
       Sheet3（Tn-seq）: Gene ID = JI728_00005
       匹配方式: 直接字符串比较
```

### 1.3 导师问"为何重新注释一遍"

**您可能混淆了两件事**：

| 任务       | 工具            | 目的              | 是否有必要                 |
| -------- | ------------- | --------------- | --------------------- |
| **功能注释** | eggNOG-mapper | 获得KEGG/GO/COG注释 | ✅ 有必要（NCBI没有KEGG通路映射） |
| **基因预测** | RAST          | 预测基因位置          | ❌ 不必要（NCBI已有基因注释）     |

**正确回答**：

> "我没有用RAST重新预测基因。我用的是NCBI RefSeq已有的基因注释（JI728_xxxxx），只是通过eggNOG-mapper补充了KEGG通路映射。因为NCBI RefSeq没有KEGG通路注释，所以需要这一步。"

### 1.4 如果用"现成的"NCBI注释会怎样？

**现成的NCBI RefSeq注释**：

- ✅ 基因位置：已有（JI728_xxxxx）
- ✅ 蛋白序列：已有
- ✅ GO注释：部分有
- ❌ KEGG通路映射：**没有**（需要eggNOG或直接用KEGG Mapper）

**结论**：

- JI728_xxxxx基因ID **完全一致**（因为来源相同）
- KEGG通路映射 **必须额外做**（NCBI不提供）
- 您的做法是正确的，不是"重复注释"

---

## 二、Task2：KEGG号的转化是否正确？

### 2.1 转换逻辑分析

**KEGG_Pathway转换**（脚本第53-67行）：

```python
# 输入: "ko02020,ko04112,map02020,map04112"
# 提取5位数字: "02020", "04112"
# 添加stm前缀: "stm02020", "stm04112"
num_match = re.search(r'\d{5}', p)
if num_match:
    stm_id = f"stm{num_match.group(0)}"
```

**KEGG_ko转换**（脚本第84-86行）：

```python
# 输入: "ko:K02313"
# 去掉ko:前缀: "K02313"
k_val.replace('ko:', '')
```

### 2.2 实际数据验证

#### KEGG_Pathway列格式

| 统计项                      | 数量     |
| ------------------------ | ------ |
| 总条目数                     | 13,412 |
| `ko`前缀条目                 | 6,706  |
| `map`前缀条目                | 6,706  |
| **注意**：ko和map是同一个通路的两种表示 |        |

**示例**：

```
输入: ko02020,ko04112,map02020,map04112
↓
ko02020 → 02020 → stm02020 ✓
ko04112 → 04112 → stm04112 ✓
map02020 → 02020 → stm02020 ✓ (重复，set去重)
map04112 → 04112 → stm04112 ✓ (重复，set去重)
↓
最终: stm02020, stm04112
```

#### KEGG_ko列格式

| 统计项      | 数量          |
| -------- | ----------- |
| 总条目数     | 3,413       |
| `ko:K`前缀 | 3,413（100%） |
| 清洗后`K`前缀 | 3,413（100%） |

**示例**：

```
输入: ko:K02313
↓
输出: K02313 ✓
```

#### STM白名单匹配

| 统计项       | 数量        |
| --------- | --------- |
| STM白名单通路数 | 137       |
| 成功转换到白名单  | 11,596    |
| **不在白名单** | **1,816** |

**不在白名单的通路示例**：

- stm04216, stm05120, stm05133, stm00591, stm00983
- 这些通路在KEGG中有，但不在STM特异的白名单中

### 2.3 转换是否正确？

#### ✅ 正确的部分

| 项目                    | 结果                   |
| --------------------- | -------------------- |
| KEGG_Pathway → STM ID | ✅ 正确（提取5位数字，添加stm前缀） |
| ko和map去重              | ✅ 正确（使用set去重）        |
| KEGG_ko清洗             | ✅ 正确（去掉ko:前缀）        |
| STM白名单验证              | ✅ 正确（只保留白名单中的通路）     |

#### ⚠️ 潜在问题

| 问题               | 影响            | 严重程度    |
| ---------------- | ------------- | ------- |
| **1816个通路不在白名单** | 丢失部分通路信息      | 中       |
| **一个基因对应多个通路**   | 合并后通路数膨胀      | 低（正常）   |
| **一个通路对应多个基因**   | max_abs去重丢失信息 | 中（已知问题） |

### 2.4 如果导师问"KEGG号转化对吗"

**正确回答**：

> "KEGG号转化是正确的。eggNOG输出的KEGG_Pathway列格式是`ko02020,map02020`，我用正则提取5位数字，添加STM物种前缀`stm`，得到`stm02020`。然后与STM白名单（137个通路）比对，只保留有效通路。KEGG_ko列的`ko:`前缀也被正确去掉。不过有1816个通路不在STM白名单中，这些被过滤掉了。"

---

## 三、完整流程总结

### 3.1 您的实际流程（非RAST）

```
NCBI RefSeq (JI728_xxxxx)
    ↓ 蛋白序列
eggNOG-mapper (在线服务)
    ↓ 功能注释 (KEGG/GO/COG)
Sheet1: query=JI728_xxxxx, KEGG_Pathway=ko02020,...
    ↓ 按基因ID匹配
Sheet3: Gene ID=JI728_xxxxx, ovary=log2FC,...
    ↓ 合并
输出: 完整注释 + Tn-seq数据
```

### 3.2 关键数据

| 项目          | 数量            | 说明       |
| ----------- | ------------- | -------- |
| eggNOG注释基因数 | 4,270         | Sheet1   |
| Tn-seq数据基因数 | 4,336         | Sheet3   |
| 成功匹配        | 4,024（92.8%）  | 直接字符串匹配  |
| STM通路数      | 137           | 白名单      |
| KEGG通路条目    | 13,412        | ko+map   |
| 成功映射到STM    | 11,596（86.5%） | 在白名单中    |
| KEGG_ko条目   | 3,413         | 全部ko:K格式 |

---

## 四、回答导师的完整话术

### 导师问："为何重新注释一遍？"

> "老师，我没有用RAST重新预测基因。我的流程是：
> 
> 1. 直接使用NCBI RefSeq的蛋白序列（JI728_xxxxx格式）
> 2. 提交到eggNOG-mapper获得KEGG/GO/COG功能注释
> 3. 因为NCBI RefSeq本身不包含KEGG通路映射，所以需要eggNOG这一步
> 4. 注释结果的基因ID（JI728_xxxxx）与Tn-seq数据完全一致，直接匹配合并
> 
> 这不是'重复注释'，而是'补充KEGG通路注释'。"

### 导师问："基因号不会混乱吗？"

> "不会。因为：
> 
> 1. NCBI RefSeq蛋白序列的header已经包含locus_tag=JI728_xxxxx
> 2. eggNOG-mapper直接保留这个ID作为query列
> 3. Tn-seq数据也使用JI728_xxxxx作为Gene ID
> 4. 两边ID完全一致，直接字符串匹配，无需转换
> 5. 匹配率92.8%（4024/4336），未匹配的主要是eggNOG注释缺失的基因"

### 导师问："KEGG号转化对吗？"

> "对的。eggNOG输出的KEGG_Pathway格式是`ko02020,map02020`，我用正则提取5位数字，添加STM物种前缀得到`stm02020`，然后与STM白名单比对验证。KEGG_ko的`ko:`前缀也正确去掉了。有1816个通路不在STM白名单中被过滤，这些是非STM特异的通路。"

---

**报告保存位置**：`H:\hermesp-agent\10-chaos-rast\核心问题解答_基因ID匹配与KEGG号转化.md`