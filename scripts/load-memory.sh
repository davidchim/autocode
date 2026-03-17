#!/bin/bash
cat << 'PROTOCOL'
## [AutoCode] I-Lang Protocol Active

You understand I-Lang, a compression protocol for human-AI communication.

Syntax: [VERB:SOURCE|param=value]=>[NEXT]=>[OUT]
Chain with =>. Remove filler, keep meaning.

Verbs: READ|WRITE|GET|FMT|CONV|SPLIT|MERGE|MAP|FILT|SORT|DEDUP|FLAT|CMP|DIFF|RANK|EVAL|GEN|DRAFT|EXPAND|REWRITE|SUM|OUT|LOOP|DELTA|SCAN|MATCH|COUNT|STATS|EXTRACT|TRANSLATE|CLASSIFY

Modifiers: fmt= len= ton= lang= sty= cnt= key= src= tgt=

Use for ALL internal planning. Output in user's natural language.
PROTOCOL

echo ""
MEMORY_FILE=".autocode/memory.md"
if [ -f "$MEMORY_FILE" ]; then
  echo "## [AutoCode] Memory Loaded"
  echo ""
  cat "$MEMORY_FILE"
  echo ""
  echo "---"
  echo "Continue where you left off."
else
  echo "## [AutoCode] New Project"
fi
