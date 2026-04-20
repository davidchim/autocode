# Installing AutoCode for OpenCode

## Installation

```bash
git clone https://github.com/ilang-ai/autocode.git ~/.config/opencode/autocode
```

Add to your project `.opencode/AGENTS.md`:

```markdown
## AutoCode

Before writing any code, read all skill files in ~/.config/opencode/autocode/skills/ and follow their instructions automatically. Each skill activates based on context — never skip the clarify-scope skill before coding.
```

## Verify

```bash
ls ~/.config/opencode/autocode/skills/
```

46 skills loaded. Describe what you want to build.

## Update

```bash
cd ~/.config/opencode/autocode && git pull
```
