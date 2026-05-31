# Obsidian 插件清单（共 78 个）

> 根据你提供的截图整理，包含 GitHub 仓库链接、分类及冗余提示。  
> 下载方式：进入各仓库的 **Releases** 页面下载最新版 `main.js` + `manifest.json` + `styles.css`（如有）。

---

## 一、AI / 智能助手（7个）——⚠️ 高度冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 1 | **Copilot** | https://github.com/logancyang/obsidian-copilot | 老牌 AI 助手，支持 Vault QA、聊天 |
| 2 | **Info Copilot** *(Infio Copilot)* | https://github.com/infiolab/infio-copilot | 类 Cursor 的 AI 补全与对话；**与 Copilot / Smart Composer 功能高度重叠** |
| 3 | **InlineAI** | https://github.com/fbarrca/obsidian-inlineAI | 行内 AI 编辑建议；**与 Info Copilot / Smart Composer 重叠** |
| 4 | **Smart Composer** | https://github.com/glowingjade/obsidian-smart-composer | AI 写作辅助；**与 Copilot / Info Copilot 重叠** |
| 5 | **Text Generator** | https://github.com/nhaouari/obsidian-textgenerator-plugin | 基于模板的文本生成；**与上述 AI 插件部分重叠** |
| 6 | **YOLO** | https://github.com/lapis0x0/obsidian-yolo | Agent-native AI 助手；**与 Copilot / Smart Composer 重叠** |
| 7 | **Claudian** | https://github.com/YishenTu/claudian | 嵌入 Claude Code / Cody 等 Coding Agent |

> **冗余建议**：Copilot、Info Copilot、InlineAI、Smart Composer、YOLO 均为"AI 助手"定位，保留 1–2 个即可。Text Generator 偏重模板化生成，可保留。Claudian 面向编程 Agent，场景不同可保留。

---

## 二、Canvas / 思维导图 / 可视化（6个）——⚠️ 高度冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 8 | **Advanced Canvas** | https://github.com/developer-mike/obsidian-advanced-canvas | Canvas 功能增强（边栏、导航等） |
| 9 | **Canvas Mindmap** | https://github.com/Quorafind/Obsidian-Canvas-MindMap | 让 Canvas 像思维导图一样工作 |
| 10 | **Excalidraw** | https://github.com/zsviczian/obsidian-excalidraw-plugin | 手绘风格白板，功能极强 |
| 11 | **Enhancing Mindmap** | https://github.com/markmindckm/obsidian-enhancing-mindmap | Markdown 转思维导图并可编辑 |
| 12 | **Markmind** | https://github.com/markmindckm/obsidian-markmind | 大纲 + 思维导图双模式 |
| 13 | **Mind Map** *(Markmap)* | https://github.com/lynchjames/obsidian-mind-map | 预览为 Markmap 思维导图 |
| 14 | **Mindmap NextGen** | https://github.com/james-tindal/obsidian-mindmap-nextgen | Markmap 思维导图下一代版 |

> **冗余建议**：
> - Mind Map 与 Mindmap NextGen 是同一技术路线（Markmap），**NextGen 是升级版，可删 Mind Map**。
> - Enhancing Mindmap 与 Markmind 作者相同、功能相近，**建议保留 Markmind（功能更全面）**。
> - Canvas Mindmap 与 Advanced Canvas 都改 Canvas，但 Canvas Mindmap 更专注导图，Advanced Canvas 更通用，可共存。
> - Excalidraw 是独立白板体系，无可替代，保留。

---

## 三、编辑增强 / 排版 / 输入（12个）——⚠️ 部分冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 15 | **Advanced Tables** | https://github.com/tgrosinger/advanced-tables-obsidian | 表格导航、格式化、公式 |
| 16 | **Columns** | https://github.com/tnichols217/obsidian-columns | Markdown 分栏 |
| 17 | **Dynamic Table of Contents** | https://github.com/aidurber/obsidian-plugin-dynamic-toc | 自动生成并自动更新的目录 |
| 18 | **Easy Typing** | https://github.com/yaozhuwa/easy-typing-obsidian | 中文编辑体验优化（自动空格、符号配对等） |
| 19 | **Editing Toolbar** | https://github.com/pkm-er/obsidian-editing-toolbar | 类 Word 的富文本工具栏 |
| 20 | **floating toc** | https://github.com/pkm-er/obsidian-floating-toc-plugin | 悬浮目录侧边栏 |
| 21 | **Simple Columns** | https://github.com/josie1902/Simple-Columns | 简单分栏；**与 Columns 功能重叠** |
| 22 | **Simplified Chinese Word Splitting** | https://github.com/aidenlx/cm-chs-patch | 中文分词（双击选词、Vim 模式支持） |
| 23 | **Sortable** | https://github.com/alexandru-dinu/obsidian-sortable | 表格点击表头排序 |
| 24 | **Tab Panels** | https://github.com/gnoxnahte/obsidian-tab-panels | 在笔记中创建标签页面板 |
| 25 | **Various Complements** | https://github.com/tadashi-aikawa/obsidian-various-complements-plugin | IDE 式自动补全 |
| 26 | **Keyboard Analyzer** | https://github.com/noname-oni/obsidian-keyboard-analyzer | 快捷键分析与统计 |

> **冗余建议**：
> - **Columns 与 Simple Columns 高度重复**，保留一个即可（Columns 功能更全）。
> - **Dynamic Table of Contents 与 floating toc 都是目录**，但形态不同（一个内嵌、一个悬浮），可按习惯二选一。
> - Editing Toolbar 与 Easy Typing 都改善输入体验，但不直接冲突，可共存。

---

## 四、导出 / 演示 / PDF（5个）——⚠️ 部分冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 27 | **Better Export PDF** | https://github.com/l1xnan/obsidian-better-export-pdf | 增强 PDF 导出（预览、书签、页眉页脚） |
| 28 | **Enhancing Export** | https://github.com/mokeyish/obsidian-enhancing-export | 多格式导出（HTML、DOCX、ePub、PDF、Hugo 等） |
| 29 | **Marp** | https://github.com/jichoup/obsidian-marp-plugin | 用 Marp 写幻灯片 |
| 30 | **Slides Extended** | https://github.com/ebullient/obsidian-slides-extended | 基于 reveal.js 的幻灯片；**与 Marp 功能重叠** |
| 31 | **PDF++** | https://github.com/RyotaUshio/obsidian-pdf-plus | Obsidian 原生 PDF 批注增强，极强 |

> **冗余建议**：
> - **Marp 与 Slides Extended 都是幻灯片方案**，Marp 偏 Markdown 简洁语法，Slides Extended 偏 reveal.js 生态，建议保留一个。
> - **Better Export PDF 与 Enhancing Export 都含 PDF 导出**，但 Enhancing Export 面向多格式，Better Export PDF 更专攻 PDF 细节，可按需求取舍。

---

## 五、文件与笔记管理（8个）——⚠️ 部分冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 32 | **Auto Note Mover** | https://github.com/farux/obsidian-auto-note-mover | 按规则自动移动笔记到对应文件夹 |
| 33 | **AutoMover** | https://github.com/al0cam/AutoMover | 按名称规则自动移动文件；**与 Auto Note Mover 高度重叠** |
| 34 | **File Tree Alternative** | https://github.com/ozntel/file-tree-alternative | 替代文件树视图 |
| 35 | **Folder Note** | https://github.com/xpgo/obsidian-folder-note-plugin | 点击文件夹节点显示说明笔记 |
| 36 | **Force note view mode** | https://github.com/bwydoogh/obsidian-force-view-mode-of-note | 通过 frontmatter 强制指定视图/编辑模式 |
| 37 | **Notebook Navigator** | https://github.com/johansan/notebook-navigator | 双栏文件浏览器替代原生侧边栏 |
| 38 | **QuickAdd** | https://github.com/chhoumann/quickadd | 快速添加新页面或内容（模板化） |
| 39 | **Recent Files** | https://github.com/tgrosinger/recent-files-obsidian | 最近打开文件列表 |

> **冗余建议**：
> - **Auto Note Mover 与 AutoMover 功能几乎完全相同**，保留一个即可。
> - File Tree Alternative 与 Notebook Navigator 都是文件浏览器增强，但 Notebook Navigator 更侧重双栏+键盘导航，可按喜好取舍。

---

## 六、界面定制 / 主题 / 主页（6个）

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 40 | **Banners** | https://github.com/noatpad/obsidian-banners | 笔记头图/Banner |
| 41 | **Customizable Page Header and Title Bar** | https://github.com/kometenstaub/customizable-page-header-buttons | 自定义页面标题栏按钮 |
| 42 | **Commander** *(cmdr)* | https://github.com/jsmorabito/obsidian-commander | 到处添加命令按钮，**已吸收 Customizable Page Header 的功能** |
| 43 | **Homepage** | https://github.com/mirnovov/obsidian-homepage | 启动时打开指定页面/工作区 |
| 44 | **Minimal Theme Settings** | https://github.com/kepano/obsidian-minimal-settings | Minimal 主题专属设置 |
| 45 | **Style Settings** | https://github.com/obsidian-community/obsidian-style-settings | 通用 CSS 变量调整（多主题兼容） |

> **冗余建议**：
> - **Commander 已内置 Customizable Page Header and Title Bar 的核心能力**，如果已装 Commander，Customizable Page Header 可卸载。
> - Minimal Theme Settings 只服务 Minimal 主题；Style Settings 是通用基础设施，两者不冲突。

---

## 七、搜索 / 导航 / 路径（4个）

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 46 | **Advanced URI** | https://github.com/vinzent03/obsidian-advanced-uri | 高级 URI 协议，支持外部调用 |
| 47 | **Omnisearch** | https://github.com/scambier/obsidian-omnisearch | 全文搜索引擎 |
| 48 | **Open in other editor** | https://github.com/yekingyan/obsidian-open-in-other-editor | 在 Vim / VSCode 中打开当前文件 |
| 49 | **Show Current File Path** | https://github.com/ravimashru/obsidian-show-file-path | 状态栏显示当前文件完整路径 |

> **冗余建议**：本类功能差异明显，无显著冗余。

---

## 八、任务 / 项目 / 时间管理 / 日历（8个）——⚠️ 部分冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 50 | **Calendar** | https://github.com/liamcain/obsidian-calendar-plugin | 日历视图浏览笔记 |
| 51 | **Projects** | https://github.com/obsmd-projects/obsidian-projects | 多视图项目管理（看板、表格、日历） |
| 52 | **Tasks** | https://github.com/obsidian-tasks-group/obsidian-tasks | 任务管理（日期、重复、过滤） |
| 53 | **Tasks Calendar Wrapper** | https://github.com/leonezz/obsidian-tasks-calendar-wrapper | Tasks 插件的日历/时间线包装器；**依赖 Tasks** |
| 54 | **Templater** | https://github.com/silentvoid13/Templater | 高级模板自动化（非纯任务，但与日常记录强相关） |
| 55 | **Thino** *(原 Obsidian-Memos)* | https://github.com/Quorafind/Obsidian-Thino | 快速捕捉想法到每日笔记 |
| 56 | **Tracker** | https://github.com/pyrochlore/obsidian-tracker | 追踪笔记中的数据/数值并可视化 |
| 57 | **Waypoint** | https://github.com/idreesinc/Waypoint | 自动生成文件夹地图（MOC） |

> **冗余建议**：
> - **Tasks Calendar Wrapper 完全依赖 Tasks**，没有独立存在的必要，属于 Tasks 的附属插件，可保留。
> - Calendar 与 Tasks Calendar Wrapper 都提供日历视图，但后者只展示任务；如果主要用 Tasks，Calendar 可酌情卸载。
> - Tracker 与 Thino 都涉及日常数据记录，但 Tracker 侧重数值可视化，Thino 侧重碎片化捕捉，不直接冲突。

---

## 九、学术 / 文献 / 引用（4个）——⚠️ 部分冗余

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 58 | **Pandoc Reference List** | https://github.com/obsidian-community/obsidian-pandoc-reference-list | 侧边栏显示 pandoc 引用文献 |
| 59 | **Paperbell** | https://github.com/PaperBell-Org/Obsidian-PaperBell-Plugin | 学术写作工作流增强 |
| 60 | **Zotero Integration** | https://github.com/obsidian-community/obsidian-zotero-desktop-connector | 导入 Zotero 引用、书目、PDF 批注 |
| 61 | **ZotLit** | https://github.com/aidenlx/zotlit | Zotero 文献笔记与引用插入；**与 Zotero Integration 高度重叠** |

> **冗余建议**：
> - **Zotero Integration 与 ZotLit 均为 Zotero 桥接插件**，功能高度重合（插入引用、文献笔记）。Zotero Integration 功能更全面（支持 PDF 批注同步），建议保留 Zotero Integration，卸载 ZotLit。
> - Paperbell 更偏向学术笔记模板与写作流程，与上述两者不冲突。

---

## 十、编程 / 开发 / 外部工具集成（6个）

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 62 | **Git** | https://github.com/vinzent03/obsidian-git | Git 版本控制与自动备份 |
| 63 | **Local REST API & MCP Server** | https://github.com/coddingtonbear/obsidian-local-rest-api | 本地 REST API + MCP Server |
| 64 | **MCP Tools** | https://github.com/jacksteamdev/obsidian-mcp-tools | MCP 协议工具；**与 Local REST API & MCP Server 有功能交集** |
| 65 | **React Components** | https://github.com/elias-sundqvist/obsidian-react-components | 在笔记中使用 React + JSX |
| 66 | **BRAT** | https://github.com/tfthacker/obsidian42-brat | 安装测试版/未上架插件 |
| 67 | **Admonition** | https://github.com/ebullient/obsidian-admonition | Callout/提示块增强 |

> **冗余建议**：
> - **Local REST API & MCP Server 与 MCP Tools 都提供 MCP 能力**，前者还提供 REST API。如果只需要 MCP，保留一个即可。
> - BRAT 是基础设施类插件，用于安装其他测试版插件，保留。

---

## 十一、其他工具（6个）

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 68 | **Dataview** | https://github.com/blacksmithgu/obsidian-dataview | 将 vault 变成数据库，查询渲染表格/列表 |
| 69 | **Hover Editor** | https://github.com/nothingislost/obsidian-hover-editor | 将悬浮预览变成可编辑窗口 |
| 70 | **I18N** | https://github.com/eondrcode/obsidian-i18n | 插件/主题汉化翻译工具 |
| 71 | **Imagine** | https://github.com/AlbusGuo/albus-imagine | 图片管理（插入、缩放、批量处理） |
| 72 | **Map View** | https://github.com/esm7/obsidian-map-view | 交互式地图视图（地理笔记） |
| 73 | **Media Extended** | https://github.com/aidenlx/media-extended | 音视频播放增强 |
| 74 | **Spaced Repetition** | https://github.com/st3v3nmw/obsidian-spaced-repetition | 间隔重复闪卡/笔记复习 |
| 75 | **Tag Wrangler** | https://github.com/pjeby/tag-wrangler | 标签重命名、合并、搜索 |
| 76 | **Longform** | https://github.com/kevboh/longform | 长篇写作（小说、剧本）项目管理 |
| 77 | **ObShare** | https://github.com/xigua222/ObShare | 基于飞书文档的笔记同步与分享 |

---

## 十二、疑似旧版/重复（1个）

| # | 插件名称 | GitHub 仓库 | 备注 |
|---|---------|------------|------|
| 78 | **Cloudian** | *(疑似已合并至 Claudian)* | v0.0.11，仅支持 Claude Code；作者与 Claudian 相同 (Yichen/Yishen Tu)。**建议卸载，改用 Claudian (v0.0.18+)** |

---

## 冗余总结（按严重程度）

### 🔴 高度冗余（强烈建议二选一或三选一）

| 保留建议 | 建议卸载 |
|---------|---------|
| **Copilot** 或 **Smart Composer** | Info Copilot、InlineAI、YOLO、Text Generator（按实际使用频率） |
| **Mindmap NextGen** | Mind Map（同一技术路线的旧版） |
| **Markmind** | Enhancing Mindmap（同作者，功能被包含） |
| **Auto Note Mover** | AutoMover（功能几乎相同） |
| **Zotero Integration** | ZotLit（功能覆盖更广） |
| **Columns** | Simple Columns（Columns 更完善） |
| **Claudian** | Cloudian（旧版/功能子集） |

### 🟡 中度冗余（可按使用场景取舍）

| 场景 | 建议 |
|------|------|
| 幻灯片 | **Marp** vs **Slides Extended**，二选一 |
| PDF 导出 | **Better Export PDF**（专精） vs **Enhancing Export**（多格式），按需保留 |
| 目录 | **Dynamic Table of Contents**（内嵌更新） vs **floating toc**（悬浮侧边栏），形态不同，按喜好 |
| MCP/外部连接 | **Local REST API & MCP Server**（功能最全） vs **MCP Tools**，保留一个 |
| 文件浏览器增强 | **File Tree Alternative** vs **Notebook Navigator**，按交互习惯取舍 |

### 🟢 功能已合并（建议卸载旧版）

| 旧插件 | 原因 |
|-------|------|
| **Customizable Page Header and Title Bar** | Commander 已吸收其功能 |

---

*整理时间：2026-05-28 | 共 78 个插件*
