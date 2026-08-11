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
4.  **Test Yourself Links**: After the quiz is created, automatically add `[Test Yourself](test-yourself://open?quiz=<URL-encoded vault-relative path>)` to both the generated quiz and its source explanation note. Derive the path from the quiz's actual final location; the link always opens that quiz in the Test Yourself app, including when followed from the source note.
5.  **Evaluate with Detailed Solutions**: At the bottom of the file, provide the answers key under a heading named `## Answers`. Each answer must state the question number and the correct letter (e.g., `1. B`), followed immediately by a line starting exactly with `Explanation: ` that explains the reasoning.

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

- **Complex Options and Plausible Distractors**: The 4 answer options must be complicated and present extremely similar arguments, so that only a thorough and detailed study allows distinguishing them. They must not present the typical patterns of the correct answer (for example, the correct answer must not be visibly longer or more articulate, since the detailed explanation will be provided separately). The options must be indistinguishable in terms of length, syntactic complexity, and scientific style. Randomly vary the letter of the correct answer (A, B, C, or D).
- **Targeting Misconceptions**: Explicitly design the highly plausible distractors around well-known traps, anti-patterns, or common beginner misunderstandings. This helps effectively diagnose and course-correct flawed mental models.
- **Scenario-Based Application**: Rather than just testing rote recall of facts (e.g., "What is X?"), frame questions around applying concepts to realistic, novel scenarios (e.g., "Given situation Y, which implementation of X is most appropriate and why?").
- **Clarity and Simplicity**: Use clear, straightforward language and short sentences for both questions and answers. Avoid overly complex wording, convoluted sentence structures, or jargon where simple terms suffice. Make the text easy to comprehend, but ensure the questions remain challenging by using highly plausible distractors that require true understanding of the material to distinguish from the correct answer. The difficulty should come from the concepts, not the sentence complexity.
- **Knowledge Over Code Trivia**: Do not ask questions that depend on recalling specific code (variable names, exact values, line-level details) unless that code snippet is included in the question itself. Questions should test understanding of concepts, logic, and principles rather than memory of the source code.
- **High-Signal Explanations**: When providing answers, explain _why_ the correct choice is right and _why_ others might be misleading. Provide detailed solutions that cover the underlying logic and context.
- **Contextual Accuracy**: Ensure all questions are grounded in the provided context, avoiding generic external knowledge unless relevant.
- **Persistence**: Always ensure the quiz and its solutions are documented in the target folder using the format `<topic>_quiz.md` (e.g., `bash_quiz.md`) to facilitate long-term knowledge retention.
- **Link Formatting**: Never use `file:///` URLs, absolute filesystem paths, or relative paths in generated or updated `.md` files. Always use Obsidian Wikilinks (e.g., `[[topic_quiz]]` or `[[topic_quiz|Display Label]]`). Both the reference inside the generated `<topic>_quiz.md` file and the reference added to the original source `.md` file MUST use Obsidian Wikilinks.
- **Test Yourself Link**: The Test Yourself link is the sole exception to the Wikilink rule. Use `test-yourself://open?quiz=<URL-encoded vault-relative quiz path>` as its Markdown destination. URL-encode the entire path (including `/`) and never use a vault name or an absolute filesystem path. For example: `[Test Yourself](test-yourself://open?quiz=Computer%20Science%2FLanguages%2FJava%2FAdvanced%2FExercises%20and%20Quiz%2FReactive%20Programming_quiz.md)`. Add one link per file and avoid duplicates.
