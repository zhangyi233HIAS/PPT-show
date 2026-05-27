# Wiki Schema

## Domain
生物信息学、生物统计学与生物医学实验知识库

## 覆盖领域
- **生物信息学**: 基因组学、转录组学、蛋白质组学、系统生物学、序列分析、变异检测
- **生物统计学**: 实验设计、假设检验、多变量分析、生存分析、贝叶斯统计
- **生物医学实验**: 分子生物学技术、细胞培养、动物模型、临床研究、药理毒理

## Conventions
- 文件名: 小写，连字符分隔，无空格 (例: `rnaseq-differential-expression.md`)
- 每个 wiki 页面以 YAML frontmatter 开头 (见下方)
- 使用 `[[wikilinks]]` 链接页面 (每个页面至少 2 个出站链接)
- 更新页面时，始终更新 `updated` 日期
- 每个新页面必须添加到 `index.md` 对应部分
- 每个操作必须追加到 `log.md`
- **来源标记**: 在综合 3+ 来源的页面，在段落末尾添加 `^[raw/articles/source-file.md]`

## Frontmatter
```yaml
---
title: 页面标题
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: entity | concept | comparison | query | summary
tags: [从下方分类中选择]
sources: [raw/articles/source-name.md]
# 可选质量信号:
confidence: high | medium | low
contested: true
contradictions: [other-page-slug]
---
```

## Tag Taxonomy

### 生物信息学
- `bioinfo` - 通用生物信息学
- `genomics` - 基因组学
- `transcriptomics` - 转录组学
- `proteomics` - 蛋白质组学
- `metagenomics` - 宏基因组学
- `sequence-analysis` - 序列分析
- `variant-calling` - 变异检测
- `assembly` - 基因组组装
- `annotation` - 基因注释
- `phylogenetics` - 系统发育
- `network-analysis` - 网络分析

### 生物统计学
- `biostats` - 通用生物统计
- `experimental-design` - 实验设计
- `hypothesis-testing` - 假设检验
- `regression` - 回归分析
- `survival-analysis` - 生存分析
- `bayesian` - 贝叶斯统计
- `machine-learning` - 机器学习
- `visualization` - 数据可视化

### 生物医学实验
- `biomedical` - 通用生物医学
- `molecular-bio` - 分子生物学
- `cell-culture` - 细胞培养
- `animal-model` - 动物模型
- `clinical-research` - 临床研究
- `pharmacology` - 药理学
- `toxicology` - 毒理学
- `imaging` - 成像技术

### 方法与工具
- `tool` - 软件工具
- `pipeline` - 分析流程
- `database` - 数据库
- `algorithm` - 算法
- `workflow` - 工作流

### 元标签
- `comparison` - 对比分析
- `tutorial` - 教程
- `review` - 综述
- `landmark` - 里程碑研究
- `controversy` - 争议话题

## Page Thresholds
- **创建页面**: 当实体/概念出现在 2+ 来源中，或是一个来源的核心内容
- **更新现有页面**: 当来源提及已覆盖的内容
- **不创建页面**: 对于顺便提及、次要细节或领域外内容
- **拆分页面**: 当超过 ~200 行时，拆分为子主题并交叉链接
- **归档页面**: 当内容完全被取代时，移动到 `_archive/`

## Entity Pages
每个重要实体一个页面，包括:
- 概述 / 是什么
- 关键事实和日期
- 与其他实体的关系 ([[wikilinks]])
- 来源引用

## Concept Pages
每个概念或主题一个页面，包括:
- 定义 / 解释
- 当前知识状态
- 开放问题或争论
- 相关概念 ([[wikilinks]])

## Comparison Pages
并排分析，包括:
- 比较内容和原因
- 比较维度 (表格格式优先)
- 结论或综合
- 来源

## Update Policy
当新信息与现有内容冲突时:
1. 检查日期 — 新来源通常取代旧来源
2. 如果真正矛盾，注明两个立场及日期和来源
3. 在 frontmatter 标记矛盾: `contradictions: [page-name]`
4. 标记供用户审核

## Quality Standards
- **可重复性**: 记录所有分析参数和版本
- **可证伪性**: 明确假设和验证方法
- **来源追溯**: 所有声明必须有来源支持
- **时效性**: 标注信息的时效性
