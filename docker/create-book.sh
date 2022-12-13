#!/bin/bash

docker run --rm --volume \
    "`pwd`:/data" \
    --user `id -u`:`id -g` \
    xelatex-pandoc-ubuntu pandoc -s --toc --pdf-engine=xelatex -V --toc-depth=2 --highlight-style=tango README.md --out README.pdf

