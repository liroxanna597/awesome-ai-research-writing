---
name: paper-translation
description: Translate and rewrite academic writing between Chinese and English, especially Chinese draft to English paper prose, English LaTeX to Chinese explanation, and rough Chinese notes to formal academic Chinese. Use when the user asks for translation, bilingual checking, LaTeX-safe English rewriting, or turning notes into paper-ready paragraphs.
---

# Paper Translation

Use this skill for cross-language academic writing tasks.

## Route the request

- Use `中转英` for Chinese draft to polished English paper prose.
- Use `英转中` for English LaTeX text to readable Chinese explanation.
- Use `中转中` when the input is Chinese notes but the user really wants a formal academic rewrite rather than literal translation.

## Output rules

1. Keep technical meaning, formulas, symbols, and citations intact.
2. For LaTeX-oriented English output, preserve formulas and escape special characters when needed.
3. If the task is `中转英`, provide English paper text first and a Chinese back-translation second unless the user asks for direct final text only.
4. If the task is `英转中`, remove distracting LaTeX wrappers and prioritize readability.
5. If the task is `中转中`, convert note fragments into coherent academic prose instead of translating literally.

## Repository usage

Read `README.md` when you need the exact repository prompt text.
