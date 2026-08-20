---
name: explain
description: Provides clear, high-signal explanations of code, concepts, or architectures, including in-depth analysis, suggestions, and relevant links, followed by idiomatic code examples in TypeScript. Triggered when the user asks "explain," "how does X work," or "what is the best way to implement Y."
---

# Explain

This skill focuses on delivering a deep conceptual understanding, strategic suggestions, and relevant resources followed by concrete, language-appropriate implementations.

## Context Awareness

1.  **Programming Language Detection**: Analyze the target `file_path` or current working directory:
    - If the path implies a specific language (e.g., contains `.py`, `/python/`, `.rs`, `/rust/`, `.cpp`, etc.), prioritize that language for the implementation.
    - If the path is general (e.g., `/Concepts/`, `/Documentation/`) or the language is ambiguous, default to **TypeScript**.
2.  **Overrides**: If the user explicitly requests a specific language, follow that request regardless of the path.
3.  **Target Location Identification**: Understand the context of the topic explained. Given a directory (or defaulting to the current workspace), search for the best spot to write the explanation or implementation into.

## Workflow

1.  **Conceptual Explanation**: Start with a high-level "clear explanation" of the concept, pattern, or logic. Focus on the _intent_ and _rationale_. Use analogies if they help clarify complex topics.
2.  **In-depth Analysis**: Provide a deeper dive into the technical details, trade-offs, and edge cases. Explain _why_ certain approaches are preferred over others in specific contexts (e.g., performance, scalability, maintainability).
3.  **Suggestions**: Offer proactive advice or alternative patterns that might be relevant to the user's likely goals.
4.  **Implementation Strategy**: Briefly outline how the concept translates into code before showing the examples.
5.  **Code Implementation**:
    - If a specific language was detected in Context Awareness, provide one idiomatic example in that language.
    - Otherwise, provide the **Default Language**: one concise, idiomatic TypeScript example.
6.  **Comparative Summary**: A short bulleted list of key takeaways or language-specific nuances.
7.  **Additional Resources**: Provide 2-3 high-quality links (official docs, seminal blog posts, or RFCs) for further reading.
8.  **Contextual Writing**: If the task involves writing the explanation or implementation into the project, navigate to the target location identified in Context Awareness and integrate the content smoothly (e.g., adding a markdown file, updating a README, or inserting code into the appropriate module).

## Guidelines

- **Up-to-Date Research**: Always prioritize the latest documentation and best practices as of the current date (refer to session context). Verify that suggested patterns or APIs have not been deprecated or superseded.
- **Clarity First**: Ensure the text explanation can stand alone before the user even looks at the code.
- **Analytical Depth**: In the analysis phase, don't just state facts; explain the underlying mechanics and implications.
- **Actionable Suggestions**: Ensure suggestions are practical and directly applicable to common development scenarios.
- **Idiomatic Code**:
  - **TypeScript**: Prefer `const`, arrow functions, and structural typing. Use `strict` types.
  - **Other Languages**: Strictly follow the idiomatic conventions of the detected language (e.g., PEP 8 for Python, standard formatting for Go).
- **Markdown Link Formatting**: Never use `file:///` URLs, absolute filesystem paths, or relative paths in Markdown notes or documentation. Always use Obsidian Wikilinks (e.g., `[[note_name]]` or `[[note_name|Display Text]]`).
- **Generated Exercise Links**: When a companion quiz or worksheet is generated from an explanation note, that generator adds a `Test Yourself` Markdown deep link to both files. This base skill does not construct the link because the generated file's final vault-relative path is not yet known.
- **Default Language**: When the context is general, always provide TypeScript examples.
