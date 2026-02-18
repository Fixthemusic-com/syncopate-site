#!/usr/bin/env bash
# generate-api-docs.sh
# Run from the repo root: bash web/scripts/generate-api-docs.sh
# Generates API reference markdown from SDK source and places it into the
# Astro content collection at web/src/content/docs/api-{python,typescript}/

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
WEB_DIR="$REPO_ROOT/web"
PYTHON_OUT="$WEB_DIR/src/content/docs/docs/api-python"
TS_OUT="$WEB_DIR/src/content/docs/docs/api-typescript"

echo "=== Syncopate API Docs Generator ==="
echo "Repo root: $REPO_ROOT"

# ─── Python API (pydoc-markdown) ────────────────────────────

echo ""
echo "--- Python SDK ---"

# Check if pydoc-markdown is available
if ! command -v pydoc-markdown &> /dev/null; then
  echo "⚠  pydoc-markdown not found, skipping Python API docs."
  echo "   Install: pip install pydoc-markdown"
else
  rm -rf "$PYTHON_OUT"
  mkdir -p "$PYTHON_OUT"

  cd "$REPO_ROOT"

  # Generate one markdown file per module
  MODULES=(
    "syncopate.bot"
    "syncopate.client"
    "syncopate.gateway"
    "syncopate.http"
    "syncopate.errors"
    "syncopate.commands.context"
    "syncopate.commands.core"
    "syncopate.models.user"
    "syncopate.models.workspace"
    "syncopate.models.channel"
    "syncopate.models.message"
    "syncopate.models.member"
  )

  ORDER=1
  for module in "${MODULES[@]}"; do
    # Module basename for the filename
    basename="${module##*.}"
    outfile="$PYTHON_OUT/${basename}.mdx"

    # Human-readable title
    title=$(echo "$basename" | sed 's/_/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')

    echo "  Generating: $module → $outfile"

    # Generate the markdown body
    body=$(pydoc-markdown -m "$module" -p syncopate \
      --search-path sdk/python/src \
      --render-toc 2>/dev/null || echo "_Documentation could not be generated for this module._")

    # Write with Astro frontmatter
    cat > "$outfile" <<EOF
---
title: "${title}"
description: "API reference for ${module}"
sidebar:
  order: ${ORDER}
---

${body}
EOF

    ORDER=$((ORDER + 1))
  done

  echo "  ✅ Python API docs generated (${#MODULES[@]} modules)"
fi

# ─── TypeScript API (TypeDoc) ───────────────────────────────

echo ""
echo "--- TypeScript SDK ---"

TS_SDK="$REPO_ROOT/sdk/typescript"

if [ ! -f "$TS_SDK/node_modules/.package-lock.json" ] && [ ! -d "$TS_SDK/node_modules/typescript" ]; then
  echo "  ⚠  TypeScript SDK node_modules not found. Run: cd sdk/typescript && npm install"
  echo "  Skipping TypeScript API docs."
else
  rm -rf "$TS_OUT"
  mkdir -p "$TS_OUT"

  # Check for typedoc in the web project
  cd "$WEB_DIR"

  if ! npx typedoc --version &> /dev/null 2>&1; then
    echo "  ⚠  typedoc not found, skipping TypeScript API docs."
    echo "  Install: cd web && npm install -D typedoc typedoc-plugin-markdown"
  else
    echo "  Running typedoc..."

    TEMP_TS_OUT=$(mktemp -d)

    npx typedoc \
      --entryPoints "$TS_SDK/src/index.ts" \
      --tsconfig "$TS_SDK/tsconfig.json" \
      --out "$TEMP_TS_OUT" \
      --plugin typedoc-plugin-markdown \
      --outputFileStrategy modules \
      --hideBreadcrumbs true \
      --hidePageHeader true \
      2>/dev/null || true

    # Post-process: add Astro frontmatter to each generated file
    ORDER=1
    for mdfile in "$TEMP_TS_OUT"/*.md; do
      [ -f "$mdfile" ] || continue
      basename_file=$(basename "$mdfile" .md)
      title=$(echo "$basename_file" | sed 's/-/ /g' | sed 's/_/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')

      outfile="$TS_OUT/${basename_file}.mdx"

      # Prepend frontmatter
      {
        echo "---"
        echo "title: \"${title}\""
        echo "description: \"API reference for @syncopate/sdk — ${title}\""
        echo "sidebar:"
        echo "  order: ${ORDER}"
        echo "---"
        echo ""
        cat "$mdfile"
      } > "$outfile"

      ORDER=$((ORDER + 1))
    done

    rm -rf "$TEMP_TS_OUT"
    echo "  ✅ TypeScript API docs generated"
  fi
fi

echo ""
echo "=== Done ==="
