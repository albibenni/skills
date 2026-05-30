---
name: explain
description: Provides clear, high-signal explanations of code, concepts, or architectures followed by idiomatic code examples in both TypeScript and Java. Triggered when the user asks "explain," "how does X work," or "what is the best way to implement Y."
---

# Explain

This skill focuses on delivering a conceptual understanding followed by concrete, language-appropriate implementations.

## Context Awareness

1.  **Language Detection**: Analyze the target `file_path` or current working directory:
    - If the path implies a specific language (e.g., contains `.py`, `/python/`, `.rs`, `/rust/`, `.cpp`, etc.), prioritize that language for the implementation.
    - If the path is general (e.g., `/Concepts/`, `/Documentation/`) or the language is ambiguous, default to the **Standard Pair** (TypeScript and Java).
2.  **Overrides**: If the user explicitly requests a specific language, follow that request regardless of the path.

## Workflow

1.  **Conceptual Explanation**: Start with a high-level "clear explanation" of the concept, pattern, or logic. Focus on the _intent_ and _rationale_. Use analogies if they help clarify complex topics.
2.  **Implementation Strategy**: Briefly outline how the concept translates into code before showing the examples.
3.  **Code Implementation**:
    - If a specific language was detected in Context Awareness, provide one idiomatic example in that language.
    - Otherwise, provide the **Standard Pair**: one concise, idiomatic TypeScript example and one concise, idiomatic Java example.
4.  **Comparative Summary**: A short bulleted list of key takeaways or language-specific nuances.

## Guidelines

- **Up-to-Date Research**: Always prioritize the latest documentation and best practices as of the current date (refer to session context). Verify that suggested patterns or APIs have not been deprecated or superseded.
- **Clarity First**: Ensure the text explanation can stand alone before the user even looks at the code.
- **Idiomatic Code**:
  - **TypeScript**: Prefer `const`, arrow functions, and structural typing. Use `strict` types.
  - **Java**: Follow standard naming conventions and prefer readability. Use Java 17+ features (Records, Sealed Classes) where appropriate.
  - **Other Languages**: Strictly follow the idiomatic conventions of the detected language (e.g., PEP 8 for Python, standard formatting for Go).
- **Default Pair**: When the context is general, always provide both TS and Java examples to ensure cross-platform understanding.
