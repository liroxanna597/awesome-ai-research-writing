# Academic Writing Prompt Map

Use this file to map a user request to the correct workflow from this repository.

## Task routing

### 1. Translation and rewriting

- **中转英**: Convert Chinese draft text into polished English academic prose for papers.
  - Triggers: "translate my Chinese draft into paper English", "rewrite this into conference-paper English", "turn these notes into LaTeX English".
  - Output pattern: English LaTeX text first, then a Chinese back-translation for checking.
- **英转中**: Translate English LaTeX prose into readable Chinese for comprehension.
  - Triggers: "explain this paragraph in Chinese", "translate this LaTeX excerpt", "help me understand this paper section".
- **中转中**: Rewrite fragmented Chinese notes into formal Chinese academic prose.
  - Triggers: "整理成论文语言", "改成学术中文", "把这些要点串成一段".

### 2. Length control and polishing

- **缩写**: Slightly shorten an English paragraph while preserving all key content.
- **扩写**: Expand an English paragraph to improve fullness and logical flow.
- **表达润色（英文论文）**: Polish English paper writing for clarity and natural academic tone.
- **表达润色（中文论文）**: Polish Chinese academic prose for fluency and formality.
- **去 AI 味（LaTeX 英文 / Word 中文）**: Reduce formulaic AI tone while preserving meaning.

### 3. Review and structure

- **逻辑检查**: Check whether a paragraph or section has topic drift, missing transitions, unsupported claims, or ordering issues.
- **论文整体以 Reviewer 视角进行审视**: Review the whole draft as a critical reviewer and surface major weaknesses.
- **论文架构图**: Help turn the paper's contribution and section logic into a structure diagram or clear architecture summary.

### 4. Experiments and presentation

- **实验绘图推荐**: Suggest chart choices for experiments.
- **生成图的标题**: Draft precise, publication-ready figure captions or titles.
- **生成表的标题**: Draft concise table titles/captions.
- **实验分析**: Turn results into convincing analysis paragraphs.

### 5. Planning and tool choice

- **模型选择**: Help choose the right model/tool for a writing or analysis task.

## Execution reminders

- Ask for missing context only when necessary: target venue, target language, output format, and whether the user wants direct final text or a prompt template.
- Preserve technical terms such as Transformer, CNN, Few-shot, and user-provided symbols unless asked to localize them.
- Avoid unnecessary Markdown formatting in final paper text.
- For LaTeX output, preserve formulas and escape special characters where needed.
- For review-style outputs, separate strengths, weaknesses, and actionable revisions when useful.

## Escalation rule

If the user asks for the exact original prompt from the repository, read `README.md` and quote or adapt only the relevant section.
