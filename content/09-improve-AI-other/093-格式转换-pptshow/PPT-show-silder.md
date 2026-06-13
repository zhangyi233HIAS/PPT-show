
PPT 转化
https://github.com/SlideStage/SlideStageLite
[# SlideStage Pack Skill
这个项目是一个 Agent Skill：把已经生成好的 HTML 幻灯片打包成 `.stage` 文件，给 SlideStageLite / SlideStagePro 播放。
推荐工作流很简单：

1. 用 `huashu-design` 生成 HTML slides。
2. 用 `slidestage-pack` 把 HTML slides 打包成 `.stage`。
3. 把 `.stage` 拖进 [SlideStage Lite](https://lite.slidestage.dev/)。
## SlideStage 全家桶
[](https://github.com/SlideStage/SlideStage-pack#slidestage-%E5%85%A8%E5%AE%B6%E6%A1%B6)

|   |   |   |
|---|---|---|
|[![SlideStage Lite](https://raw.githubusercontent.com/SlideStage/SlideStageLite/main/packages/brand/assets/png/slidestage-mark.png)](https://github.com/SlideStage/SlideStageLite)  <br>**SlideStage Lite**  <br>Local-first runtime  <br>在任意浏览器中打开、播放、转换 `.stage` 文件。零后端，零账号。|[![SlideStage Pro](https://raw.githubusercontent.com/SlideStage/SlideStageLite/main/packages/brand/assets/png/slidestage-pro-mark.png)](https://github.com/SlideStage/SlideStagePro)  <br>**SlideStage Pro**  <br>Self-hosted platform  <br>多用户 `.stage` 协作平台，含笔记、批注、管理员邀请、Docker 部署。|[![slidestage-pack](https://raw.githubusercontent.com/SlideStage/SlideStageLite/main/packages/brand/assets/png/slidestage-pack-mark.png)](https://github.com/SlideStage/slidestage-pack)  <br>**slidestage-pack**  <br>Agent skill packer  <br>把任何 HTML deck (reveal / impress / html-ppt / huashu / 纯 HTML) 打包成可移植的 `.stage`。|

**Foundation packages** (consumed via npm):

- [`@slidestage/brand`](https://github.com/SlideStage/SlideStageLite/tree/main/packages/brand) — 全产品共享的 SVG / PNG 品牌资产、favicon、social card 与设计 token。 · [![npm](https://camo.githubusercontent.com/aa802cbab386dcca4af29116d98617d1c3f3b607ba5308bad2e293b235fc0470/68747470733a2f2f696d672e736869656c64732e696f2f6e706d2f762f40736c69646573746167652f6272616e642e7376673f7374796c653d666c61742d737175617265266c6162656c3d6e706d)](https://www.npmjs.com/package/@slidestage/brand)
- [`@slidestage/spec`](https://github.com/SlideStage/SlideStageLite/tree/main/packages/spec) — `.stage` 容器格式的 TypeScript 类型与运行时校验器。 · [![npm](https://camo.githubusercontent.com/a82d6e780911b3944ef14f109968525b5917e301b8d3b64261f35250ba4329b0/68747470733a2f2f696d672e736869656c64732e696f2f6e706d2f762f40736c69646573746167652f737065632e7376673f7374796c653d666c61742d737175617265266c6162656c3d6e706d)](https://www.npmjs.com/package/@slidestage/spec)

> 通过 `pnpm render:ecosystem` 重新生成该 block。产品注册表由 [`@slidestage/brand`](https://www.npmjs.com/package/@slidestage/brand) 上游维护。

## 推荐安装的 Skill

[](https://github.com/SlideStage/SlideStage-pack#%E6%8E%A8%E8%8D%90%E5%AE%89%E8%A3%85%E7%9A%84-skill)

### 1. huashu-design

[](https://github.com/SlideStage/SlideStage-pack#1-huashu-design)

首推用 `huashu-design` 生成幻灯片。它负责设计、排版、动画、演讲备注和 HTML 输出。

安装后，告诉 Agent：

```
请使用 huashu-design 做一份 1920x1080 的 HTML 幻灯片。
请输出为可被 slidestage-pack 打包的 HTML deck。
优先使用 <div class="deck"> + <section class="slide"> 的 inline deck 结构。
输出目录是 ./my-deck/，入口文件是 index.html。
不要生成 PPTX/PDF。
```

也可以让 `huashu-design` 输出它自己的 `<deck-stage>` 或 `window.DECK_MANIFEST` router 形态；本项目也支持打包。

### 2. slidestage-pack

[](https://github.com/SlideStage/SlideStage-pack#2-slidestage-pack)

本项目就是 `slidestage-pack` skill。它负责识别 HTML slide 框架、打包 `.stage`、校验产物。

安装本 skill 可以参考下方 “安装 slidestage-pack Skill” 部分。

如果你已经把本项目安装到 Agent Skills 目录，直接让 Agent 调用即可：

```
请使用 slidestage-pack 把 ./my-deck 打包成 ./dist/my-deck.stage。
请先探测框架，再打包，最后校验产物。
请告诉我输出路径、slide 数、文件大小、sha256 和 warnings。
```

## 安装 slidestage-pack Skill

[](https://github.com/SlideStage/SlideStage-pack#%E5%AE%89%E8%A3%85-slidestage-pack-skill)

最简单的方式：把这个 GitHub 链接发给 Agent，让 Agent 帮你安装：

```
请从 https://github.com/SlideStage/slidestage-pack 安装 slidestage-pack skill。
安装后请确认它可以用于把 HTML slides 打包成 .stage。
```

也可以自己下载：

```shell
mkdir -p ~/.agents/skills
git clone https://github.com/SlideStage/slidestage-pack ~/.agents/skills/slidestage-pack
```

如果你已经在本地 clone 了这个仓库，可以用软链接安装：

```shell
mkdir -p ~/.agents/skills
ln -s /path/to/slidestage-pack ~/.agents/skills/slidestage-pack
```

目录里需要包含：

```
slidestage-pack/
├── SKILL.md
├── package.json
├── scripts/
└── tests/
```

如果要在本地直接运行脚本，而不是只让已配置好的 Agent 调用，再进入 skill 目录安装依赖：

```shell
cd ~/.agents/skills/slidestage-pack
npm install
```

`npm install` 是可选的：只有本地运行 `scripts/*.mjs` 时需要。生成缩略图也属于可选功能，只有使用 `--thumbnails` 时才需要安装 Playwright 浏览器。

## 用户应该怎么对 Agent 说

[](https://github.com/SlideStage/SlideStage-pack#%E7%94%A8%E6%88%B7%E5%BA%94%E8%AF%A5%E6%80%8E%E4%B9%88%E5%AF%B9-agent-%E8%AF%B4)

### 从 0 生成并打包

[](https://github.com/SlideStage/SlideStage-pack#%E4%BB%8E-0-%E7%94%9F%E6%88%90%E5%B9%B6%E6%89%93%E5%8C%85)

```
请先用 huashu-design 生成一份 HTML 幻灯片，主题是「...」。
生成后请用 slidestage-pack 打包成 .stage。
要求：
1. HTML deck 输出到 ./my-deck/
2. .stage 输出到 ./dist/my-deck.stage
3. 打包前先 detect，打包后 verify
4. 最后告诉我路径、slide 数、大小、sha256、warnings
```

### 已经有 HTML slides，只需要打包

[](https://github.com/SlideStage/SlideStage-pack#%E5%B7%B2%E7%BB%8F%E6%9C%89-html-slides%E5%8F%AA%E9%9C%80%E8%A6%81%E6%89%93%E5%8C%85)

```
请使用 slidestage-pack 把 ./my-deck 打包成 ./dist/my-deck.stage。
请先 detect，再 pack，再 verify。
如果是 huashu-design 或 inline deck，使用默认自动模式。
如果是 reveal.js 或 impress.js，优先保真 wrap。
```

### 想要可解压后本地演示

[](https://github.com/SlideStage/SlideStage-pack#%E6%83%B3%E8%A6%81%E5%8F%AF%E8%A7%A3%E5%8E%8B%E5%90%8E%E6%9C%AC%E5%9C%B0%E6%BC%94%E7%A4%BA)

```
请使用 slidestage-pack 打包 ./my-deck，并开启 fallback。
输出为 ./dist/my-deck.stage。
```

### 想要缩略图

[](https://github.com/SlideStage/SlideStage-pack#%E6%83%B3%E8%A6%81%E7%BC%A9%E7%95%A5%E5%9B%BE)

```
请使用 slidestage-pack 打包 ./my-deck，并生成 thumbnails。
如果当前环境缺少 Playwright，请先告诉我需要安装什么，不要静默失败。
```

## 本项目支持什么

[](https://github.com/SlideStage/SlideStage-pack#%E6%9C%AC%E9%A1%B9%E7%9B%AE%E6%94%AF%E6%8C%81%E4%BB%80%E4%B9%88)

`slidestage-pack` 支持这些 HTML slide 输入：

- `huashu-design` / lewislulu 风格 inline deck：`<div class="deck">` + `<section class="slide">`
- Huashu `<deck-stage>` / `<deck-slide>`
- Huashu router：`window.DECK_MANIFEST`
- reveal.js
- impress.js
- 普通单页 HTML
- 已有 `.stage`

其中新建幻灯片最推荐 `huashu-design` 输出 inline deck，因为这个路径在本项目测试里覆盖最完整：识别、拆页、notes、CSS scope、inline script compat、校验和可复现打包都已覆盖。

## Agent 会做什么

[](https://github.com/SlideStage/SlideStage-pack#agent-%E4%BC%9A%E5%81%9A%E4%BB%80%E4%B9%88)

当你让 Agent 使用 `slidestage-pack` 时，它应该按这个顺序执行：

1. 探测源目录是什么框架。
2. 选择合适模式，通常自动即可。
3. 打包成 `.stage`。
4. 校验 `.stage`。
5. 汇报路径、大小、sha 256、slide 数和 warnings。