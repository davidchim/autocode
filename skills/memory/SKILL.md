---
name: memory
description: Manage persistent project memory across Claude Code sessions. Use when saving, loading, or updating .autocode/memory.md.
---

# Memory Skill

You manage persistent project memory stored at `.autocode/memory.md`.

## Memory File Format

```markdown
## Project
[project-name] | [stack] | [key-files]

## Decisions
[DECISION] description — YYYY-MM-DD

## State
[DONE] what was completed
[WORKS] what's working
[BROKEN] what's broken or incomplete

## Next
- [ ] immediate task
```

## Rules

1. Max 200 lines — compress aggressively
2. Merge, don't overwrite — old decisions stay, new ones append
3. Deduplicate — keep most recent version
4. Compress — use I-Lang syntax where possible
5. Date decisions — every [DECISION] gets a date
6. No secrets — never store API keys, passwords, tokens
7. No code — describe what was done, not how
