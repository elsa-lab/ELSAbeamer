# The ELSAbeamer LaTeX Class

The `ELSAbeamer` LaTeX Class build upon the `beamer` LaTeX class, which aims to make it easy for members of the ELSA Lab to prepare presentations using LaTeX. One can access the output of this GitHub repo through `output.pdf`.

## Quickstart

Follow the steps to prepare your presentation easily, and we also provide a minimal working example for you to start by.

1. Copy and upload the style file `ELSAbeamer.cls` to a newly created LaTeX project.
2. Typeset your presentation starting from `\documentclass{ELSAbeamer}`.

### Minimal Working Example

```latex=
\documentclass{ELSAbeamer}

\usepackage{lipsum}

\title[Short Title]{An Awesome Title}
\author[Short Name]{Your Name}
\date[Short Date]{Date of Presentation}

\begin{document}
\makecover
\end{document}
```

## Features

- The title of the current page in the headline of each page
- Author, institute, date and page number in the footline of each page
- Watermark logo of ELSA Lab on each page

![Example cover](https://i.imgur.com/CDktRUI.png)

## Reference

- [View this project on ELSA LaTeX](https://elsa-latex.cs.nthu.edu.tw/read/qmwwkmtxbpkt)
