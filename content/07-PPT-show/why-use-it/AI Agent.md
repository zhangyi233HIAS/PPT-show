**定义**：能够自主执行任务的AI系统，具备工具调用、多步推理、持续学习能力

**核心能力**：
- **工具调用**：读取文件、执行代码、搜索网络
- **多步推理**：分解复杂任务，逐步执行
- **知识整合**：结合本地数据和AI模型
- **持续学习**：从每次交互中积累经验

**本系统中的Agent**：[[Hermes Agent]]
- 读取本地文件（Excel、CSV、PDF）
- 调用专业分析流程（[[Skill]]）
- 结合AI模型进行深度分析
- 输出结构化结果

AI Agent 是 **LLM 演进的终极形态**。普通 AI 是“问答模式（Chat）”，而 Agent 是“任务目标驱动模式（Goal-Oriented）”。

### 1. Agent 核心架构设计

$$Agent = LLM (大脑) + Memory (记忆) + Planning (规划) + Tools (工具箱)$$

- **Memory（记忆系统）**：
    
    - _短期记忆_：依赖模型的 Context Window，通过特定的提示词工程（Prompt Engineering）维持当前的对话状态。
        
    - _长期记忆_：外接向量数据库（VDB），实现对历史操作、长效知识的秒级 RAG 检索。
        
- **Planning（规划/反思能力）**：
    
    - **ReAct 框架**（Reasoning + Acting）：Agent 遇到复杂问题时，先思考（Thoughts），再行动（Actions），再观察结果（Observations），周而复始。
        
    - **Reflexion 反思机制**：在任务失败时分析错误原因并记录到长期记忆中，避免下次犯错。
        
- **Tools（工具调用 - Function Calling）**：
    
    模型本身不能算数，也不能上网，但它能看懂 API 文档。当它发现任务需要计算时，会自动输出结构化的 JSON 片段，调用本地的 Python 解释器或外部 Web API。
    

### 2. 业界核心开发框架与实例

- **开发工具链**：
    
    - **LangChain / LangGraph**：通过有向无环图（DAG）和状态机管理复杂多 Agent 协同的工业级框架。
        
    - **AutoGen**：微软推出的多 Agent 协作框架，允许构建一个“虚拟软件公司”，包含产品经理 Agent、程序员 Agent、测试员 Agent，它们之间通过自发对话完成软件编写。
        
- **生产力实例（高手如何使用 Agent 闭环）**：
    
    - _全自动研报 Agent_：设定目标“分析 XX 公司最新财报”。Agent 首先触发 Google Search API 搜集财报 PDF，随后调用 OCR 工具提取表格，再调用 Python 解释器计算财务比率，最后对比历史 Wiki 库中的行业数据，利用大模型自动渲染出一份 PDF 研报并发送到用户的邮箱。全程无需人类干预













当前技术周期的 AI 已经从传统的“概率匹配（Next-token Prediction）”全面走向**推理与泛化（Reasoning & Generalization）**。

### 1. 高手视角下的底层架构

- **Transformer 与注意力机制**：大语言模型（LLM）的底层建立在自注意力机制（Self-Attention）之上，通过对长上下文（Context Window）中不同 Token 的权重计算来理解语义。
    
- **推理模型的崛起**：以 [OpenAI](https://openai.com) 的 o1/o3 系列、DeepSeek-R1 等为代表的**强化学习推理模型**（Reasoning Models），引入了内置的“思考链（Chain of Thought, CoT）”。它们在输出最终答案前进行多路径自我纠错与深度搜索，在数学、代码编写、复杂策略规划上实现了泛化能力质的飞跃。
    
- **上下文窗口进化**：当前主流 LLM 的长上下文窗口已达 1M 至 2M Tokens。这使得“直接将整本技术原著或整个代码库作为 Prompt 输入”成为可能，大幅降低了中小型任务对复杂微调（Fine-tuning）的依赖