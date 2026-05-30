---
name: explain
description: Provides clear, high-signal explanations of code, concepts, or architectures followed by idiomatic code examples in both TypeScript and Java. Triggered when the user asks "explain," "how does X work," or "what is the best way to implement Y."
---

# Explain

This skill focuses on delivering a conceptual understanding followed by concrete, multi-language implementations.

## Workflow

1.  **Conceptual Explanation**: Start with a high-level "clear explanation" of the concept, pattern, or logic. Focus on the *intent* and *rationale*. Use analogies if they help clarify complex topics.
2.  **Implementation Strategy**: Briefly outline how the concept translates into code before showing the examples.
3.  **TypeScript Example**: Provide a concise, idiomatic TypeScript implementation. Use modern features (Type Aliases, Interfaces, Generics).
4.  **Java Example**: Provide a concise, idiomatic Java implementation. Use modern Java (Records, Optional, Streams) where applicable.
5.  **Comparative Summary**: A short bulleted list of key takeaways or language-specific nuances (e.g., "Java uses nominal typing while TypeScript uses structural typing").

## Guidelines

*   **Up-to-Date Research**: Always prioritize the latest documentation and best practices as of the current date (refer to session context). Verify that suggested patterns or APIs have not been deprecated or superseded.
*   **Clarity First**: Ensure the text explanation can stand alone before the user even looks at the code.
*   **Idiomatic Code**: 
    *   **TypeScript**: Prefer `const`, arrow functions, and structural typing. Use `strict` types.
    *   **Java**: Follow standard naming conventions and prefer readability. Use Java 17+ features (Records, Sealed Classes) where appropriate.
*   **Dual-Language Requirement**: Always provide both TS and Java examples unless the concept is strictly language-specific.
