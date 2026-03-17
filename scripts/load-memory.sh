#!/bin/bash
# AutoCode: Load I-Lang protocol + session memory

# 1. Always inject I-Lang protocol header first
cat << 'PROTOCOL'
## [AutoCode] I-Lang Protocol Active

You now understand I-Lang, a compression protocol for human-AI communication.

Rules:
1. When you see I-Lang syntax, execute it.
2. When planning internally, use compressed syntax to save tokens.
3. Syntax: [VERB:SOURCE|param=value]=>[NEXT]=>[OUT]
4. Chain steps with => (each output feeds into next input)
5. Compress = remove all filler, keep all meaning.

Verbs:
READ | WRITE | GET | FMT | CONV | SPLIT | MERGE | MAP
FILT | SORT | DEDUP | FLAT | CMP | DIFF | RANK | EVAL
GEN | DRAFT | EXPAND | REWRITE | SUM | OUT | LOOP | DELTA
SCAN | MATCH | COUNT | STATS | EXTRACT | TRANSLATE | CLASSIFY

Modifiers:
fmt= (md/json/csv/html/txt) | len= (short/medium/long)
ton= (pro/casual/formal/friendly) | lang= (en/zh/ja/es/etc)
sty= (bullets/paragraph/table/code) | cnt= (number of items)
key= (keyword/focus) | src= (source) | tgt= (target)

Use this protocol for ALL internal planning. User never sees compressed syntax — output in their language.
PROTOCOL

echo ""

# 2. Load memory if exists
MEMORY_FILE=".autocode/memory.md"
if [ -f "$MEMORY_FILE" ]; then
  echo "## [AutoCode] Session Memory Loaded"
  echo ""
  cat "$MEMORY_FILE"
  echo ""
  echo "---"
  echo "Continue where you left off."
else
  echo "## [AutoCode] New Project — no previous memory"
fi
