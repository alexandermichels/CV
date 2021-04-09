\ProvidesClass{acmresume}

\LoadClass[letterpaper,11pt]{article}

\RequirePackage[empty]{fullpage}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*}
\RequirePackage[usenames,dvipsnames]{xcolor}
\definecolor{color1}{rgb}{.6,.15,.85}
\RequirePackage{fontawesome5}
\RequirePackage{calc}
\RequirePackage{multicol}

\usepackage[
	backend=biber,
	style=authoryear,
	sorting=ydnt,
	maxbibnames=99,
	refsection=section
]{biblatex}

\addbibresource{Bib.bib}


\hypersetup{
	colorlinks=true,
	linkcolor=black,
	filecolor=color1,
	urlcolor=color1,
	citecolor=color1,
}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Adjust margins to 0.5in on all sides
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1.0in}
\addtolength{\topmargin}{-0.5in}
\addtolength{\textheight}{0.75in}

\usepackage{fancyhdr}
\usepackage{lastpage}
\pagestyle{fancy}
\fancyhead{} % clear all header fields
\renewcommand{\headrulewidth}{0pt} % no line in header area
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{} % clear all footer fields
\fancyfoot[LE,RO]{\thepage\ of \pageref{LastPage}}           % page number in "outer" position of footer line

\newcommand{\titem}[1]{\item[--] #1}

\newcommand{\desc}[1]{\item #1}

\newcommand{\ressubheading}[4]{
	\textbf{#1} \hfill #2 \\
	\textit{#3} \hfill \textit{#4} \\
	\vspace{-6pt}
}


\newcommand{\Award}[4]{
	\textbf{#1} \hfill #2 \\
	\textit{``#3''} \hfill #4 \\
	\vspace{4pt}
}

\newcommand{\GithubProject}[2]{
	\vspace{6pt}
	\textbf{{\large #1}}\hfill \href{#2}{\faGithub~\textbf{#2}}\\
	\vspace{-9pt}
	\noindent\textcolor{color1}{\rule{\textwidth}{0.2mm}}
	\vspace{-12pt}
}

\newcommand{\Grant}[4]{
	\textbf{#1}\hfill \textit{#2} \\
	\textit{#3} \hfill #4\\
	\vspace{4pt}
}

\newcommand{\Position}[4]{
	\textbf{#1} \hfill \faMapPin \ #2 \\
	\textit{#3} \hfill \textit{#4} \\
	\vspace{1pt}
}

\newcommand{\Project}[2]{
	\vspace{6pt}
	\textbf{{\large #1}}\hfill \href{#2}{\faLaptop~\textbf{#2}}\\
	\vspace{-9pt}
	\noindent\textcolor{color1}{\rule{\textwidth}{0.2mm}}
	\vspace{-12pt}
}

\newcommand{\Research}[3]{
	\textbf{#1}\\
	\textit{#2} \hfill \textit{#3} \\
	\vspace{4pt}
}

\newcommand{\Talk}[4]{
	\textbf{#1} \hfill \textit{#2} \\
	\textit{#3} \hfill \faMapMarker \ #4 \\
	\vspace{4pt}
}

\newcommand{\Workshop}[4]{
    \textbf{#1} \hfill \textit{#2} \\
    \textit{#3} \hfill \faMapMarker \ #4 \\
    \vspace{4pt}
}

\newenvironment{titemize}{
	\vspace{-12pt}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{0pt}
	}{\end{itemize}\vspace{-6pt}}

\newlength{\linelength}
\newcommand{\resheading}[1]
{
	\vspace{3pt}
	\setlength{\linelength}{\linewidth/2-\widthof{#1}}
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\hfill {\Large \textbf{#1}} \hfill
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\vspace{3pt}
}

\usepackage{multicol}
\usepackage[utf8]{inputenc}
