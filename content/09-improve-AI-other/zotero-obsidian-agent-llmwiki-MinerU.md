现在我对你的现状有了全面了解。下面给你一个**清晰的现状诊断 + 分步落地方案**。

---

## 📊 现状诊断

| 组件                  | 状态              | 证据                                                     |
| ------------------- | --------------- | ------------------------------------------------------ |
| **Obsidian**        | ✅ 已就绪           | Vault 在 `H:\hermesp-agent\03-obsidian-hermes`，目录结构完整   |
| **Wiki (Quartz)**   | ✅ 已就绪           | Quartz 在 `H:\hermesp-agent\quartz`，已配置发布控制             |
| **LLM Wiki**        | ✅ 已就绪           | `wiki/` 目录已有 SCHEMA + 10 个知识页面 + 概念路由                  |
| **Zotero**          | ❌ 未安装           | WSL 和 Windows 侧均未找到 Zotero 程序和数据目录                     |
| **MinerU**          | ⚠️ 仅有 token URL | `03-my-information` 里记录了 mineru.net 链接，未实际配置           |
| **Zotero↔Obsidian** | ⚠️ 插件已装未配置      | `obsidian-zotero-desktop-connector` 插件存在但无 `data.json` |
| **llm-for-zotero**  | ❌ 不存在           | Zotero 未安装，插件无从谈起                                      |

**核心瓶颈：Zotero 本体未安装，三个软件的联动缺了"地基"。**

---

## 🔧 四步落地方案

### 第一步：安装 Zotero 7 + 基础插件（地基）

你需要在 **Windows 侧** 操作：

1. **下载 Zotero 7**：[https://www.zotero.org/download/](https://www.zotero.org/download/) → Windows 版
2. **安装 Better BibTeX (BBT)** 插件：

- 下载 `.xpi` 文件：[https://retorque.re/zotero-better-bibtex/installation/](https://retorque.re/zotero-better-bibtex/installation/) - Zotero → Tools → Add-ons → 从文件安装

1. **配置附件外置**（你的需求是"大文件外置"）：

- 在 `H:\hermesp-agent\` 下建 `ZoteroFiles` 文件夹（或用已有的 `G:\zotero`） - Zotero → Edit → Preferences → Advanced → Files and Folders - **Linked Attachment Base Directory** → 指向外置文件夹

1. **安装 Attanger 插件**（自动移动 PDF 到外置）：

- [https://github.com/MuiseDestiny/zotero-attanger/releases](https://github.com/MuiseDestiny/zotero-attanger/releases)

### 第二步：安装 llm-for-zotero + MinerU（AI 引擎）

1. **注册 MinerU API Key**：

- 访问 [https://mineru.net](https://mineru.net/) → 注册 → 生成免费 API Key

1. **安装 llm-for-zotero 插件**：

- GitHub: [https://github.com/Coniferous/zotero-llm（或在](https://github.com/Coniferous/zotero-llm%EF%BC%88%E6%88%96%E5%9C%A8) Zotero 插件市场搜索） - 下载 `.xpi` → Zotero → Tools → Add-ons → 从文件安装

1. **配置 MinerU**：

- Zotero → Edit → Preferences → llm-for-zotero - 勾选 **Enable MinerU** - 粘贴 API Key → 点 Test Connection - 设置过滤：**Skip files over 100 pages**（避免浪费额度）

1. **配置 LLM**：

- 在 llm-for-zotero 设置中填入你的 LLM API（OpenAI / 本地模型均可）

### 第三步：打通 Zotero → Obsidian 直写（Agent 联动）

这是核心联动环节。**两种方案并行**：

#### 方案 A：llm-for-zotero 的 File-Based Notes（自动直写）

在 llm-for-zotero 设置中：  

- **Notes Directory** → 设置为 `H:\hermesp-agent\03-obsidian-hermes`
- **Default Folder** → `wiki/raw/papers`（原始论文笔记）
- **Attachments Folder** → `wiki/raw/assets`（MinerU 提取的图片）
- 勾选 **Enable Agent Mode**

  
效果：在 Zotero 侧边栏对 AI 说"总结这篇论文"→ 自动在 Obsidian 里生成带 YAML frontmatter 的笔记。

#### 方案 B：obsidian-zotero-desktop-connector（引用联动）

你的 Obsidian 已经安装了这个插件，需要配置：  

- 打开 Obsidian → Settings → Zotero Desktop Connector
- 设置 BBT 导出路径（Better BibTeX 的自动导出 `.bib` 文件路径）
- 设置笔记模板（用 `[[wikilinks]]` 链接引用）

  
效果：在 Obsidian 里用 `@citekey` 引用文献，自动拉取 Zotero 元数据。

### 第四步：LLM Wiki 如何与三者联动

**LLM Wiki 不是一个独立软件**——它是你 vault 里的 `wiki/` 目录 + Hermes Agent 的工作流。你已经在用了（10 个知识页面就是 LLM Wiki 的产物）。

联动方式：

```none
Zotero (收集PDF) 
    ↓ llm-for-zotero Agent 模式
Obsidian vault/wiki/raw/papers/ (原始论文)
    ↓ Hermes Agent 读取 → 分析 → 创建知识页面
Obsidian vault/wiki/concepts/ (结构化知识)
    ↓ Quartz 同步
Wiki 网页 (GitHub Pages)
```

---

## ⚡ 你现在应该做的

**先完成第一步**（安装 Zotero），其他步骤才有意义。要我现在帮你：

1. **生成一个完整的安装检查清单**，你按顺序操作？
2. **写一个自动化脚本**，检测你 Windows 上的 Zotero 安装状态？
3. **先帮你把 LLM Wiki 的 `wiki/` 目录结构补全**（增加 `templates/`、`memory/` 等缺失目录），为后续联动做准备？


## 1. 外置后文件还会到 Zotero 同步目录吗？

**不会。** 这是两种完全不同的模式：

|模式|文件位置|占 Zotero 云空间|跨设备|
|---|---|---|---|
|**存储文件 (Stored)**| `Zotero/data/storage/` 内|✅ 占|Zotero Sync / WebDAV|
|**链接文件 (Linked)**|你指定的外置文件夹|❌ 不占|**需要自己同步**|

你设置 Linked Attachment Base Directory 后，**新拖入的 PDF 变成链接文件，不进 `storage/` 目录**。旧文件不受影响（已有的还是 Stored）。

## 2. 坚果云要不要用？

**推荐用。** 因为链接文件模式下，Zotero 不帮你同步 PDF 本身。你有两个选择：

|方案|操作|适合场景|
|---|---|---|
|**坚果云 WebDAV**|Zotero → Preferences → Sync → File Syncing → WebDAV → 填坚果云 WebDAV 地址|最省心，Zotero 原生支持|
|**坚果云本地同步文件夹**|把 Linked Attachment Base Directory 设到坚果云同步目录下|灵活，其他工具也能访问|

**我推荐后者**——把外置文件夹放在坚果云同步目录内，比如：  

```none
坚果云同步目录: C:\Users\你的用户名\Nutstore\
PDF 外置文件夹: C:\Users\你的用户名\Nutstore\ZoteroFiles\
```

  
这样 PDF 自动云端备份，同时 MinerU 和 Obsidian 都能直接读取。

## 3. 每次读取的文件都是 MinerU 解析后的吗？

**分两步理解：**

- **MinerU 解析 = 一次性**：llm-for-zotero 首次调用 MinerU 解析某个 PDF，结果会缓存（ZIP 压缩包）。之后再打开同一篇论文，直接用缓存，不重复调 API。
- **Agent 分析 = 每次都是 MinerU 版本**：当你在 Zotero 侧边栏对 AI 说"总结这篇论文"，Agent 调用的是 MinerU 解析后的高质量 Markdown（含公式、表格），不是原始 PDF 粗提取。

**所以你的需求完全满足**——只要开了 MinerU，Agent 分析的永远是 MinerU 高保真版本。

## 4. 跳转链接方案

你用 `file:///` 协议的方案可以工作，但有两个问题：  

- 路径含中文/空格时容易出错
- 换电脑路径就断了

  
**推荐三层链接方案，全部写进笔记模板：**

markdownCopy

```markdown
---
title: "{{title}}"
authors: "{{authors}}"
year: {{year}}
doi: "{{doi}}"
zotero: "zotero://select/items/{{citekey}}"
pdf: "file:///H:/hermesp-agent/ZoteroFiles/{{filename}}"
created: {{date}}
type: paper
tags:  [literature]
---

# {{title}}

## 📄 原文链接
-  [Zotero 打开条目] (zotero://select/items/{{citekey}})
-  [打开 PDF] (file:///H:/hermesp-agent/ZoteroFiles/{{filename}})
-  [DOI 链接] (https://doi.org/{{doi}})

## 📝 MinerU 解析摘要
{{minerparsed_content}}
```

三个链接各司其职：

|链接|协议|作用|稳定性|
|---|---|---|---|
| `zotero://select/items/ABCD1234` |Zotero URI|在 Zotero 中定位到该条目|✅ 最稳定，citekey 不变|
| `file:///H:/.../paper.pdf` |file 协议|直接打开本地 PDF|⚠️ 路径固定后稳定|
| `[https://doi.org/10.xxx](https://doi.org/10.xxx)` |HTTPS|永久 DOI 链接|✅ 最稳定|

** `zotero://` 协议是最关键的**——它直接打开 Zotero 客户端并定位到那篇论文，不需要知道 PDF 存在哪里。Better BibTeX 插件自动生成唯一 citekey，llm-for-zotero 的 File-Based Notes 模式**原生支持**在 frontmatter 里写入这个链接。

## 你现在该做的配置清单

```none
✅ Zotero 已安装
⬜ 安装 Better BibTeX 插件
⬜ 安装 Attanger 插件
⬜ 设置 Linked Attachment Base Directory → 坚果云同步目录下的 ZoteroFiles/
⬜ 安装 llm-for-zotero 插件
⬜ llm-for-zotero → 启用 MinerU → 填 API Key → Test Connection
⬜ llm-for-zotero → File-Based Notes → 路径设置:
   ├─ Notes Directory: H:\hermesp-agent\03-obsidian-hermes
   ├─ Default Folder: wiki/raw/papers
   └─ Attachments Folder: wiki/raw/assets
⬜ llm-for-zotero → 启用 Agent Mode
⬜ Obsidian → Settings → Zotero Desktop Connector → 配置 BBT 导出路径
```

设置过程中遇到任何报错或不确定的选项，直接截图或贴文字给我。

