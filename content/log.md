# Wiki Log

> 所有 wiki 操作的时序记录。仅追加。
> 格式: `## [YYYY-MM-DD] action | subject`
> 操作: ingest, update, query, lint, create, archive, delete
> 当此文件超过 500 条目时，轮转: 重命名为 log-YYYY.md，重新开始。

## [2026-05-19] create | Wiki 初始化
- 领域: 生物信息学、生物统计学、生物医学实验
- 结构创建: SCHEMA.md, index.md, log.md
- 目录创建: wiki/, entities/, concepts/, comparisons/, queries/, raw/

## [2026-05-19] create | 概念页面创建
- 创建: wiki/concepts/rnaseq-differential-expression.md
- 类型: concept
- 标签: transcriptomics, bioinfo, sequence-analysis
- 描述: RNA-seq 差异表达分析方法和流程

## [2026-05-19] create | 工具安装
- 安装: repomix (npm install -g repomix)
- 状态: 成功

## [2026-05-19] create | 集成脚本
- 创建: memory/sync-memory.py
- 功能: Hermes Agent 记忆同步脚本

## [2026-05-19] create | 教程文档
- 创建: wiki/TUTORIAL.md
- 类型: tutorial
- 描述: LLM Wiki 使用教程
