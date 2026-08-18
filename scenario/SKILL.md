---
name: scenario
description: Create complementary quizzes, reconstruction worksheets, and scenario-based labs from learning material. Use when asked to test, teach, assess, or verify genuine understanding of a concept, technical note, article, design, system, or implementation—not just factual recall.
---

# Scenario

## Overview

Build an assessment that distinguishes recall from genuine understanding. Combine modes when the learner needs durable mastery; generate only the requested mode when scope is narrow.

## Workflow

1. Read the source material and identify its learning objectives, causal relationships, vocabulary, decision rules, failure modes, and misconceptions.
2. Choose the smallest useful set of modes:
   - **Quiz**: retrieve facts, definitions, distinctions, and consequences.
   - **Worksheet**: reconstruct a process, model, architecture, comparison, or dependency graph.
   - **Scenario lab**: apply the material to make predictions, diagnose failures, choose an action, or critique an implementation.
3. State the objective tested by each exercise. Avoid duplicating the same fact across modes.
4. Create a separate answer key with concise reasoning. For open-ended prompts, include acceptance criteria rather than a single exact phrasing.
5. Check that success requires using the source material's ideas, not guessing from superficial keywords.

## Design Each Mode

### Quiz: Can the learner recall it?

- Prefer 6–12 questions with one clear best answer.
- Mix definitions with contrast and consequence questions; do not rely only on terminology.
- Make wrong options plausible misconceptions from the material.
- Include explanations for every answer, including why tempting distractors are wrong.

### Worksheet: Can the learner reconstruct it?

- Use fill-in-the-blank flows, matching, sequencing, comparison tables, labeling, or short diagram prompts.
- Remove only information that the learner should actively retrieve; retain enough context to prevent ambiguity.
- For a complex system, test components, their responsibilities, and the order in which they interact.

### Scenario lab: Can the learner use it?

- Provide all relevant evidence: identities, configuration, logs, policies, constraints, or observed symptoms.
- Ask for a prediction, diagnosis, decision, and rationale. Make the learner distinguish adjacent layers (for example, cryptographic validation versus authorization).
- Include at least one failure or boundary case, such as expired credentials, a mismatched identity, stale rotation, missing trust, or an over-broad policy.
- For technical material, add a code/configuration review prompt when it naturally tests real implementation risks.

## App File Contract

When creating a scenario lab for Test Yourself, write it as `Exercises and Quiz/<filename>.scenario.md` under the related note's folder. If `Exercises and Quiz` does not exist, create it. Use this structure so the app can keep the solution hidden until the learner reveals it:

```markdown
---
date created: ...
---

# Title

## Scenario

Give the facts, evidence, configuration, logs, and constraints.

## Your Response

Ask the learner to predict, diagnose, decide, and explain why.

## Answer Key

Give the outcome, reasoning, and acceptance criteria.
```

Keep `## Answer Key` as a level-two heading with exactly that name (or use `## Model Answer` / `## Solution`). The app recognizes those headings and hides their contents by default. The app renders paragraphs, numbered lists, inline code, and fenced code blocks.

### Cross-link and Open in Test Yourself

After creating a scenario, update both Markdown files:

1. In the source note, add exactly one scenario reference using an Obsidian Wikilink:
   ```markdown
   - Scenario: [[<filename>.scenario | <filename> Scenario]]
   ```
   For example: `- Scenario: [[SPIFFE-SPIRE and mTLS.scenario | SPIFFE-SPIRE and mTLS Scenario]]`.
2. In the scenario file, add an Obsidian Wikilink back to the source note.
3. Add one `[Test Yourself](test-yourself://open?quiz=<URL-encoded vault-relative scenario path>)` link to both files. Derive the path from the scenario file's final location, URL-encode the entire vault-relative path (including `/`), and never use an absolute path or vault name. Avoid duplicate links.

The Test Yourself deep link is the sole exception to using Obsidian Wikilinks in Markdown links.

## Output Format

Unless the user requests a different format, produce:

1. A one-sentence learning goal.
2. `Quiz`, `Worksheet`, and `Scenario lab` sections, each labeled with the capability it assesses.
3. An `Answer key` section immediately after the exercises, hidden in a collapsible block if the target format supports it.
4. A short `Mastery criteria` section describing what a correct explanation or solution must include.

## Quality Bar

- Test relationships, trade-offs, and failure handling in addition to names and definitions.
- Keep terminology and assumptions consistent with the source.
- Do not treat a valid credential, successful connection, or correct API call as proof that the operation is authorized or safe unless the source establishes that connection.
- Calibrate difficulty: begin with a representative case, then vary one condition at a time.
- Flag source ambiguities or inaccuracies that prevent a fair assessment instead of silently inventing rules.
