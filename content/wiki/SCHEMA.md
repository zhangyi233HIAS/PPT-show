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

## 概念路由规则 (Concept Routing)

新概念页面必须放入对应的学科子目录，不得放在 `concepts/` 根目录：

| 标签                                                                                                           | 目录                         |
| ------------------------------------------------------------------------------------------------------------ | -------------------------- |
| immunology, innate-immunity, adaptive-immunity, complement                                                   | `concepts-Immunology/`     |
| microbiology, pathogenesis, virulence, antibiotic-resistance, host-pathogen                                  | `concepts-Microbio/`       |
| transcriptomics, bioinfo, genomics, proteomics, metagenomics, sequence-analysis, assembly, annotation        | `concepts-Bioinformatics/` |
| biostats, experimental-design, hypothesis-testing, regression, survival-analysis, bayesian, machine-learning | `concepts-Biostatistics/`  |
| cell-culture, cell-signaling, cell-death, autophagy                                                          | `concepts-Cell/`           |
| genetics, mutation, epigenetics, population-genetics, linkage                                                | `concepts-Genetics/`       |
| molecular-bio, pcr, cloning, crispr, gene-expression                                                         | `concepts-Molecular/`      |
| biochemistry, enzyme-kinetics, metabolism, protein-structure                                                 | `concepts-Biochemistry/`   |
| ai, llm, deep-learning, nlp, computer-vision                                                                 | `concepts-AI/`             |

**路由流程:**
1. 确定概念的主要学科归属
2. 选择对应的 `concepts-{Subject}/` 子目录
3. 如无完全匹配，选最接近的学科；跨学科概念选主要学科
4. 文件名: 小写连字符分隔 (`kegg-pathway-analysis.md`)
5. 每个新概念页面必须添加 YAML frontmatter 和至少 2 个 wikilinks

## 数据安全规则 (Data Safety)

**核心原则：永不删除有内容的 .md 文件。**

| 操作 | 规则 |
|------|------|
| 分类明确的文件 | 移动到对应目录 |
| 不确定分类的文件 | 移动到 `11-need-class-ing/`，等待后续处理 |
| 有内容的 .md | **禁止删除**，只能移动 |
| 空文件 (0 bytes) | 可删除，但需在 log.md 记录 |
| 二进制/大文件 | 由用户决定，不自动删除 |

**分类流程：**
1. 遇到不确定的文件 → `11-need-class-ing/`
2. 在 `wiki/log.md` 记录：`## [日期] staging | 文件名 → 11-need-class-ing/`
3. 等用户授权或新增规则后再正式归类
4. 分类时更新 log.md 记录归类去向

## 访问控制 (Access Control)

| 目录 | 权限 | 说明 |
|------|------|------|
| `02-my-daily-notes/` | 🔒 禁止读写 | 用户私人日记 |
| `03-my information/` | 🔒 禁止读写 | 用户私人信息 |
| `01-outline/` | ⚠️ 需授权 | 用户大纲 |
| `00-vault-docs/` | ✅ 可读写 | Vault 文档 |
| `04-projects/` | ✅ 可读写 | 项目数据 |
| `05-my-lab/` | ✅ 可读写 | 实验室资料（05A-protocal, 05B-store, 05C-classmate） |
| `06-plan/` | ✅ 可读写 | 计划与规划 |
| `07-PPT-show/` | ✅ 可读写 | 演示笔记（Quartz 发布源） |
| `wiki/` | ✅ 可读写 | 知识库核心 |
| `templates/` | ✅ 可读写 | 页面模板 |

### 安全文件处理规则

**核心原则：永远不删除有内容的 .md 文件。**

| 情况 | 操作 |
|------|------|
| 能确定分类 | 移动到正确目录 |
| 不能确定分类 | 移动到 `11-need-class-ing/`，记录原因 |
| 空文件但有名称意义 | 移动到 `11-need-class-ing/` |
| 格式异常/损坏 | 移动到 `11-need-class-ing/` |
| 跨学科多主题 | 选主要学科；确实无法选 → `11-need-class-ing/` |

**`11-need-class-ing/` 是安全回收站，不是垃圾箱。**
定期由用户审查，补充分类规则后再归档。

## Quartz 发布控制 (Publish Control)

Vault 通过 Quartz (`H:\hermesp-agent\quartz`) 同步到 GitHub Pages。
使用 YAML frontmatter 的 `draft` 字段控制哪些笔记公开发布。

### 发布规则

**默认：所有 wiki 页面均可发布，除非标记为 draft。**

```yaml
---
title: 沙门氏菌 SPI-2 毒力岛
created: 2026-05-21
draft: false       # ← 明确公开（可省略，默认为 false）
---
```

```yaml
---
title: 未发表的适应性进化推演
created: 2026-05-27
draft: true         # ← 不发布到 Quartz/GitHub
---
```

### 自动排除（无需 draft 标记）

以下目录/文件 **永远不同步** 到 Quartz：

| 路径 | 原因 |
|------|------|
| `wiki/raw/` | 原始文献/PDF/数据，大文件 |
| `02-my-daily-notes/` | 私人日记 |
| `03-my information/` | 私人信息 |
| `00-vault-docs/` | Vault 内部文档 |
| `04-projects/` | 项目原始数据 |
| `05-my-lab/` | 实验室内部资料 |
| `06-plan/` | 个人规划 |
| `templates/` | 模板文件 |
| `memory/` | Agent 记忆 |

### 发布目录

以下内容可以发布（需无 `draft: true`）：

| 路径 | 内容 |
|------|------|
| `wiki/concepts/` | 概念笔记 |
| `wiki/entities/` | 实体页面 |
| `wiki/comparisons/` | 对比分析 |
| `wiki/queries/` | 查询结果 |
| `07-PPT-show/` | 演示笔记 |

### Quartz 同步脚本建议

```bash
# .gitignore for quartz source
wiki/raw/
02-my-daily-notes/
03-my information/
00-vault-docs/
04-projects/
05-my-lab/
06-plan/
templates/
memory/
*.xlsx
*.xls
*.pdf
*.zip
*.docx
```

### draft 标记规范

- `draft: true` — 草稿/未完成/未发表内容，不同步
- `draft: false` 或省略 draft — 正常发布
- 建议在以下场景使用 `draft: true`：
  - 正在构思的实验思路
  - 未发表的数据分析
  - 内部讨论用的对比页面
  - 临时性的查询结果

## Quality Standards
- **可重复性**: 记录所有分析参数和版本
- **可证伪性**: 明确假设和验证方法
- **来源追溯**: 所有声明必须有来源支持
- **时效性**: 标注信息的时效性
