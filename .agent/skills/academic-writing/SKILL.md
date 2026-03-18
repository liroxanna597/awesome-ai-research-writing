---
name: academic-writing
description: Academic paper writing, rewriting, translation, polishing, logic review, reviewer-style critique, figure/table caption drafting, experiment analysis, and model-selection support using the workflows and prompt library in this repository. Use when working on research writing in Chinese or English, especially for literature review notes, paper paragraphs, LaTeX/Word text polishing, structure checks, de-AI-ification, and experiment narration.
---

# Academic Writing

Use this skill when helping with research writing tasks in this repository, especially when the request spans multiple stages and no narrower writing skill is an obvious first choice.

## Quick routing

Choose the closest workflow before drafting.

- If the task is mainly translation or cross-language rewriting, prefer `paper-translation`.
- If the task is mainly wording refinement, shortening, expansion, or de-AI-ification, prefer `paper-polish`.
- If the task is mainly critique, logic diagnosis, or reviewer-style feedback, prefer `reviewer-check`.
- If the task is mainly experiment narration, caption drafting, chart suggestion, or model choice, prefer `experiment-analysis`.

- Translate Chinese draft to English paper prose: read `references/prompt-map.md` and use the `中转英` workflow.
- Translate English LaTeX to Chinese for understanding: use `英转中`.
- Rewrite rough Chinese notes into formal paper prose: use `中转中`.
- Shorten or expand an English paragraph without changing meaning: use `缩写` or `扩写`.
- Polish language quality in English or Chinese: use the matching polishing workflow.
- Check logical flow, reviewer concerns, or whole-paper weaknesses: use `逻辑检查` or `Reviewer 视角` workflows.
- Draft figure captions, table captions, experiment analysis, or choose a model/tool: use the matching workflow in the reference.

## Working method

1. Identify the user's real writing goal, target language, and target format (`LaTeX`, `Word`, outline, caption, review memo, etc.).
2. Read `references/prompt-map.md` and pick the narrowest matching workflow.
3. Preserve the user's technical meaning, formulas, variables, citations, and formatting constraints.
4. Produce output in the format required by that workflow; do not add extra chatter if the workflow expects strict sections.
5. If the user asks for revision, keep the same workflow unless the task has changed.

## Repository-aware guidance

- Treat the repository's prompt library as the primary source of writing style and workflow choices.
- Prefer concise, publication-ready academic phrasing over flashy wording.
- For LaTeX text, preserve formulas and escape special characters when needed.
- For Word-oriented Chinese writing, keep output clean and easy to paste, without Markdown decoration unless requested.
- When the user asks for "less AI-like" writing, favor natural transitions, restrained connectors, and field-standard terminology.

## When to inspect repository content directly

Read `README.md` when you need the full original prompt wording or want to mirror a repository prompt exactly.
Read `references/prompt-map.md` first when you only need to route the task and apply the right workflow.
