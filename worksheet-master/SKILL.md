---
name: worksheet-master
description: Generates an interactive fill-in-the-blank worksheet (.worksheet.md) designed to help memorize complex architectures, sequences, or code snippets (like auth flows).
---

# Worksheet Master

This skill creates "Worksheets" (fill-in-the-blank drills) to verify step-by-step understanding of technical flows, architectures, and sequences.

## Workflow

1.  **Analyze Context**: Identify sequential flows, pipelines, code architectures, or step-by-step processes (e.g., OAuth/PKCE flows, CI/CD steps, state machine transitions) in the provided context.
2.  **Generate Worksheet**: Create a fill-in-the-blank markdown document where critical terms, variables, or steps are replaced with the `{{correct_answer}}` syntax. 
3.  **Persist**: Write the full document to a file named `<topic>.worksheet.md` in the target folder.

## Strict Formatting Requirements

The generated `<topic>.worksheet.md` file MUST strictly adhere to the following format so it can be parsed correctly by the Test Yourself application frontend and Rust backend:

1. **Frontmatter**: The file MUST begin with YAML frontmatter containing `type: worksheet` and the `topic`.
2. **Blank Syntax**: Use double curly braces containing the exact correct answer to denote a blank space: `{{answer}}`.
3. **No Whitespace Padding**: Do not pad the inside of the braces with spaces. Use `{{code_verifier}}`, not `{{ code verifier }}` (unless the answer itself requires spaces, e.g., `{{Authorization header}}`).
4. **Context Clues**: Ensure the sentence surrounding the `{{blank}}` provides enough technical context for the user to deduce what goes there.

### Example Format:

```markdown
---
type: worksheet
topic: PKCE
---

# PKCE Authorization Code Flow

1. The client application creates a cryptographically random string called the {{code_verifier}}.
2. The client then calculates the SHA-256 hash of this string, which is known as the {{code_challenge}}.
3. The client redirects the user to the authorization server, including the `code_challenge` and setting the `code_challenge_method` to {{S256}}.
4. After the user logs in, the authorization server redirects back to the client with an {{authorization code}}.
5. The client sends a POST request to the token endpoint exchanging the authorization code and providing the original {{code_verifier}} to prove its identity.
```

## Guidelines

- **Focus on the "Why" and "How"**: Blank out the "glue" words, security terms, or variable names that actually matter to understanding the flow. Do not blank out obvious conjunctions or filler words.
- **Answer Length**: Keep answers inside the `{{}}` relatively short (1 to 4 words). Do not blank out entire sentences, as this becomes too frustrating to guess exactly.
- **Multiple Blanks**: It is highly encouraged to have multiple blanks in a single sentence if they test related concepts.
- **Progressive Difficulty**: Start the worksheet with basic definitions or the start of a flow, and progressively test deeper implementation details or edge cases as the worksheet goes on.
