#!/bin/bash
# AutoCode: Load I-Lang protocol + global prefs + project memory

# I-Lang Protocol
cat << 'PROTOCOL'
## [AutoCode] I-Lang Protocol Active

Compression protocol for internal planning. User never sees this syntax.
Syntax: [VERB:SOURCE|param=value]=>[NEXT]=>[OUT]
Chain with =>. Remove filler, keep meaning.
Verbs: READ|WRITE|GET|FMT|CONV|SPLIT|MERGE|MAP|FILT|SORT|DEDUP|FLAT|CMP|DIFF|RANK|EVAL|GEN|DRAFT|EXPAND|REWRITE|SUM|OUT|LOOP|DELTA|SCAN|MATCH|COUNT|STATS|EXTRACT|TRANSLATE|CLASSIFY
Modifiers: fmt= len= ton= lang= sty= cnt= key= src= tgt=
PROTOCOL

echo ""

# Global user preferences (cross-project)
GLOBAL_PREFS="$HOME/.autocode/user.md"
if [ -f "$GLOBAL_PREFS" ]; then
  echo "## [AutoCode] User Preferences Loaded"
  cat "$GLOBAL_PREFS"
  echo ""
fi

# Project memory
MEMORY_FILE=".autocode/memory.md"
if [ -f "$MEMORY_FILE" ]; then
  echo "## [AutoCode] Project Memory Loaded"
  echo ""
  cat "$MEMORY_FILE"
  echo ""
  echo "---"
  echo "Continue where you left off."
else
  echo "## [AutoCode] New Project"
fi
