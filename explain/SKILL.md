---
name: explain
description: Explains code, concepts, and architectures at an appropriate depth, prioritizing conceptual understanding with optional illustrative examples. Use when the user asks to explain something, understand how it works, or choose an implementation approach.
---

# Explain

This skill helps the user understand a topic before deciding what to build. Prioritize concepts, mechanisms, and decision-making; treat code as an optional illustration rather than the subject of the response unless the user asks for implementation help.

## Context Awareness

1. **Depth**: Infer whether the user wants a brief answer, a deep dive, implementation advice, or a code walkthrough. Ask only when the distinction materially changes the result.
2. **Language**: Honor an explicit language request. Otherwise, infer the language from supplied code or the relevant project when an example is useful. With no language context, use concise pseudocode or TypeScript—whichever makes the concept clearest.
3. **Repository context**: Inspect relevant supplied files or project conventions before giving implementation-specific advice. Do not search for a destination or modify project files unless the user asks to write documentation or implement a change.

## Workflow

1. Explain the intent, mechanics, and rationale in plain language. Use an analogy only when it genuinely improves clarity.
2. Cover trade-offs, alternatives, limitations, and edge cases that affect the user's decision; omit incidental detail.
3. Give practical next steps when they follow naturally from the request.
4. Provide implementation strategy or a small, idiomatic example only when it clarifies the topic or the user asks for it. Keep code focused on illustrating the concept, not on language-specific style rules.
5. End with a short key-takeaways list when it improves scanability.
6. Provide authoritative external resources for version-sensitive, disputed, or advanced topics, or when the user asks for sources. Prefer primary documentation, specifications, and papers.
7. Write or update project documentation only with explicit user authorization.

## Guidelines

- **Current guidance**: Verify official documentation for version-sensitive APIs, security guidance, framework advice, or when the user requests current recommendations. Do not add research overhead to stable conceptual explanations.
- **Clarity First**: Ensure the text explanation can stand alone before the user even looks at the code.
- **Analytical Depth**: In the analysis phase, don't just state facts; explain the underlying mechanics and implications.
- **Actionable Suggestions**: Ensure suggestions are practical and directly applicable to common development scenarios.
- **Illustrative code**: Keep examples minimal, correct, and idiomatic for the relevant language. Explain the ideas expressed by the code; do not turn a conceptual answer into a style guide or enforce TypeScript-specific conventions unless the user asks.
- **Obsidian note context**: When creating or materially updating a note in the user's vault, inspect only the nearest relevant notes: the target folder, its parent or index note when present, and a small number of direct topic matches. Stop once enough verified links are found; do not perform broad vault-wide reading. Add only useful vault-relative links in the form `[[<note_path>]]` (or `[[<note_path>|Display Text]]`). Do not invent targets, link unrelated notes, or perform this scan for answers that are not being written into the vault. Use paths without the `.md` extension unless the vault's established convention uses extensions.
- **Markdown links**: In vault notes, use Obsidian wikilinks for internal notes; use normal HTTPS Markdown links for external sources. Never use `file:///` URLs or absolute filesystem paths in generated notes.
- **Companion learning materials**: When another requested workflow creates companion quizzes or worksheets, add or coordinate links only after their final vault-relative paths are known.
- **No forced code**: A conceptual explanation does not need an example solely because this skill is active.
