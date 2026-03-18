---
name: paper-polish
description: Polish academic writing in English or Chinese, including wording refinement, shortening, expansion, de-AI-ification, and publication-style cleanup for LaTeX or Word. Use when the user asks to make text more natural, concise, formal, readable, or less AI-like without changing the technical meaning.
---

# Paper Polish

Use this skill to improve wording while preserving meaning.

## Route the request

- Use `缩写` to make an English paragraph slightly shorter without losing information.
- Use `扩写` to add fullness and smoother logical development.
- Use `表达润色（英文论文）` for publication-style English polishing.
- Use `表达润色（中文论文）` for formal Chinese academic polishing.
- Use `去 AI 味` workflows when the user explicitly wants more natural, less formulaic writing.

## Output rules

1. Preserve all technical claims, variables, data, and key limitations.
2. Match the target format: clean LaTeX for English paper text, clean plain text for Word-oriented Chinese writing.
3. Avoid over-editing when the user asks for light polish.
4. Favor natural academic tone over flashy vocabulary.
5. If the user asks what changed, provide a short modification summary after the final text.

## Repository usage

Read `README.md` for the repository's original polishing prompts when exact replication is needed.
