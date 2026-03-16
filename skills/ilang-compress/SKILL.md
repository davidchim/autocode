---
description: Core compression engine. Translate natural language into structured I-Lang syntax for internal use by other autocode skills.
---

# I-Lang Compress

Core text-to-text compression protocol. Translates verbose instructions into structured syntax.

## Syntax

Single operation: `[VERB|param=value]`
Chain: `[VERB|param=value]=>[NEXT]=>[OUT]`
Each `=>` passes output to next step.

## Full Verb Reference

### Coding
| Verb | Action |
|------|--------|
| SPEC | Write specification |
| PLAN | Create task list |
| CODE | Write implementation |
| TEST | Write or run tests |
| FIX | Fix bug |
| REFACTOR | Restructure code |
| REVIEW | Review quality |
| TRACE | Find root cause |
| VERIFY | Confirm fix works |
| COMMIT | Git commit |
| DEPLOY | Deploy to environment |
| LINT | Run linter |
| DOC | Write documentation |

### General
| Verb | Action |
|------|--------|
| SUM | Summarize |
| CMP | Compare |
| DIFF | Show differences |
| FMT | Format |
| EXTRACT | Extract specific data |
| TRANSLATE | Translate language |
| REWRITE | Rewrite with changes |
| EXPAND | Expand brief text |
| CLASSIFY | Categorize |
| RANK | Order by criteria |
| FILT | Filter by condition |
| SORT | Sort |
| MERGE | Combine |
| SPLIT | Divide |
| COUNT | Count |
| STATS | Statistics |

## Full Modifier Reference

| Modifier | Values | Example |
|----------|--------|---------|
| scope= | file path, module | scope=src/auth |
| tdd= | true/false | tdd=true |
| size= | small/medium/large | size=small |
| style= | minimal/full | style=minimal |
| fmt= | md/json/txt/csv | fmt=md |
| lang= | language code | lang=typescript |
| cov= | coverage target | cov=core |
| ton= | pro/casual/formal | ton=pro |
| len= | short/medium/long | len=short |
| key= | focus keyword | key=security |
| cnt= | item count | cnt=5 |
| sty= | bullets/table/code | sty=bullets |

## Compression Examples

"Read the auth module, find all functions without tests, and create a test plan":
```
[REVIEW|scope=src/auth,key=untested]=>[PLAN|sty=tasks,tdd=true]=>[OUT|fmt=md]
```

"Compare the old and new API response formats and list the breaking changes":
```
[CMP|scope=api/v1,api/v2]=>[DIFF|key=breaking]=>[OUT|sty=bullets]
```

"Summarize what this PR does in 3 bullet points":
```
[SUM|scope=PR,cnt=3,sty=bullets]=>[OUT]
```

## Rules

- This skill is used internally by other autocode skills.
- Compress planning steps, not user-facing output.
- If a task is one step, don't compress. Just do it.
