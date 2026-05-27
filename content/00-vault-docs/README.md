# Obsidian-Hermes 集成

## 概述
这是一个 AI 驱动的知识管理系统，将 Obsidian 与 Hermes Agent 集成，用于生物信息学、生物统计学和生物医学实验的知识管理。

## 目录结构

```
03-obsidian-hermes/
├── wiki/                    # LLM Wiki 知识库
│   ├── SCHEMA.md           # 知识库规范
│   ├── index.md            # 索引
│   ├── log.md              # 操作日志
│   ├── raw/                # 原始资料
│   │   ├── articles/       # 文章
│   │   ├── papers/         # 论文
│   │   ├── transcripts/    # 会议记录
│   │   └── assets/         # 资源文件
│   ├── entities/           # 实体页面
│   ├── concepts/           # 概念页面
│   ├── comparisons/        # 对比分析
│   └── queries/            # 查询结果
├── projects/               # 项目代码
├── memory/                 # Hermes 记忆同步
└── templates/              # 模板文件
    ├── entity-template.md
    ├── concept-template.md
    └── comparison-template.md
```

## 使用方法

### 1. 知识摄入
将研究资料放入 `wiki/raw/` 对应目录:
- 文章 → `raw/articles/`
- 论文 → `raw/papers/`
- 会议记录 → `raw/transcripts/`

### 2. 知识查询
在 Obsidian 中:
- 使用 `[[wikilinks]]` 浏览知识网络
- 使用 Graph View 查看知识图谱
- 使用 Dataview 插件查询

### 3. 与 Hermes Agent 联动
Hermes Agent 可以:
- 读取和分析 wiki 内容
- 创建和更新知识页面
- 进行知识库健康检查
- 回答基于知识库的问题

## 集成工具

### 已集成
- ✅ LLM Wiki - 知识库管理
- ✅ Obsidian - 笔记和可视化

### 待集成
- ⏳ obsidian-second-brain - AI 命令扩展
- ⏳ repomix - 代码打包
- ⏳ LiveDoc - BDD 文档
- ⏳ tokscale - Token 监控
- ⏳ superagent - AI 安全

## 知识领域

### 生物信息学
- 基因组学
- 转录组学
- 蛋白质组学
- 系统生物学
- 序列分析

### 生物统计学
- 实验设计
- 假设检验
- 多变量分析
- 生存分析
- 贝叶斯统计

### 生物医学实验
- 分子生物学技术
- 细胞培养
- 动物模型
- 临床研究
- 药理毒理

## 最佳实践

1. **来源追溯**: 所有声明必须有来源支持
2. **交叉引用**: 每个页面至少 2 个 wikilinks
3. **定期更新**: 保持知识的时效性
4. **质量控制**: 定期运行 lint 检查

## 相关资源

- [LLM Wiki Skill](~/.hermes/skills/research/llm-wiki/)
- [Obsidian Skill](~/.hermes/skills/note-taking/obsidian/)
- [Hermes Agent Memory](https://github.com/NousResearch/hermes-agent/blob/main/website/docs/user-guide/features/memory.md)
