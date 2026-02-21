#!/bin/bash
# deploy.sh — Run from ~/Projects/brain-score-preview
# Usage: bash deploy.sh "Your commit message here"

SRC=~/Library/CloudStorage/GoogleDrive-peter@drinkkenetik.com/My\ Drive/brain-score-files

cp "$SRC/index.html" .
cp "$SRC/stroop.html" .
cp "$SRC/dsst.html" .
cp "$SRC/favicon.svg" .

git add -A
git commit -m "${1:-Update brain score files}"
git push origin main

echo "Done — pushed to brain-score-preview"
