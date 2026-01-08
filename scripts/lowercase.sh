#!/bin/bash
for f in *; do
    mv "$f" "$(echo "$f" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -d "'")"
done
