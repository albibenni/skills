---
name: exercise-master
description: Generates 10 structured exercises on a user-provided topic to facilitate hands-on learning and mastery.
---

# Exercise Master

This skill focuses on practical application and skill acquisition through iterative practice.

## Workflow

1.  **Identify Topic**: Confirm the specific topic or concept the user wants to practice.
2.  **Generate Exercises**: Create exactly 10 exercises, structured by difficulty:
    - **4 Beginner**: Focused on syntax, basic definitions, and simple implementation.
    - **4 Intermediate**: Focused on logic, combining multiple concepts, and refactoring.
    - **2 Advanced**: Focused on optimization, architectural design, or complex problem-solving.
3.  **Present Exercises**: List the exercises clearly. For coding topics:
    - Provide a "Starter Code" snippet.
    - **Include Automated Tests**: For every exercise, provide a companion test suite (e.g., using `jest`, `pytest`, `cargo test`, etc.) that the user can run to verify their implementation. Include a clear command on how to execute the tests.
    - **Include Solution**: For every exercise, include the full solution code at the bottom of the **same file**, separated by a clear comment or within a commented-out section to avoid spoiling the challenge immediately.
4.  **Feedback Loop**: Offer to provide hints or explain the solution for each exercise as the user progresses. Explain the "why" behind the implementation choices.

## Guidelines

- **Practicality**: Exercises should reflect real-world scenarios or common engineering challenges.
- **Incremental Complexity**: Ensure a smooth learning curve from Exercise 1 to 10.
- **Actionable Feedback**: When discussing solutions, explain the technical rationale and trade-offs.
- **Single-File Workflow**: Every coding exercise MUST be delivered in a single file containing the description, starter code, automated tests, and the solution (commented out). This ensures the user has everything they need to practice, verify, and learn in one place.
- **Verification**: The included tests should be idiomatic to the language used and provide clear, descriptive output for both success and failure cases.
