在现代技术栈中，**Wiki（如 [MediaWiki](https://www.mediawiki.org)、[Confluence](https://www.atlassian.com/software/confluence)、[Outline](https://www.getoutline.com)）已从传统的“静态只读文档”演变为 LLM 与 智能 Agent 的核心知识资产（Corpus）**。

### 1. 现代 Wiki 架构下的知识闭环：Wiki + LLM + NotebookLM

当下的高手不再手动去翻阅海量 Wiki 页面，而是将其作为**真实性数据源（Grounding Source）**，通过 RAG（检索增强生成）架构或专项 AI 工具进行语义提炼：

- **Wiki 作为结构化语料库**：Wiki 提供了严格的版本控制（Version Control）和层级架构，通过 API（如 Wiki API / Confluence REST API）可稳定输出高内聚性的结构化文本。
    
- **NotebookLM 级协同**：[Google NotebookLM](https://notebooklm.google) 代表了新型的“个性化 AI 笔记本”。高手的工作流是：将 Wiki 中的特定项目文档、技术白皮书、会议纪要以 Markdown 形式批量导出，输入到 NotebookLM 中。此时，AI 会被禁锢在该特定知识库内，实现 **0 幻觉的语义级问答、一键生成项目概述、自动提取交叉引用（Citations）**。
    
- **企业级 RAG 落地**：使用 Wiki 内置的 Webhook 监听文档更新，一旦有新页面上线，自动触发管道（Pipeline）进行文本切片（Chunking）、生成向量（Embedding），并写入向量数据库（如 Pinecone / Milvus），使企业的内部大模型能够实时、安全地检索最新业务逻辑。