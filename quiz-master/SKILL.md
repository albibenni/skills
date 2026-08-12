---
name: quiz-master
description: Generates an 8-question multiple-choice quiz that checks understanding of concepts, logic, and important details from the current context. Use for self-assessment and knowledge reinforcement, especially when the quiz should be concise, difficult, and saved as a Markdown note.
---

# Quiz Master

Create concise, high-discrimination quizzes. Make each item fast to scan while making the decision depend on genuine understanding.

## Workflow

1. **Analyze Context**: Identify the concepts, causal relationships, trade-offs, and failure modes most worth retaining. Prefer important ideas over incidental details.
2. **Generate Questions**: Create exactly 8 multiple-choice questions:
    - **3 Foundational**: Basic concepts, terminology, and definitions.
    - **3 Intermediate**: Application of concepts, logical flow, and relationships between components.
    - **2 Advanced**: Edge cases, architectural implications, and complex dependencies.
3. **Write Compact Items**: State the decision point first. Aim for one sentence per question; use a second short sentence only when it supplies essential scenario context. Keep each option to one line, parallel in structure, and closely matched in length. Before finalizing each item, compare the correct option with every distractor and shorten or expand wording until correctness cannot be inferred from length.
4. **Present and Persist Quiz**: Display options A through D and write the full quiz to `<topic>_quiz.md` in the target folder. Link the generated quiz and its source note using Obsidian Wikilinks. Add an exercise-file link only when such a file exists and is relevant.
5. **Add Test Yourself Links**: Add one `[Test Yourself](test-yourself://open?quiz=<URL-encoded vault-relative path>)` link to both the quiz and its source note. Derive the path from the quiz's actual final location.
6. **Evaluate with Detailed Solutions**: At the bottom of the file, add `## Answers`. For every answer, state the question number and correct letter (for example, `1. B`), followed immediately by a line starting exactly with `Explanation: `.

## Strict Formatting Requirements

The generated `<topic>_quiz.md` file MUST strictly adhere to the following format so it can be parsed correctly by external tools:

1. **Questions**: Each question must start with its number followed by a period (e.g., `1. What is...?`).
2. **Options**: The question must be immediately followed by options starting with `A. `, `B. `, `C. `, `D. ` (at least A and B are required).
3. **Answers Section**: Must be under a heading containing the word `Answers` or `Solutions`.
4. **Answer Key & Explanation**: Each correct answer must be stated as `1. B` (number, period, letter) and the very next line MUST begin exactly with the keyword `Explanation: `.

Example format:

1. What is the most effective way to prevent SQL Injection?
   A. Using a Web Application Firewall
   B. Using Prepared Statements
   C. Escaping all user input manually
   D. Obfuscating the database schema

## Answers

1. B
   Explanation: Prepared statements ensure that the database treats user input as data, neutralizing SQL injection attacks.

## Guidelines

- **Fast to Read**: Lead with the question, not a long setup. Use concrete verbs and familiar terms. Remove background the learner does not need to choose an answer. Never use a paragraph-length question or multi-line option.
- **Hard for the Right Reason**: Make difficulty come from a consequential distinction: a boundary condition, causal direction, trade-off, order of operations, failure mode, or near-miss misconception. Do not make wording dense or intentionally ambiguous.
- **Plausible, Length-Balanced Distractors**: Base wrong options on realistic misconceptions or almost-correct alternatives. Keep all four options parallel in grammar, detail, and approximate length. The correct option must never be the uniquely longest or most detailed choice; if it needs a qualifier, give comparable qualifiers to the distractors or rewrite all options more compactly. Do not signal the answer through precision, certainty, or a visibly fuller explanation. Randomly vary correct letters across A–D; avoid predictable sequences.
- **Apply Understanding**: Prefer compact application questions over definition recall. Use a minimal scenario only when it changes the answer. Test recall only for terminology or facts that are foundational to the topic.
- **Important Coverage**: Prioritize core concepts, relationships, invariants, trade-offs, and common failure modes. Avoid trivia, duplicated ideas, and source-code details unless the relevant snippet appears in the question.
- **High-Signal Explanations**: When providing answers, explain _why_ the correct choice is right and _why_ others might be misleading. Provide detailed solutions that cover the underlying logic and context.
- **Contextual Accuracy**: Ensure all questions are grounded in the provided context, avoiding generic external knowledge unless relevant.
- **Persistence**: Save the quiz and solutions as `<topic>_quiz.md` (for example, `bash_quiz.md`) in the target folder.
- **Link Formatting**: Never use `file:///` URLs, absolute filesystem paths, or relative paths in generated or updated `.md` files. Always use Obsidian Wikilinks (e.g., `[[topic_quiz]]` or `[[topic_quiz|Display Label]]`). Both the reference inside the generated `<topic>_quiz.md` file and the reference added to the original source `.md` file MUST use Obsidian Wikilinks.
- **Test Yourself Link**: The Test Yourself link is the sole exception to the Wikilink rule. Use `test-yourself://open?quiz=<URL-encoded vault-relative quiz path>` as its Markdown destination. URL-encode the entire path (including `/`) and never use a vault name or an absolute filesystem path. For example: `[Test Yourself](test-yourself://open?quiz=Computer%20Science%2FLanguages%2FJava%2FAdvanced%2FExercises%20and%20Quiz%2FReactive%20Programming_quiz.md)`. Add one link per file and avoid duplicates.
