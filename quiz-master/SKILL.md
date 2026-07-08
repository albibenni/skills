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
3.  **Present and Persist Quiz**: Display the questions clearly with options A, B, C, and D. Simultaneously, write the full quiz (questions and options) to a file named `<topic>_quiz.md` in the target folder. Include a reference (e.g., a link) to the corresponding exercise file. Additionally, update the original file that was the subject of the quiz to include a reference (e.g., a link) pointing to this newly created `<topic>_quiz.md` file.
4.  **Evaluate with Detailed Solutions**: At the bottom of the file provide their answers keys with explanations

## Guidelines

- **Unpredictable Options**: Avoid patterns that let someone guess the answer without knowing the material. In particular, the correct option must NOT be systematically the longest, most detailed, or most technically-worded choice. Vary which letter (A/B/C/D) holds the correct answer across the quiz, and keep distractors similar in length, specificity, and style to the correct answer. Before finalizing, review the option lengths across all 8 questions and rewrite any where the correct answer stands out.
- **Clarity**: Questions should be unambiguous and directly related to the analyzed material.
- **Knowledge Over Code Trivia**: Do not ask questions that depend on recalling specific code (variable names, exact values, line-level details) unless that code snippet is included in the question itself. Questions should test understanding of concepts, logic, and principles rather than memory of the source code.
- **High-Signal Explanations**: When providing answers, explain _why_ the correct choice is right and _why_ others might be misleading. Provide detailed solutions that cover the underlying logic and context.
- **Contextual Accuracy**: Ensure all questions are grounded in the provided context, avoiding generic external knowledge unless relevant.
- **Persistence**: Always ensure the quiz and its solutions are documented in the target folder using the format `<topic>_quiz.md` (e.g., `bash_quiz.md`) to facilitate long-term knowledge retention.
