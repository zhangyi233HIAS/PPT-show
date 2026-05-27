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

## [2026-05-21] ingest | 论文分析 - NO 与沙门氏菌
- 来源: raw/papers/s42003-023-04876-1.pdf
- 标题: Nitric oxide is a host cue for Salmonella Typhimurium systemic infection in mice
- 创建页面:
  - wiki/concepts/no-salmonella-virulence.md (概念)
  - wiki/entities/spi2-pathogenicity-island.md (实体)
  - wiki/comparisons/spi1-vs-spi2.md (对比)

## [2026-05-21] ingest | 论文分析 - 禽类宿主特异性沙门氏菌
- 来源: raw/articles/Huang et al. - 2019 - Interaction differences of the avian host-specific salmonella...
- 标题: Interaction Differences of the Avian Host-Specific Salmonella enterica Serovar Gallinarum...
- 创建页面:
  - wiki/concepts/salmonella-gallinarum-macrophage-interaction.md (概念)
  - wiki/comparisons/three-salmonella-serovars-macrophage.md (对比)
- 关键发现:
  - S. Gallinarum 显示"低摄取-高存活"策略
  - JAK-STAT 通路特异性富集
  - 炎症反应快速下调

## [2026-05-21] ingest | 论文分析 - ROS 与 Aggresome
- 来源: raw/articles/白凡-Macrophage-derived reactive oxygen species.../Chen et al. - 2025.pdf
- 标题: Macrophage‐derived reactive oxygen species promote Salmonella aggresome formation contributing to bacterial antibiotic persistence
- 作者: Fan Bai (白凡), 北京大学
- 创建页面:
  - wiki/concepts/ros-aggresome-antibiotic-persistence.md (概念)
- 关键发现:
  - ROS 是 aggresome 形成的主要驱动力
  - 67.9% persisters 有 aggresomes
  - 使用 dual RNA-seq 同时分析宿主和细菌转录组
  - 细菌进入代谢休眠但保持 SPI-1 高表达

## [2026-05-27] archive | Vault 主目录归档整理
- 主目录散落文件清理: 13个文件重新归类
- 概念文件迁移: 先天免疫反应→concepts-Immunology, 转录组学→concepts-Bioinformatics
- 概念子目录整理: 4个根目录概念文件迁入学科子目录
  - no-salmonella-virulence → concepts-Microbio/
  - rnaseq-differential-expression → concepts-Bioinformatics/
  - ros-aggresome-antibiotic-persistence → concepts-Microbio/
  - salmonella-gallinarum-macrophage-interaction → concepts-Microbio/
- 新增目录: 00-vault-docs/, 04-projects/macrophage/
- 删除重复: 主目录7个wiki副本文件
- 删除空目录: other/, 9A1-need-class-ing/, 9A2-done/, excel/, 08-herems-log-useing/, 00-Public-Show-web/
- SCHEMA.md 更新: 添加概念路由规则 + 访问控制规则
- 访问控制: 02-my-daily-notes 🔒禁止读写, 03-my information 🔒禁止读写

## [2026-05-27] create | 新增目录结构
- 创建: 05-my-lab/05A-protocal, 05B-store, 05C-classmate
- 创建: 06-plan/
- 创建: 07-PPT-show/ (Quartz 发布源)
- SCHEMA.md 更新: Quartz 发布控制规则 + draft 标记规范
- Quartz 路径: H:\hermesp-agent\quartz
- 发布策略: draft: true 控制单篇, 目录级排除 wiki/raw 等大文件

## [2026-05-27] create | 安全文件处理规则
- 创建: 11-need-class-ing/ (待分类区/安全回收站)
- SCHEMA.md 更新: 安全文件处理规则 - 永不删除有内容的 .md
- 11-need-class-ing/README.md: 规则说明文档
