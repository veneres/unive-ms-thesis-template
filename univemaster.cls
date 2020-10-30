\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univemaster}[2020/10/30 Ca' Foscari Master thesis template]
\LoadClass[12pt,a4paper,twoside,english]{report}
\RequirePackage[a4paper,top=0.9in,bottom=0.8in,
footskip=.35in]{geometry}
\RequirePackage{url,amsfonts,epsfig}
\RequirePackage{afterpage}
\RequirePackage{amsmath,amssymb}
\RequirePackage{rotating}
\RequirePackage{tikz} % for background logo in frontespizio
\RequirePackage{placeins}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{listings}
\RequirePackage{algpseudocode,algorithm,algorithmicx}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{booktabs}
\RequirePackage[numbers]{natbib}
\RequirePackage{graphicx}
\RequirePackage{comment}
\RequirePackage{fancyhdr}
\RequirePackage{framed}
\RequirePackage{lastpage}
\RequirePackage{enumitem}
\RequirePackage{mdwlist}
\RequirePackage{placeins}
\RequirePackage{float}
\RequirePackage{courier}
\RequirePackage{tikz}
\RequirePackage{tikz}
\RequirePackage{lipsum}


\hyphenation{a-gen-tiz-za-zio-ne}
\setlength{\paperwidth}{22. cm} % old 21
\setlength{\paperheight}{29.7 cm}
\setlength{\oddsidemargin} {2. cm}
\setlength{\evensidemargin} {2. cm}
\addtolength{\oddsidemargin} {-0.4 cm}
\addtolength{\evensidemargin} {-0.4 cm}


\newcommand*\Let[2]{\State #1 $\gets$ #2}
\algrenewcommand\algorithmicrequire{\textbf{Input Data:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}

\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}

%\renewcommand{\captionfont}{\normalfont \sffamily \itshape \small}
\newcommand{\hrefoot}[1]{\footnote{\href{#1}{#1}}}
\newcommand{\footprofile}[2]{\footnote{\href{#1}{#2}}}


\newcommand{\infig}[3]{\begin{figure*}[t]
\centerline{\epsfbox{#1}}
\caption{\label{#2} #3} \end{figure*}}

\setlength\parindent{0pt} % No indent




\newcommand{\image}[3]{ % 1 image 2 caption 3 size
	\begin{figure}[h!]
	  \centering
	  \includegraphics[width=#3\textwidth]{#1} 
	  \caption{#2}
	\end{figure}
	\FloatBarrier
}

\newcommand{\imageb}[2]{ % 1 image 2 size
	\begin{figure}[H]
		\centering
		\includegraphics[width=#2\textwidth]{#1} 
	\end{figure}
	\FloatBarrier
}

\newcommand{\imageLabel}[4]{ % 1 image 2 caption 3 size
	\begin{figure}[H]
		\centering
		\includegraphics[width=#3\textwidth]{#1} 
		\caption{#2}
		\label{fig:#4}
	\end{figure}
	\FloatBarrier
}
\newcommand{\Z}{\mathbb{Z}}

%Theorem definitions
\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section] % reset theorem numbering for each chapter
\theoremstyle{definition}
\newtheorem{defn}[thm]{Definition} % definition numbers are dependent on theorem numbers
\newtheorem{exmp}[thm]{Example} % same for example numbers

\newcommand\supervisor[1]{\def\@supervisor{#1}}

\newcommand\ay[1]{\def\@ay{#1}}
\newcommand\teachassistant[1]{\def\@teachassistant{#1}}

\renewcommand{\maketitle}{
        \vspace*{1 cm}
        \begin{center}
         {\LARGE \textbf{\@title}\\}
        \vspace{3 cm}
        \textsc{Ca' Foscari University of Venice}\\
        Department of Environmental Sciences, Informatics and Statistics\\
        \vspace{0.2 cm}
        \begin{figure}[h!]
        	\centering
        	\includegraphics[width=0.6\textwidth]{img/logo.png} 
        \end{figure}
        \vspace{0.0 cm} Computer Science Master's Thesis\\
        %\vspace{0.0 cm} Thesis notes\\
        Academic Year \@ay\\
        \vspace{2.0 cm}
        	
        \begin{flushleft}
        	\begin{tabular}{l l}
        		\textbf{Graduand} & \@author\\
        		\textbf{Supervisor} & \@supervisor\\
        	    \ifdefined\@teachassistant 
        	        \textbf{Teacher assistant} & \@teachassistant
        	     \else 
        	        \empty 
        	     \fi
        	\end{tabular}
        \end{flushleft}
        
        \end{center}
}