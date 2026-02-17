#!/usr/bin/env bash
# List the N most recent screenshots from the POE2 screenshot folder
# Usage: latest-screenshots.sh [count]
#   count: number of screenshots to list (default: 1)

SCREENSHOT_DIR="/mnt/c/Users/ryanl/Desktop/poe2"
COUNT="${1:-1}"

if [ ! -d "$SCREENSHOT_DIR" ]; then
  echo "ERROR: Screenshot directory not found: $SCREENSHOT_DIR" >&2
  echo "Create it: mkdir -p '$SCREENSHOT_DIR'" >&2
  exit 1
fi

# List files sorted by modification time (newest first), limited to image files
files=$(ls -t "$SCREENSHOT_DIR"/*.{png,jpg,jpeg,bmp,webp} 2>/dev/null | head -n "$COUNT")

if [ -z "$files" ]; then
  echo "No screenshots found in $SCREENSHOT_DIR" >&2
  exit 1
fi

echo "$files"
