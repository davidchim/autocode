# Installing AutoCode for Codex

## Installation

```bash
git clone https://github.com/ilang-ai/autocode.git ~/.codex/autocode
```

Add to `~/.codex/AGENTS.md`:

```markdown
## AutoCode

Before writing any code, read all skill files in ~/.codex/autocode/skills/ and follow their instructions automatically. Each skill activates based on context — never skip the clarify-scope skill before coding.
```

## Verify

```bash
ls ~/.codex/autocode/skills/
```

39 skills loaded. Describe what you want to build.

## Update

```bash
cd ~/.codex/autocode && git pull
```
