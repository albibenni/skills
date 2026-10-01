---
name: question-master
description: Create or revise Test Yourself open-question documents from learning material. Use for `.question.md` files with numbered prompts and individually matched suggested answers; do not use for multiple-choice quizzes or fill-in-the-blank worksheets.
---

# Question Master

Create open-ended questions that require explanation, application, comparison, diagnosis, or prediction rather than superficial recall.

## Workflow

1. Read the source and identify its learning objectives, causal relationships, trade-offs, failure modes, and likely misconceptions.
2. Write at least two distinct questions. Prefer questions whose answers demonstrate reasoning; avoid duplicating the same fact in different wording.
3. Give every question one concise suggested answer. Include the reasoning or acceptance criteria needed to evaluate a differently worded learner response.
4. Save the result with a `.question.md` suffix and validate it against the contract below.

## File Contract

Use one questions section followed by one suggested-answers section. Headings may independently use English or Italian and are case-insensitive:

- `## Questions` or `## Domande`
- `## Suggested Answers` or `## Risposte suggerite`

Number both sections consecutively from `1` through `N`. Each answer must have the same number as exactly one question. Do not use letters, skip numbers, duplicate numbers, or add unmatched entries.

```markdown
# Topic Title

## Questions

1. First open-ended question?

2. Second open-ended question?

## Suggested Answers

1. Suggested answer to the first question.

2. Suggested answer to the second question.
```

Questions and answers may contain paragraphs, inline code, fenced code blocks, and nested lists. Indent nested numbered lists so only the question or answer identifiers begin at the left margin.

When a related source note and vault structure are available, place the document under that note's `Exercises and Quiz` folder unless the user specifies another location. Add a single Obsidian Wikilink between the source and question documents when editing both is in scope. A Test Yourself link may use `test-yourself://open?quiz=<URL-encoded vault-relative .question.md path>`; never put an absolute filesystem path in that link.

## Quality Check

Before finishing, confirm that:

- there are at least two questions;
- the required sections occur once and in the required order;
- both sections use the exact consecutive sequence `1..N`;
- every suggested answer addresses its matching question;
- terminology and assumptions remain faithful to the source;
- ambiguous source material is identified instead of silently inventing a rule.
