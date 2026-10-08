#!/usr/bin/env bash
# Exits 1 when README.md, PRIVACY.md or SECURITY.md carries a claim we no longer
# make or the policy pages miss a product they cover, and 0 when clean.
# Run from anywhere: tools/check-claims.sh
set -u
cd "$(dirname "$0")/.." || exit 2

status=0
hit() { echo "$1: $2"; status=1; }
# the file on one line, so a phrase the hard wrap splits still matches
flat() { tr -s '[:space:]' ' ' < "$1"; }

for phrase in 'bought once' 'one-time' '12 months of updates' 'the two a pasted Pro key makes'; do
  flat README.md | grep -qiF -- "$phrase" && hit README.md "says \"$phrase\""
done

for f in PRIVACY.md SECURITY.md; do
  for phrase in 'store nothing of their own' 'one small record' 'two VS Code extensions'; do
    flat "$f" | grep -qiF -- "$phrase" && hit "$f" "says \"$phrase\""
  done
  for app in 'Lens File, Log, & Attachment Viewer for Confluence' 'Lens File, Log, & Attachment Viewer for Jira'; do
    flat "$f" | grep -qF -- "$app" || hit "$f" "does not name $app"
  done
  extensions=$(flat "$f" | grep -o 'VS Code extensions ([^)]*)')
  for ext in 'JSONL Lens' 'Parquet Lens' 'Log Lens'; do
    grep -qF -- "$ext" <<< "$extensions" || hit "$f" "does not name $ext among the VS Code extensions"
  done
done

[ "$status" -eq 0 ] && echo clean
exit "$status"
