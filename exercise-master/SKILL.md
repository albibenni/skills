---
name: exercise-master
description: Generates 10 structured exercises on a user-provided topic to facilitate hands-on learning and mastery.
---

# Exercise Master

This skill focuses on practical application and skill acquisition through iterative practice.

## Workflow

1.  **Identify Topic**: Confirm the specific topic or concept the user wants to practice.
2.  **Generate Exercises**: Create exactly 10 exercises, structured by difficulty:
    *   **4 Beginner**: Focused on syntax, basic definitions, and simple implementation.
    *   **4 Intermediate**: Focused on logic, combining multiple concepts, and refactoring.
    *   **2 Advanced**: Focused on optimization, architectural design, or complex problem-solving.
3.  **Present Exercises**: List the exercises clearly. For coding topics:
    *   Provide a "Starter Code" snippet.
    *   **Include Automated Tests**: For every exercise, provide a companion test suite (e.g., using `jest`, `pytest`, `cargo test`, etc.) that the user can run to verify their implementation. Include a clear command on how to execute the tests.
    *   **Include Code**: For every exercise, provide a solution code at the bottom of the file
4.  **Feedback Loop**: Offer to provide hints or the full solution for each exercise as the user progresses.

## Guidelines

*   **Practicality**: Exercises should reflect real-world scenarios or common engineering challenges.
*   **Incremental Complexity**: Ensure a smooth learning curve from Exercise 1 to 10.
*   **Actionable Feedback**: If solutions are requested, explain the "why" behind the implementation choices.
*   **Verification**: Every coding exercise MUST include a corresponding test suite. These tests should be idiomatic to the language used and provide clear, descriptive output for both success and failure cases.
