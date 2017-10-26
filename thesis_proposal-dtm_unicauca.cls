% ===================================
% Class: thesis_proposal-dtm_unicauca
% -----------------------------------
%   LaTeX template for the thesis proposals of the graduate programs of the Telematics Department of the University of Cauca
%
%   Date:    2017/06/22
%   Version: v1.1
%   Authors: Edwin Ferney Castillo
%
%   Distributed under the Apache license, Version v2.0
%   Copyright 2017 Edwin Ferney Castillo <festradasolano at gmail>
%   Based on Keith A. Gillow's OCIAM Thesis class
%
%   Repository: -
% =============================

% --------------
% Identification
% --------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis_proposal-dtm_unicauca}[2017/11/30 v1.0 Thesis Proposal DTm Unicauca]
%\typeout{repository}

% ----------------
% Class Definition
% ----------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,twoside]{article}

% --------------
% Other commands
% --------------

% Disable vertical justifying
\raggedbottom

% Disable indent
\setlength{\parindent}{0em}

% Paragraph spacing for cover and contents
\setlength{\parskip}{3pt}

% Configure line spacing for cover title
\usepackage{setspace}

% Configure paragraph spacing for headings
\usepackage{titlesec}

% Paragraph spacing for sections in contents
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{12pt plus 4pt minus 2pt}

% Paragraph spacing for subsections in documents
\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{6pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% Paragraph spacing for lists
\def\@listI{\topsep\z@}

% Use font BrushScriptX-Italic
\usepackage[T1]{pbsi}
\usepackage[T1]{fontenc}

% ------------
% Declarations
% ------------
% These macros are used to declare arguments needed for the construction of the cover page

% The name of the degree (e.g., Master's, Doctor's, Doctorate)
\def\degree#1{\gdef\@degree{#1}}
% The name of the program without degree
\def\program#1{\gdef\@program{#1}}
% The full name of the advisor
\def\advisor#1{\gdef\@advisor{#1}}
% The abbreviated advisor's degree (e.g., M.Sc., Ph.D.)
\def\advisordegree#1{\gdef\@advisordegree{#1}}
% The name of the line of research
\def\lineresearch#1{\gdef\@lineresearch{#1}}
% The month the thesis proposal is submitted
\def\submitmonth#1{\gdef\@submitmonth{#1}}
% The year the thesis proposal is submitted
\def\submityear#1{\gdef\@submityear{#1}}
% The full name of the co-advisor
\def\coadvisor#1{\gdef\@coadvisor{#1}}
% The abbreviated co-advisor's degree (e.g., M.Sc., Ph.D.)
\def\coadvisordegree#1{\gdef\@coadvisordegree{#1}}

% --------
% Commands
% --------
% These commands are used to define or redefine formats of the text in the document

% Text to upper case
\newcommand{\ToUpperCase}[1]{%
    {\expandafter\MakeUppercase\expandafter{#1}}
}

% Attribution text
\newcommand{\attrib}[1]{%
    \nopagebreak{\raggedleft\footnotesize #1\par}
}

% Cover page
\renewcommand{\maketitle}{%
    % Cover page layout
    \thispagestyle{empty}
    \null\vfill
    \begin{center}
        {\setstretch{1.3}{\LARGE \fontfamily{ptm}\selectfont \bfseries {\@title} \par}}
        \vspace*{15mm}
        {\logo \par}
        \vspace*{10mm}
        {\large \fontfamily{ptm}\selectfont Thesis Proposal of {\@degree} Degree \par}
        \vspace*{7mm}
        {\Large \fontfamily{ptm}\selectfont \bfseries {\@author} \par}
        \vspace*{20mm}
        {\large \fontfamily{ptm}\selectfont Advisor: {\@advisordegree} {\@advisor} \par}
        \ifx\@coadvisor\@empty
            %
        \else
            {\large \fontfamily{ptm}\selectfont Co-Advisor: {\@coadvisordegree} {\@coadvisor} \par}
        \fi
        \vspace*{10mm}
        {\Large \bsifamily University of Cauca \par}
        {\large \fontfamily{ptm}\selectfont Faculty of Electronic and Telecommunications Engineering \par}
        {\Large \fontfamily{ptm}\selectfont {\@degree} Degree in {\@program} \par}
        {\Large \fontfamily{ptm}\selectfont Line of Research in {\@lineresearch} \par}
        {\large \fontfamily{ptm}\selectfont Popayan, {\@submitmonth} {\@submityear} \par}
    \end{center}
    \null\vfill
}

% ------------
% Environments
% ------------

% ROMANPAGES
% The romanpages environment set the page numbering to lowercase roman one for the contents and figures lists. It also resets page-numbering for the remainder of the dissertation (arabic, starting at 1)
\newenvironment{romanpages}
    {\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
    {\cleardoublepage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}