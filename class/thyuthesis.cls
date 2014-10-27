%
% thyu thesisclass.cls
%
\ProvidesClass{class/thyuthesis}[2013/05/03 thyu thesis class]

%
% default options from memoir 
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

%
%  Load class to 
%
\LoadClass[a4paper, oneside]{memoir} % if double side, load \LoadClass[a4paper]{memoir}

%
% Import packages 
%
\usepackage{setspace}						% spacing settings 
\usepackage{amssymb}						% math symbols 
\usepackage{amsfonts}						% math fonts
\usepackage{amsmath}						% ams math
\usepackage[usenames, dvipsnames]{color}	% enable colours
\usepackage[perpage]{footmisc}				% typeset footers
\usepackage{ifthen}							% if-then
\usepackage{ifpdf}							% if-pdf
\usepackage{calc}							% simple arithmetic in latex
\usepackage{soul}							% related to letter spacing
\usepackage{lmodern}						% lmodern font
\usepackage{cite}							% compressed list of citations 
\usepackage{xspace} 						% define no space command
\usepackage{textcomp}						% extra fonts 
\usepackage{titlesec} 						% typeset title and sections 
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
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = black,
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
                 linkcolor = camblue,
                 urlcolor  = camblue,
                 citecolor = camred,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}
    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi


%
% Change name 
%
\renewcommand{\bibname}{References}

%
% Define colours 
%
\definecolor{camcarbon}{cmyk}{.0,.0,.0, .95}
\definecolor{camblue}{cmyk}{.89,.52,.0,.0}
\definecolor{camgrey}{cmyk}{.11,.11,.11,.11}
\definecolor{camred}{cmyk}{0, 0.88, 0.88, 0.157}
\definecolor{camgreen}{cmyk}{1, 0, 0.647,0.455}

% set GLOBAL text color 
\color{camcarbon}

%
% Palatino font 
%
\usepackage[T1]{fontenc}
\usepackage[sc]{mathpazo}
\usepackage{tgpagella}
\normalfont
\DeclareFontShape{T1}{qpl}{m}{sl} { <-> ssub * qpl/m/it }{}
\DeclareFontShape{T1}{qpl}{b}{sl} { <-> ssub * qpl/b/it }{}

% Other fonts? 
%\usepackage[lining]{ebgaramond}
%\usepackage[default]{droidserif}
%\usepackage{DejaVuSerif}
%\usepackage[urw-garamond]{mathdesign}

%
% default one half spacing
%
\OnehalfSpacing

%
% add a very small parskip
%
\setlength{\parskip}{10pt plus 0pt minus 5pt}

%
% TABLE OF CONTENTS 
%
% no dot for content line 
\renewcommand{\cftdotsep}{\cftnodots}
\renewcommand{\aftertoctitle}{\color{camblue}\vspace{0.3em}\hrule\vspace{2em}} 
% part
\renewcommand*{\cftpartfont}{\hfil\Large\color{camblue}}
\renewcommand*{\cftpartafterpnum}{\color{camblue}{\hrule}}
\cftsetindents{part}{0em}{0em} 
\cftpagenumbersoff{part}
\setlength{\cftbeforepartskip}{3em} 
% chapter
\renewcommand{\cftchapterpresnum}{\chaptername\hspace{1em}} 
\renewcommand{\cftchapterafterpnum}{\vspace{0em}} 
\renewcommand{\cftchapterfont}{\large\scshape}
\cftsetindents{chapter}{0em}{0em} 
\renewcommand{\chapternumberline}[1]{\cftchapterpresnum #1 \cftchapteraftersnum\\}
% section
\cftsetindents{section}{2em}{2em} 
\cftsetindents{subsection}{4em}{3em} 

%
% List of tables and list of figures 
%
\renewcommand{\afterloftitle}{\color{camblue}\vspace{0.3em}\hrule\vspace{2em}} 
\renewcommand{\afterlottitle}{\color{camblue}\vspace{0.3em}\hrule\vspace{2em}} 

%
% Reference heading  
%
\renewcommand{\bibsection}{
	\renewcommand{\bibname}{References}
	\vspace{2em}\chapter{\bibname}
	\color{camblue}{\vspace{-2.5em}\hrule\vspace{2em}}
	\color{black}
	\prebibhook
}

%
%Length settings
%
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
\setlength{\footskip}{1.36cm}

%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.
\newcommand{\submittedtext}{{This dissertation is submitted for the degree of}}
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

%
% TITLE PAGE 
%
\renewcommand{\maketitle}{%
\pagenumbering{roman} % Sasa Tomic
\setcounter{page}{0}  % Sasa Tomic
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
%  \null\vfill
  \begin{center}
	  {\fontsize{2.2em}{2.7em}\bfseries{\@title}} \par
	\vspace*{35mm}
	{\fontsize{16}{20}\scshape\selectfont\@author}\par
	\vspace*{1ex}
	{{\fontsize{13}{15}\selectfont\@collegeordept} \par}
	\vspace*{65mm} 
	\@crest \par
    %{{\@university} \par}
	\vspace*{10ex}
    {\large \submittedtext \par}
	\vspace*{1ex}
    {\large \@degree \par}
	\vspace*{1ex}
    {\large \@degreedate}
  \end{center}
  \null\vfill
\end{alwayssingle}}

%
% DEDICATION
%
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

%
% ACKNOWLEDGEMENTS
%
\newenvironment{acknowledgements}
{
	\begin{alwayssingle}
	\pagestyle{empty}
  	\begin{center}
  	\vspace*{0.5cm}
  	{\Huge \color{camblue}Acknowledgements}
  	\end{center}
  	\vspace{0.5cm}
  }
{\end{alwayssingle}}

%
%ABSTRACT
%
\newenvironment{abstracts}
{
	\begin{alwayssingle}
	\pagestyle{empty}
  	\begin{center}
  	\vspace*{0.5cm}
  	{\Huge \color{camblue}Abstract}
  	\end{center}
  	\vspace{0.5cm}
  }
{\end{alwayssingle}}

%
% DECLARATIONS 
%
\newenvironment{declarations}
{
	\begin{alwayssingle}
	\pagestyle{empty}
  	\begin{center}
  	\vspace*{0.5cm}
  	{\Huge \color{camblue}Declaration}
  	\end{center}
  	\vspace{0.5cm}
  }
{\end{alwayssingle}}

%
%ROMANPAGES
%
\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}}
%{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

% Define section title style
\titleformat{\section}{\normalfont\LARGE\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\Large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\large\bfseries}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}[runin]{\normalfont\large\bfseries}{}{1em}{}
\titlespacing*{\paragraph}{0pt}{0pt}{10pt}

%
% Define part title style 
%
\titleclass{\part}{top} % make part like a chapter
\titleformat{\part}
[display]
{\centering\fontsize{35}{35}\selectfont}
{
	\vspace{2cm}
	\color{camblue}{\rule{4.5cm}{0.5mm}}
	\raisebox{-0.3cm}{\parbox{3cm}{
		\centering
		\fontsize{80}{80}\selectfont\color{camgrey}
		\thepart
	}}  
	\color{camblue}{\rule{4.5cm}{0.5mm}}\\ 
}
{-30pt}
{
	\centering\color{camblue}\MakeUppercase
}
[
	\color{camblue}{\rule{12.5cm}{0.5mm}}
]
\titlespacing*{\part}{0pt}{0pt}{20pt}

%
% Chapter title 
%
\makeatletter
\makechapterstyle{thyuchap}{
	\renewcommand\chaptitlefont{\normalfont\fontsize{25}{25}\selectfont\scshape\color{camblue}}
	\renewcommand\chapternamenum{}
	\renewcommand\printchaptername{}
	\renewcommand\chaptername{CHAPTER} 
	\renewcommand\printchapternum{
		\vspace{12mm}
		\begin{center}
			\raisebox{-0.6cm}[0pt][0pt]{
				\raisebox{0mm}[0pt][0pt]{\color{camblue}\rule{0.3\textwidth}{0.5mm}}
				\parbox{0.25\textwidth}{
					\centering
					\normalfont\fontsize{110}{80}\selectfont
					\color{camgrey}\thechapter
				}
				\raisebox{0mm}[0pt][0pt]{\color{camblue}\rule{0.3\textwidth}{0.5mm}}
			}\\
			\normalfont\fontsize{18}{18}\selectfont\color{black}\@chapapp
		\end{center}
	}
	\renewcommand\afterchapternum{\par\vskip\midchapskip\par}
	\renewcommand\printchaptertitle[1]{
		\centering 
		\chaptitlefont ##1\par
	}
}
\makeatother
\chapterstyle{thyuchap}

%
% Page style
%
\makepagestyle{thyupagestyle}
\makeheadrule {thyupagestyle}{\textwidth}{\normalrulethickness}
%\makefootrule{thyupagestyle}{\textwidth}{\normalrulethickness}{\footruleskip}
\makeevenhead{thyupagestyle}{}{\scshape\leftmark}{}
\makeoddhead{thyupagestyle}{}{\scshape\rightmark}{}
\makeevenfoot{thyupagestyle}{}{\small\thepage}{}
\makeoddfoot{thyupagestyle}{}{\small\thepage}{}
\makeatletter % because of \@chapapp
\makepsmarks{thyupagestyle}{
	\nouppercaseheads
	\createmark{chapter}{both}{shownumber}{Chapter\ }{. \ }
	%\createmark{section}{right}{shownumber}{} {. \ }
	%\createmark{subsection}{right}{shownumber}{} {. \ }
	%\createmark{subsubsection}{right}{shownumber}{} {. \ }
	\createplainmark{toc}{both}{\contentsname}
	\createplainmark{lof}{both}{\listfigurename}
	\createplainmark{lot}{both}{\listtablename}
	\createplainmark{bib}{both}{\bibname}
	\createplainmark{index}{both}{\indexname}
	\createplainmark{glossary}{both}{\glossaryname}
}
\makeatother
\setsecnumdepth{subsubsection}
\pagestyle{thyupagestyle}


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

