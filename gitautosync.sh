#!/bin/bash

set -e

cd "$TARGETDIR"

git pull
sleep 5
STATUS=$(git status -s)
if [ -n "$STATUS" ]; then
    echo "$STATUS"
    git add .
    git commit -m "autocommit"
    git push origin
fi
