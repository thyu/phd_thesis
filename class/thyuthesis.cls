% thyu thesisclass.cls
\ProvidesClass{class/thyuthesis}[2013/05/03 thyu thesis class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
% \LoadClass[a4paper]{memoir}
\LoadClass[a4paper, oneside]{memoir}

\renewcommand{\bibname}{References}

\usepackage{setspace}						% spacing settings 
%\usepackage{tocbibind}
%\usepackage{tocloft} 
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{amsmath}
%\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
%\usepackage[square, sort, numbers, authoryear]{natbib}
%\usepackage[square, sort, numbers, authoryear]{natbib}
\usepackage{ifthen}
\usepackage{ifpdf}
\usepackage{calc}
\usepackage{soul}
\usepackage{lmodern}
\usepackage{cite}
\usepackage{xspace} 
\usepackage{textcomp}

% Palatino font 
\usepackage[T1]{fontenc}
\usepackage[sc]{mathpazo}
\usepackage{tgpagella}

% Palatino font fixes
\normalfont
\DeclareFontShape{T1}{qpl}{m}{sl} { <-> ssub * qpl/m/it }{}
\DeclareFontShape{T1}{qpl}{b}{sl} { <-> ssub * qpl/b/it }{}

% Other fonts 
%\usepackage[lining]{ebgaramond}
%\usepackage[default]{droidserif}
%\usepackage{DejaVuSerif}
%\usepackage[urw-garamond]{mathdesign}

% TABLE OF CONTENTS 
%{
% no dot for content line 
\renewcommand{\cftdotsep}{\cftnodots}
\renewcommand{\aftertoctitle}{\color{camblue}\vspace{0.3em}\hrule\vspace{2em}} 
% part
\renewcommand*{\cftpartfont}{\hfil\Large\color{camblue}}
\renewcommand*{\cftpartafterpnum}{\color{camblue}{\hrule}}
\cftsetindents{part}{0em}{0em} 
\cftpagenumbersoff{part}
\setlength{\cftbeforepartskip}{5em} 

% chapter
\renewcommand{\cftchapterpresnum}{\chaptername\hspace{2em}} 
\renewcommand{\cftchapterafterpnum}{\vspace{1em}} 
\renewcommand{\cftchapterfont}{\large\color{camblue}}
\cftsetindents{chapter}{0em}{0em} 
\renewcommand{\chapternumberline}[1]{\cftchapterpresnum #1 \cftchapteraftersnum\\}
% section
\cftsetindents{section}{0em}{3em} 
\cftsetindents{subsection}{3em}{3em} 
%} 

\usepackage{titlesec}
\ifpdf
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                 pdfpagelayout = OneColumn, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref} 
    \usepackage[pdftex]{graphicx}
    \DeclareGraphicsExtensions{.png, .jpg, .pdf}
    \pdfcompresslevel=9
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    %\usepackage{epsfig}
    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi


\renewcommand{\bibname}{References}

% Nomenclature
\usepackage{nomencl}
\makenomenclature
\renewcommand\nomgroup[1]{%
  \ifthenelse{\equal{#1}{A}}{%
   \item[\textbf{Roman Symbols}] }{%             A - Roman
    \ifthenelse{\equal{#1}{G}}{%
     \item[\textbf{Greek Symbols}]}{%             G - Greek
      \ifthenelse{\equal{#1}{R}}{%
        \item[\textbf{Superscripts}]}{%              R - Superscripts
          \ifthenelse{\equal{#1}{S}}{%
           \item[\textbf{Subscripts}]}{{%             S - Subscripts
	    \ifthenelse{\equal{#1}{X}}{%
	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
	    \ifthenelse{\equal{#1}{Z}}{%
	     \item[\textbf{Acronyms}]}%              Z - Acronyms
              			{{}}}}}}}}}}

%A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

\setlength{\evensidemargin}{1.96cm}
%\setlength{\oddsidemargin}{-0.54cm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{1.36cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{14.5cm}
\setlength{\marginparsep}{1mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{2.36cm}

\newcommand{\submittedtext}{{A thesis submitted for the degree of}}
%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

%define title page layout
\renewcommand{\maketitle}{%
\pagenumbering{roman} % Sasa Tomic
\setcounter{page}{0}  % Sasa Tomic
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
%  \null\vfill
  \begin{center}
	  {\fontsize{20}{24}\bfseries {\@title}} \par
	\vspace*{35mm}
	{\fontsize{16}{20}\scshape\selectfont\@author}\par
	\vspace*{1ex}
	{{\fontsize{13}{15}\selectfont\@collegeordept} \par}
	\vspace*{65mm} 
	\@crest \par
	\vspace*{1ex}
    %{{\@university} \par}
	\vspace*{15mm}
    {\large \submittedtext} \par
	\vspace*{1ex}
    {\large \textit {\@degree} \par}
	\vspace*{1ex}
    {\large \@degreedate}
  \end{center}
  \null\vfill
\end{alwayssingle}}

% DEDICATI678%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center}}
{\end{center} \end{quote} \end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{empty}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Huge \color{camblue} Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\Huge \color{camblue}Abstract}
  \end{center}
  \vspace{0.5cm}
   \begin{quote}}
{\end{quote}\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}}
%{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}


% Define chapter 
%\definecolor{camblue}{rgb}{.647,.129,.149}
\definecolor{camblue}{rgb}{.639,.757,.678}

\makeatletter
\newlength\dlf@normtxtw
\setlength\dlf@normtxtw{\textwidth}
%\def\myhelvetfont{\def\sfdefault{mdput}}
\newsavebox{\feline@chapter}

\newcommand\feline@chapter@marker[1][3cm]{%
	\sbox\feline@chapter{%
	\resizebox{#1}{!}{\fboxsep=1pt%
		\colorbox{camblue}{\color{white}{\thechapter}}%
	}}
	\resizebox{\widthof{\usebox{\feline@chapter}}}{!}{\scshape\color{camblue}\@chapapp}
	\hspace{-#1}\hspace{-1mm}
	\raisebox{-1mm-\heightof{\usebox{\feline@chapter}}}{\usebox{\feline@chapter}}%
}

\newcommand\feline@chm[1][4cm]{%
\sbox\feline@chapter{\feline@chapter@marker[#1]}%
\makebox[0pt][l]{% aka \rlap
\makebox[0cm][r]{\usebox\feline@chapter}%
}}

\makechapterstyle{thyuchap}{
%\renewcommand\chapnamefont{\normalfont\Large\scshape\raggedleft\so}
\renewcommand\chaptitlefont{\normalfont\fontsize{24}{32}\selectfont\color{camblue}}
\renewcommand\chapternamenum{}
\renewcommand\printchaptername{}
\renewcommand\printchapternum{\null\hfill\feline@chm[3cm]\par}
\renewcommand\afterchapternum{\par\vskip\midchapskip}
\renewcommand\printchaptertitle[1]{\chaptitlefont\raggedright ##1\par}
}
\makeatother
\chapterstyle{thyuchap}

% define part style 
\titleclass{\part}{top} % make part like a chapter
\titleformat{\part}
[display]
{\centering\normalfont\fontsize{40}{45}\selectfont\color{camblue}}
%{\titlerule[5pt]\vspace{3pt}\titlerule[2pt]\vspace{3pt}\MakeUppercase{\partname}\thepart}
{\vspace{7cm}\MakeUppercase{\partname}\quad\thepart}
{0pt}
{\titlerule[1pt]\vspace{10pt}\fontsize{25}{30}\selectfont\MakeUppercase}
\titlespacing*{\part}{0pt}{0pt}{20pt}


% default one half spacing
\OnehalfSpacing
