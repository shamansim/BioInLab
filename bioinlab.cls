% Simon BESSON-GIRARD - Classe BioInLab
% 2016-02-16 simon (at) besson-girard.fr
% --- Class structure: identification part
% ---
\ProvidesClass{bioinlab}[2015/10/07 version 1.00 Simon Besson-Girard - Classe BioInLab]
\NeedsTeXFormat{LaTeX2e}
% --- Class structure: declaration of options part
% ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% --- Class structure: execution of options part
% ---
\ProcessOptions*
% --- Class structure: declaration of options part
% ---
\LoadClass[]{article}

% --- Page layout
% ---
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
%
%\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
	\fancypagestyle{firstpage}{
	\fancyhf{} % clear all six fields
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{.5pt}
	%\renewcommand{\footrule}{\hbox to\headwidth{\color{mygrey01}\leaders\hrule height \footrulewidth\hfill}}
	%\renewcommand{\headrule}{\hbox to\headwidth{\color{mygrey01}\leaders\hrule height \headrulewidth\hfill}}
	%\fancyfoot[R]{\thepage\,/\,\pageref{LastPage}}
	}
	\fancypagestyle{followingpage}{
	\fancyhf{} % clear all six fields
	\fancyhead[L]{\textcolor{mygrey00}{\@title}}
	\fancyhead[R]{\textcolor{mygrey00}{\thepage}}
	%\fancyhead[RO,LE]{\includegraphics[height=6ex]{miv_logo.png}\vspace{-13pt}}
	\fancyfoot[R]{\thepage}
	\renewcommand{\headrulewidth}{.5pt}
	\renewcommand{\footrulewidth}{.5pt}
	\renewcommand{\footrule}{\hbox to\headwidth{\color{mygrey01}\leaders\hrule height \footrulewidth\hfill}}
	\renewcommand{\headrule}{\hbox to\headwidth{\color{mygrey01}\leaders\hrule height \headrulewidth\hfill}}
	}
	% defining where to execute the different styles
	\pagestyle{followingpage}
	\AtBeginDocument{\thispagestyle{firstpage}}
%
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,frenchb]{babel}
\NoAutoSpaceBeforeFDP % espaces devant les doubles ponctuations


%
\RequirePackage{graphicx}
\RequirePackage{xcolor}
	\definecolor{mygrey00}{RGB}{29,29,29}
	\definecolor{mygrey01}{RGB}{142,142,142}
	\definecolor{mivboxblue}{RGB}{196,215,237}
	\definecolor{mivboxgreen}{RGB}{183,202,121}
\RequirePackage{titlesec}
\titleformat*{\section}{\Large\bfseries\sffamily\color{mygrey00}}
\titleformat*{\subsection}{\large\bfseries\sffamily\color{mygrey00}}
\titleformat*{\subsubsection}{\itshape\bfseries\color{mygrey00}}
\RequirePackage{amsmath}
\RequirePackage{wrapfig}
\RequirePackage{multicol}
\RequirePackage{url}
\let\urlorig\url
\renewcommand{\url}[1]{%
  \begin{otherlanguage}{english}\urlorig{#1}\end{otherlanguage}%
}
%
\renewcommand\maketitle{
\IfFileExists{logo.png}{%then

	% logo
	\begin{center}
	\includegraphics[height=200pt]{logo.png}
        \vspace{2ex}
	\end{center}
	% title
	\vspace*{20ex}
	\begin{center}
	{\Huge\bfserie\textcolor{mygrey01}`Laboratory notebook`}
	\end{center}
        \noindent\makebox[\linewidth]{\textcolor{mygrey01}{\rule{\linewidth}{0.7pt}}}
        \par
	\vspace{10ex}
	{\Huge\bfseries\textcolor{mygrey00}{\@title}\normalsize\par}
        \vspace{8ex}
	\noindent\makebox[\linewidth]{\textcolor{mygrey01}{\rule{\linewidth}{0.7pt}}}
	
	}{%else

	%title
	\vspace*{20ex}
        \noindent\makebox[\linewidth]{\textcolor{mygrey01}{\rule{\linewidth}{0.7pt}}}
        \par
	\vspace{10ex}
	{\Huge\bfseries\textcolor{mygrey00}{\@title}\normalsize\par}
        \vspace{8ex}
	\noindent\makebox[\linewidth]{\textcolor{mygrey01}{\rule{\linewidth}{0.7pt}}}
	
	}%fi
	\vspace{10ex}
        {\flushright\noindent\hfill\huge\bfseries\@author\large\par}
        \vspace{5ex}
        {\flushright\noindent\ifx\@date\@empty\else\Large\@date\par\fi}
}
\newcommand{\mivbox}[2]{
	\noindent\fcolorbox{white}{#1}{
\parbox{\textwidth}
	{#2}}
	}
