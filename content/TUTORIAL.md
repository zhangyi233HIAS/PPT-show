---
title: LLM Wiki 使用教程
created: 2026-05-19
updated: 2026-05-19
type: tutorial
tags: [tutorial, wiki, knowledge-base]
sources: []
confidence: high
---

# LLM Wiki 使用教程

## 概述
本教程介绍如何使用 Obsidian-Hermes 集成系统进行知识管理。

## 目录
1. [快速开始](#快速开始)
2. [知识摄入](#知识摄入)
3. [知识查询](#知识查询)
4. [页面创建](#页面创建)
5. [与 Hermes Agent 联动](#与-hermes-agent-联动)
6. [知识库维护](#知识库维护)
7. [高级功能](#高级功能)

---

## 快速开始

### 1. 打开 Obsidian Vault
```
文件 → 打开另一个库 → 选择 H:\hermesp-agent\03-obsidian-hermes
```

### 2. 了解目录结构
```
03-obsidian-hermes/
├── wiki/                    # 知识库核心
│   ├── SCHEMA.md           # 规范 (必读)
│   ├── index.md            # 索引 (导航)
│   ├── log.md              # 操作日志
│   ├── concepts/           # 概念页面
│   ├── entities/           # 实体页面
│   ├── comparisons/        # 对比分析
│   └── raw/                # 原始资料
├── templates/              # 模板
└── memory/                 # 记忆同步
```

### 3. 阅读核心文件
- **SCHEMA.md**: 了解知识库规范和标签分类
- **index.md**: 查看现有内容目录
- **log.md**: 了解最近操作记录

---

## 知识摄入

### 场景 1: 添加研究论文

**步骤:**
1. 将论文 PDF 放入 `wiki/raw/papers/`
2. 告诉我: "我添加了一篇论文到 raw/papers/，帮我分析并创建知识页面"
3. 我会:
   - 读取论文内容
   - 提取关键信息
   - 创建相关概念/实体页面
   - 建立交叉引用
   - 更新 index.md 和 log.md

**示例:**
```
你: 我添加了一篇关于 CRISPR 的论文到 raw/papers/crispr-review-2026.pdf
我: [分析论文，创建 wiki/concepts/crispr-genome-editing.md 等页面]
```

### 场景 2: 添加网页文章

**步骤:**
1. 告诉我文章 URL
2. 我会:
   - 提取文章内容
   - 保存到 `wiki/raw/articles/`
   - 创建知识页面
   - 建立交叉引用

**示例:**
```
你: 帮我分析这篇关于单细胞测序的文章: https://example.com/sc-seq
我: [提取内容，创建 wiki/concepts/single-cell-sequencing.md]
```

### 场景 3: 添加会议笔记

**步骤:**
1. 将会议笔记放入 `wiki/raw/transcripts/`
2. 告诉我: "帮我整理这次会议的知识点"
3. 我会:
   - 提取关键信息
   - 创建相关页面
   - 更新日志

---

## 知识查询

### 方法 1: 直接问我

**示例:**
```
你: 什么是 RNA-seq 差异表达分析？
我: [基于 wiki 内容回答，引用相关页面]

你: 比较 DESeq2 和 edgeR 的区别
我: [创建对比分析页面，或基于现有内容回答]
```

### 方法 2: 在 Obsidian 中浏览

**使用 Wikilinks:**
- 点击 `[[wikilinks]]` 跳转到相关页面
- 使用 Graph View 查看知识网络

**使用 Dataview 插件:**
```dataview
TABLE tags, confidence
FROM "wiki/concepts"
WHERE contains(tags, "transcriptomics")
```

### 方法 3: 搜索

**在 Obsidian 中:**
- `Ctrl+Shift+F`: 全局搜索
- `Ctrl+O`: 快速打开文件

**让我搜索:**
```
你: 搜索所有关于 "基因表达" 的页面
我: [列出相关页面和摘要]
```

---

## 页面创建

### 使用模板

**1. 复制模板:**
```
templates/concept-template.md → wiki/concepts/新页面.md
templates/entity-template.md → wiki/entities/新页面.md
templates/comparison-template.md → wiki/comparisons/新页面.md
```

**2. 填写 Frontmatter:**
```yaml
---
title: 页面标题
created: 2026-05-19
updated: 2026-05-19
type: concept  # 或 entity, comparison
tags: [tag1, tag2]  # 从 SCHEMA.md 的标签分类中选择
sources: [raw/papers/source.md]  # 来源
confidence: high  # high, medium, low
---
```

**3. 填写内容:**
- 使用 Markdown 格式
- 添加 `[[wikilinks]]` 链接到相关页面
- 每个页面至少 2 个出站链接

**4. 更新索引:**
- 在 `wiki/index.md` 中添加页面链接
- 更新 "最后更新" 日期和 "总页面" 数

**5. 记录操作:**
- 在 `wiki/log.md` 中追加操作记录

### 让我创建页面

**示例:**
```
你: 帮我创建一个关于 "蛋白质组学" 的概念页面
我: [创建 wiki/concepts/proteomics.md，包含定义、原理、应用等]

你: 帮我创建一个比较 "Illumina 和 PacBio 测序" 的页面
我: [创建 wiki/comparisons/illumina-vs-pacbio.md]
```

---

## 与 Hermes Agent 联动

### 功能 1: 知识分析

**示例:**
```
你: 分析我最近的研究方向，找出知识空白
我: [读取 wiki 内容，分析知识覆盖范围，建议需要补充的领域]
```

### 功能 2: 知识综合

**示例:**
```
你: 综合所有关于 "基因编辑" 的知识，写一个综述
我: [读取所有相关页面，创建综合分析页面]
```

### 功能 3: 知识验证

**示例:**
```
你: 检查这个说法是否正确: "RNA-seq 比微阵列更准确"
我: [基于 wiki 内容验证，提供证据和引用]
```

### 功能 4: 知识库健康检查

**示例:**
```
你: 运行知识库 lint 检查
我: [检查孤立页面、断链、索引完整性等]
```

---

## 知识库维护

### 定期任务

**1. 更新过时内容:**
```
你: 检查并更新过时的页面
我: [识别 confidence: low 或过时的页面，建议更新]
```

**2. 整理标签:**
```
你: 检查标签使用情况
我: [分析标签使用，识别未使用的标签，建议优化]
```

**3. 清理重复内容:**
```
你: 检查是否有重复的页面
我: [识别相似内容的页面，建议合并]
```

### 备份

**手动备份:**
```bash
# 复制整个 vault
cp -r /mnt/h/hermesp-agent/03-obsidian-hermes /mnt/h/hermesp-agent/03-obsidian-hermes-backup-$(date +%Y%m%d)
```

**使用 Git:**
```bash
cd /mnt/h/hermesp-agent/03-obsidian-hermes
git init
git add .
git commit -m "Initial commit"
```

---

## 高级功能

### 1. 使用 Dataview 查询

**查询所有概念页面:**
```dataview
TABLE tags, confidence, updated
FROM "wiki/concepts"
SORT updated DESC
```

**查询高置信度页面:**
```dataview
LIST
FROM "wiki"
WHERE confidence = "high"
```

**按标签查询:**
```dataview
TABLE title, type
FROM "wiki"
WHERE contains(tags, "genomics")
```

### 2. 使用 Graph View

**查看知识网络:**
- 打开 Graph View (`Ctrl+G`)
- 查看页面之间的链接关系
- 识别知识集群和空白

### 3. 使用 Templater 插件

**自动创建页面:**
- 配置 Templater 使用 `templates/` 目录
- 使用快捷键创建新页面
- 自动填充 frontmatter

### 4. 与 repomix 集成

**打包项目代码:**
```bash
cd /mnt/h/hermesp-agent/sigclone-copy-core-linux_down-gezi-2026-0510
repomix
# 生成 repomix-output.md
```

**分析代码:**
```
你: 分析 repomix-output.md，提取关键算法和方法
我: [创建相关知识页面]
```

---

## 最佳实践

### 1. 页面创建
- ✅ 使用模板
- ✅ 添加完整的 frontmatter
- ✅ 至少 2 个 wikilinks
- ✅ 引用来源
- ✅ 设置合理的 confidence

### 2. 知识摄入
- ✅ 先保存原始资料到 raw/
- ✅ 检查是否已有相关页面
- ✅ 建立交叉引用
- ✅ 更新 index.md 和 log.md

### 3. 知识查询
- ✅ 先查看 index.md
- ✅ 使用 Graph View 浏览
- ✅ 引用来源回答问题
- ✅ 将有价值的查询结果保存为页面

### 4. 维护
- ✅ 定期运行 lint 检查
- ✅ 更新过时内容
- ✅ 清理重复页面
- ✅ 备份知识库

---

## 常见问题

### Q: 如何添加新的标签？
A: 在 `wiki/SCHEMA.md` 的 "Tag Taxonomy" 部分添加新标签，然后在页面中使用。

### Q: 如何处理矛盾的信息？
A: 在 frontmatter 中添加 `contested: true` 和 `contradictions: [other-page]`，记录两种观点。

### Q: 如何拆分过大的页面？
A: 当页面超过 200 行时，拆分为子主题，使用 wikilinks 连接。

### Q: 如何归档过时的内容？
A: 移动到 `_archive/` 目录，从 index.md 中移除，更新相关页面的链接。

---

## 相关资源

- [SCHEMA.md](wiki/SCHEMA.md) - 知识库规范
- [index.md](wiki/index.md) - 内容索引
- [log.md](wiki/log.md) - 操作日志
- [templates/](templates/) - 页面模板
- [LLM Wiki Skill](~/.hermes/skills/research/llm-wiki/) - 详细文档
- [Obsidian Skill](~/.hermes/skills/note-taking/obsidian/) - Obsidian 使用指南

---

*最后更新: 2026-05-19*
