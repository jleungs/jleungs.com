#!/bin/bash

find src -type f -name "*.md" | while read -r file; do
    target="docs/${file#src/}"
    target="${target%.md}.html"

    mkdir -p "$(dirname "$target")"
    pandoc -s --mathml "$file" -o "$target"
done
