#!/bin/bash
MEMORY_FILE=".autocode/memory.md"
if [ -f "$MEMORY_FILE" ]; then
  echo "## [autocode] Session Memory Loaded"
  echo ""
  cat "$MEMORY_FILE"
  echo ""
  echo "---"
  echo "Continue where you left off."
else
  echo "## [autocode] New Project — no previous memory"
fi
