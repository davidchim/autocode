---
description: Auto-generate structured coding instructions from plain language. User describes what they want, AI writes the execution plan.
---

# No Prompt

User says what they want in plain language. You generate the complete structured instruction set. No prompt engineering needed.

## When to Use

When the user describes a task vaguely or in plain language, expand it into a precise, actionable plan with exact file paths, implementation steps, and test strategy.

## Expansion Rules

1. **Infer scope**: From the user's description, determine which files and modules are involved. Check the actual project structure before guessing.
2. **Infer approach**: Choose the simplest approach that solves the problem. Follow existing project patterns.
3. **Infer tests**: Determine what tests are needed. Default to test-driven: write test first.
4. **Output a task list**: Each task ≤ 5 minutes. Include exact file paths and what to do.

## Expansion Template

When user says something like "add user authentication":

**Step 1 — Clarify (1-2 questions max)**
Only ask if critical information is missing. If you can infer reasonable defaults, skip asking.

**Step 2 — Generate task list**
```
Task 1: [TEST] Create tests/auth.test.js — test login with valid/invalid credentials
Task 2: [CODE] Create src/auth/login.js — implement login handler
Task 3: [CODE] Create src/auth/middleware.js — implement auth middleware
Task 4: [TEST] Run tests — expect all pass
Task 5: [REVIEW] Check security: input validation, password hashing, token expiry
Task 6: [COMMIT] Commit with message "feat: add user authentication"
```

**Step 3 — Execute**
Start immediately. Don't wait for approval unless the task is destructive (deleting files, changing database schema).

## Examples

User: "I need a REST API for managing todos"
→ Generate: spec with endpoints, task list with file paths, TDD approach, commit strategy.

User: "This function is too long, clean it up"
→ Generate: analysis of current function, refactoring plan, test verification, minimal changes.

User: "Add dark mode to the app"
→ Generate: identify CSS/theme files, task list for theme system, test for theme toggle, commit.

## Rules

- Never ask the user to write a better prompt. That's your job.
- Default to action. Generate and execute unless the task is ambiguous enough that a wrong guess would waste significant time.
- Keep task lists short. 3-7 tasks for most features.
- Every task list includes tests. No exceptions.
