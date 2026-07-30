---
name: code-worksheet-master
description: Generates an interactive fill-in-the-blank worksheet (.worksheet.md) designed for code exercises, such as writing SQL queries or small snippets of code on a specific aspect.
---

# Code Worksheet Master

This skill creates "Code Worksheets" (fill-in-the-blank drills) to verify understanding of specific coding syntax, like SQL queries, JavaScript functions, or API usage.

## Workflow

1.  **Analyze Context**: Identify the coding topic requested by the user (e.g., SQL JOINs, React useEffect, Rust Option matching).
2.  **Generate Worksheet**: Create a fill-in-the-blank markdown document where critical parts of code snippets or queries are replaced with the `{{correct_answer}}` syntax.
3.  **Persist**: Write the full document to a file named `<topic>.worksheet.md` in the target folder.

## Strict Formatting Requirements

The generated `<topic>.worksheet.md` file MUST strictly adhere to the following format so it can be parsed correctly by the Test Yourself application frontend and Rust backend:

1. **Frontmatter**: The file MUST begin with YAML frontmatter containing `type: worksheet` and the `topic`.
2. **Blank Syntax**: Use double curly braces containing the exact correct answer to denote a blank space: `{{answer}}`.
3. **No Whitespace Padding**: Do not pad the inside of the braces with spaces. Use `{{SELECT}}`, not `{{ SELECT }}`.
4. **Context Clues**: Ensure the prompt or comments surrounding the code block provide enough technical context for the user to deduce what goes in the blanks.
5. **Code Blocks**: The main content of the worksheet should be markdown code blocks (e.g., ```sql or ```javascript), with the blanks inside them.

### Example Format:

```markdown
---
type: worksheet
topic: SQL_Joins
---

# SQL Joins Practice

1. Retrieve all users and their corresponding orders. If a user doesn't have an order, still include the user in the result.

` ` `sql
SELECT users.name, orders.amount
FROM users
{{LEFT JOIN}} orders {{ON}} users.id = orders.user_id;
` ` `

2. Find the total number of orders for each user.

` ` `sql
SELECT users.name, {{COUNT(orders.id)}}
FROM users
JOIN orders ON users.id = orders.user_id
{{GROUP BY}} users.name;
` ` `
```
*(Note: use standard triple backticks for code blocks, not padded ones as shown in the nested markdown example above).*

## Guidelines

- **Focus on Logic and Syntax**: Blank out the important keywords, operators, or variables that actually test the user's understanding of the concept.
- **Answer Length**: Keep answers inside the `{{}}` relatively short (1 to 4 words). Do not blank out entire lines of code unless it's a very simple and standard pattern, as this becomes too frustrating to guess exactly.
- **Multiple Blanks**: It is highly encouraged to have multiple blanks in a single snippet if they test related concepts (e.g., both `GROUP BY` and the aggregation function).
- **Progressive Difficulty**: Start the worksheet with basic syntax, and progressively test deeper implementation details or edge cases as the worksheet goes on.
