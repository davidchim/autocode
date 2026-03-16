---
description: Compress verbose coding prompts into structured one-line instructions. Save 40-65% tokens on every task.
---

# Less Token

Compress verbose natural language into structured instructions. Same result, fewer tokens.

## When to Use

Use this skill whenever you are about to execute a multi-step task. Before executing, compress your internal plan into structured syntax.

## Compression Syntax

Format: `[VERB|param=value]=>[NEXT]=>[OUT]`

Chain steps with `=>`. Each step's output feeds into the next.

## Coding Verbs

| Verb | Meaning |
|------|---------|
| SPEC | Write specification |
| PLAN | Break into tasks |
| CODE | Write implementation |
| TEST | Write or run tests |
| FIX | Fix a bug |
| REFACTOR | Restructure code |
| REVIEW | Review code quality |
| TRACE | Trace root cause |
| VERIFY | Verify fix works |
| COMMIT | Stage and commit |
| SUM | Summarize |
| CMP | Compare |
| DIFF | Show differences |
| FMT | Format output |

## Modifiers

| Mod | Values |
|-----|--------|
| tdd= | true/false (test-driven) |
| scope= | file path or module name |
| size= | small/medium/large |
| style= | minimal/full |
| fmt= | md/json/txt |
| lang= | programming language |
| cov= | test coverage target |

## Examples

Build a login page:
```
[SPEC|scope=auth,features=email+oauth]=>[PLAN|size=small,tdd=true]=>[CODE]=>[TEST|cov=core]=>[REVIEW]=>[COMMIT]
```

Fix a failing test:
```
[TRACE|scope=tests/auth.test.js]=>[FIX|style=minimal]=>[TEST]=>[VERIFY]=>[COMMIT]
```

Refactor a module:
```
[REVIEW|scope=src/utils]=>[PLAN|style=minimal]=>[REFACTOR]=>[TEST]=>[COMMIT]
```

Add API endpoint:
```
[SPEC|scope=api/users,method=POST]=>[CODE|tdd=true]=>[TEST]=>[REVIEW]=>[COMMIT]
```

## Rules

- Compress BEFORE executing. Not after.
- Internal plans should be compressed. User-facing output stays natural language.
- If the task is trivial (one file, one change), skip compression and just do it.
