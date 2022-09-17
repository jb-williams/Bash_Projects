#!/usr/bin/env bash

# quick pandoc script to format markdown docs into pdfs

pandoc "$1" \
    -f gfm \
    --include-in-header chapter_break.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    --pdf-engine=xelatex \
    --toc
    -o "$2"
