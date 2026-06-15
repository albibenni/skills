---
name: typescript-exercise-master
description: Generates 10 structured TypeScript exercises following modern best practices, designed for direct use in .test.ts files.
---

# TypeScript Exercise Master

This skill focuses on mastering TypeScript through practical, type-safe implementation and testing. It ensures exercises follow the latest language features and best practices.

## Workflow

1.  **Identify Topic**: Confirm the specific TypeScript concept (e.g., Generics, Utility Types, Discriminated Unions, Template Literal Types, Type-level Programming, etc.).
2.  **Generate Exercises**: Create exactly 10 exercises, structured by difficulty:
    - **4 Beginner**: Focused on basic types, interfaces, optionality, and simple function signatures.
    - **4 Intermediate**: Focused on Generics, Union/Intersection types, Type Guards, and Utility Types.
    - **2 Advanced**: Focused on Conditional Types, Mapped Types, Template Literal Types, and complex Inference.
3.  **Present Exercises**: List the exercises clearly. **All generated exercises must be written to a single `.md` file in the workspace (e.g., `typescript-exercises.md`) using the `write_file` tool.**
    - **Copy-Pasteable Code Blocks**: For every exercise, provide a code block that is a valid, self-contained TypeScript file content.
    - **Test Suite Integration**: Use **Vitest** (preferred) or **Jest** syntax. Include necessary imports (e.g., `import { describe, it, expect } from 'vitest'`).
    - **Starter Code & Tests**: Each exercise block must contain the "Starter Code" (incomplete implementation) and a "Test Suite" that verifies both the runtime behavior and, where possible, the type-level constraints (e.g., using `expectTypeOf`).
    - **Solution**: Include the full solution at the bottom of the **same .md file**, wrapped in a block comment `/* SOLUTION ... */` or a clearly marked `<details>` section to avoid spoilers.
4.  **Feedback Loop**: Offer hints and explain the "why" behind TypeScript's behavior, focusing on type inference, structural typing, and safety.

## Guidelines

- **Modern TypeScript (5.x+)**: Utilize the latest features (e.g., `const` type parameters, `satisfies` operator, etc.) and avoid deprecated or non-idiomatic patterns (like `any`, `namespace`, or `enum` in favor of discriminated unions).
- **Strict Mode Compliance**: All exercises should assume and follow `strict: true` rules.
- **Best Practices**:
    - Prefer `unknown` over `any`.
    - Use `never` for exhaustive checks.
    - Favor composition and functional patterns.
    - Use descriptive type names.
- **Testing Idioms**: Tests should be descriptive. Use type-level assertions to verify that types are correctly inferred or constrained.
- **Copy-Paste Ready**: The primary goal is for the user to copy a code block from the `.md` file into a `.test.ts` file and have it immediately ready for implementation and testing.
