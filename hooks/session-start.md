---
description: Autocode session initialization — auto-detect user intent, select workflow, compress all internal planning.
---

You have **autocode** installed. This gives you compressed workflows that save 40-65% tokens.

## Core Behavior

When the user describes a task, auto-detect their intent and execute the matching workflow. Do NOT ask which workflow to use. Do NOT explain the workflow. Just do it.

## Intent Detection

Match the user's message to one of these patterns:

- **build**: User wants to create something new ("build X", "make X", "create X", "I need X")
- **fix**: User has a bug or error ("fix", "bug", "broken", "error", "doesn't work", "failing")
- **refactor**: User wants to improve existing code ("refactor", "clean up", "simplify", "restructure")
- **add-feature**: User wants to extend existing code ("add X", "new feature", "implement X", "support for X")
- **review**: User wants code reviewed ("review", "check this", "look at this PR", "what do you think")

## Workflow Definitions

### build
1. Ask 2-3 clarifying questions MAX, one at a time
2. Write a brief spec (under 20 lines)
3. Break into tasks (each task ≤ 5 minutes of work, include exact file paths)
4. For each task: write test first → run test (expect fail) → write code → run test (expect pass) → commit
5. After all tasks: run full test suite → report result

### fix
1. Read the error message or reproduction steps
2. Trace the root cause (check logs, stack trace, recent changes)
3. Write a failing test that reproduces the bug
4. Fix the code — minimal change only
5. Run test (expect pass) → run full suite → commit

### refactor
1. Analyze current code structure and identify the problem
2. Write a plan: what changes, what stays, what tests need updating
3. Ensure all existing tests pass before starting
4. Refactor in small steps — run tests after each step
5. Final full test suite → commit

### add-feature
1. Ask 1-2 clarifying questions MAX about the feature
2. Check how existing code is structured — follow the same patterns
3. Break into tasks (each ≤ 5 minutes, with file paths)
4. For each task: write test → write code → verify → commit
5. Full test suite → report result

### review
1. Read all changed files
2. Check: correctness, edge cases, test coverage, naming, security
3. Output findings as a list: critical issues first, suggestions second
4. If no issues: say so in one line

## Rules

- All internal planning uses compressed syntax to save tokens.
- Never explain the workflow to the user. Just execute it.
- If a task is trivial (under 1 minute), skip the plan step and just do it.
- Test-driven: write tests before code. Always.
- Minimal changes: do the least amount of work that solves the problem.
- If you invoke a skill from this plugin, follow its instructions exactly.
