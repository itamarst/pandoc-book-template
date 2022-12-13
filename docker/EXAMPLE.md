---
title: "Your book"
author:
- Your name here
date: "\\date{\\today}"
subtitle: "\\date{\\today}"
documentclass: scrartcl
numbersections: true
mainfont: Rosario
mainfontoptions:
- Numbers=Lining
sansfontoptions:
- Numbers=Lining
sansfont: Rosario
monofont: Ubuntu Mono
monofontoptions:
- Scale=0.8
geometry: margin=0.75in,includefoot
urlcolor: blue
linkcolor: blue
toccolor: blue
colorlinks: true
fontsize: "16pt"
header-includes: |
  \usepackage{fvextra}
  \DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines,commandchars=\\\{\}}
  \usepackage{setspace}
  \setstretch{1.10}
  \usepackage{sectsty}
  \sectionfont{\clearpage}
  \usepackage[document]{ragged2e}
  \usepackage{float}
  \floatplacement{figure}{H}
---

# This is a chapter that won't have number in table of contents {-}

The `{-}` does that. Pandoc also supports labels for references.

See https://pandoc.org/MANUAL.html#pandocs-markdown

# This is a chapter title

Lots o' markdown.

# This is another chapter title

More text.

# Instructions

Change the font from Rosario / Ubuntu Mono to your font of choice; any installed font should work. Change the line spacing by changing value in `\setstretch{}`, it defaults to 1.1.

To convert to PDF:

```
$ pandoc -s --toc --pdf-engine=xelatex -V --toc-depth 2 --highlight-style=tango yourbook.md --out yourbook.pdf
```
