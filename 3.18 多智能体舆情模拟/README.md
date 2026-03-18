# 3.18 多智能体舆情模拟

这是这篇论文的**唯一工作区**。

## 你现在应该在哪个里面写？

- **分支**：当前请在 `work` 分支上继续整理，暂时**不是** `main` 分支。
- **论文主入口**：`3.18 多智能体舆情模拟/main.tex`
- **章节正文**：写在 `3.18 多智能体舆情模拟/sections/`
- **图片**：放在 `3.18 多智能体舆情模拟/figures/`
- **表格片段**：放在 `3.18 多智能体舆情模拟/tables/`
- **参考文献**：统一维护在 `3.18 多智能体舆情模拟/refs/references.bib`
- **零散思路、中文笔记、待办**：放在 `3.18 多智能体舆情模拟/notes/`
- **模板参考位置**：`3.18 多智能体舆情模拟/LaTeX2e+Proceedings+Templates+download/`，这里只是模板参考，不是主稿目录。

## 最清晰的写作方式

### 1. 总稿只认一个文件
- 以后只把 `main.tex` 当作总稿入口。
- 编译、合并、通读都从 `main.tex` 开始。

### 2. 每一章单独写
`sections/` 里已经按章节拆开：
- `abstract.tex`
- `introduction.tex`
- `related_work.tex`
- `method.tex`
- `experiments.tex`
- `results_analysis.tex`
- `conclusion.tex`

这样你后续可以：
- 单独让我改某一章；
- 单独补实验或结果；
- 不会把整篇论文写乱。

### 3. 图表与正文分开管理
- 图片统一放 `figures/`
- 表格源码或表格草稿统一放 `tables/`
- 正文中只负责 `\input{}` 或 `\includegraphics{}` 引用

### 4. 参考文献只维护一个库
- 所有文献条目统一放在 `refs/references.bib`
- 正文里统一用 `\cite{}` 或 `\citep{}` 引用
- 不要在不同章节各自放一套参考文献，避免重复和冲突

### 5. 格式要求单独记录
- 如果你拿不到官方模板文件，就把格式要求写在 `format_requirements.md`
- 我后续可以根据这个文件统一改 `main.tex`

## 推荐协作方式

你后面可以直接这样给我任务：
- “补写 `sections/method.tex`”
- “把我的中文实验描述整理到 `sections/experiments.tex`”
- “把图 1 放进 `figures/` 并在结果部分引用”
- “把这 5 篇文献补到 `refs/references.bib`”
- “按 LNCS 模板要求调整 `main.tex`”

## 当前建议

后续所有正文写作，请默认在 `3.18 多智能体舆情模拟/` 这个工作区继续，不再把主稿写进模板目录。
