\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ELSAbeamer}[June, 2021 v1.0
    Typesetting slides for members of the ELSA Lab,
    National Tsing Hua University, Hsinchu, Taiwan]

\LoadClass{beamer}
\usetheme{/themeELSA}

%%% Required packages %%%

\RequirePackage{transparent}
\RequirePackage[square,comma,numbers,
    sort&compress]{natbib}

%%% Institute Name %%%

\institute[ELSA Lab, NTHUCS]{%
    ELSA Lab, Department of Computer Science\\
    National Tsing Hua University, Taiwan}

%%% Watermarking Logo %%%

\logo{\transparent{0.4}%
    \includegraphics[height=1.5cm]{%
        beamertheme/elsa-logo.png}}

%%% Customization %%%

% Table of contents before each section
% https://www.overleaf.com/learn/latex/Beamer#Creating_a_table_of_contents
\AtBeginSection[]{
    \begin{frame}<beamer>
        \frametitle{Outline for Section \thesection}
        \tableofcontents[
            currentsection,
            hideothersubsections
        ]
    \end{frame}
}

% Highlight subsections of the current section
% https://tex.stackexchange.com/a/193981
\AtBeginSubsection[]{
    \begin{frame}<beamer>
        \frametitle{Outline for Section \thesection}
        \tableofcontents[
            currentsubsection,
            subsectionstyle=show/shaded/hide
        ]
    \end{frame}
}

% Remove the navigation symbols
% https://stackoverflow.com/a/3210406
\beamertemplatenavigationsymbolsempty

% Numbered entries in the bibliography
% https://tex.stackexchange.com/a/124271
\setbeamertemplate{bibliography item}{%
    \insertbiblabel}

% Create the title page and the outline
\newcommand{\makecover}{
\begin{frame}
    \titlepage
\end{frame}

\begin{frame}{Outline}
    \tableofcontents[hideothersubsections]
\end{frame}
}

% Ways to avoid 'Package hyperref Warning:
%   Token not allowed in a PDF string' warning
% https://tex.stackexchange.com/a/248009
\makeatletter
\newcommand*{\bkmtranslateto}{\languagename}
\newcommand*{\bkmtranslate}[1]{%
  \ifcsname tr@@@\bkmtranslateto @#1\endcsname
    \csname tr@@@\bkmtranslateto @#1\endcsname
  \else
    #1%
  \fi
}
\pdfstringdefDisableCommands{%
    \let\translate\bkmtranslate}
\makeatother

% Create pages for bibliography
\newcommand{\makebib}[1]{
    \section*{Bibliography}
    
    % Hide the foot line
    % https://stackoverflow.com/a/54916411
    % Add external bibtex
    % https://tex.stackexchange.com/a/276020
    \begingroup
    \setbeamertemplate{footline}{}
    \begin{frame}[t, allowframebreaks,% 
        noframenumbering]{Bibliography}
    \scriptsize
    \bibliographystyle{IEEEtran}
    \bibliography{#1}
    \end{frame}
    \endgroup
}
