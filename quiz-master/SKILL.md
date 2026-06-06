---
name: quiz-master
description: Generates a comprehensive 8-question multiple-choice quiz to review concepts, logic, and details from the current context. Useful for self-assessment and knowledge reinforcement.
---

# Quiz Master

This skill focuses on verifying understanding through structured, multi-level assessments.

## Workflow

1.  **Analyze Context**: Identify core themes, technical details, and architectural patterns in the current context or provided files.
2.  **Generate Questions**: Create exactly 8 multiple-choice questions:
    - **3 Foundational**: Basic concepts, terminology, and definitions.
    - **3 Intermediate**: Application of concepts, logical flow, and relationships between components.
    - **2 Advanced**: Edge cases, architectural implications, and complex dependencies.
3.  **Present and Persist Quiz**: Display the questions clearly with options A, B, C, and D. Simultaneously, write the full quiz (questions and options) to a file named `<topic>_quiz.md` in the target folder.
4.  **Evaluate with Detailed Solutions**: At the bottom of the file provide their answers keys with explanations

## Guidelines

- **Clarity**: Questions should be unambiguous and directly related to the analyzed material.
- **High-Signal Explanations**: When providing answers, explain _why_ the correct choice is right and _why_ others might be misleading. Provide detailed solutions that cover the underlying logic and context.
- **Contextual Accuracy**: Ensure all questions are grounded in the provided context, avoiding generic external knowledge unless relevant.
- **Persistence**: Always ensure the quiz and its solutions are documented in the target folder using the format `<topic>_quiz.md` (e.g., `bash_quiz.md`) to facilitate long-term knowledge retention.
