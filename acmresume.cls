\ProvidesClass{acmresume}

\LoadClass[letterpaper,11pt]{article}

\RequirePackage[empty]{fullpage}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*}
\RequirePackage[usenames,dvipsnames]{xcolor}
\definecolor{color1}{rgb}{.6,.15,.85}
\definecolor{color2}{rgb}{.5,.05,.7}
\RequirePackage{fontawesome5}
\RequirePackage{calc}
\RequirePackage{multicol}

\usepackage[
	backend=biber,
	bibstyle=ieee,
	style=authoryear,
	sorting=ydnt,
	maxbibnames=99,
	refsection=section,
	firstinits=true
]{biblatex}

\addbibresource{Bib.bib}


\hypersetup{
	colorlinks=true,
	linkcolor=black,
	filecolor=color2,
	urlcolor=color2,
	citecolor=color2,
}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Adjust margins to 0.5in on all sides
\usepackage{geometry}
\geometry{
	top=0.5in,            % <-- you want to adjust this
	inner=0.5in,
	outer=0.5in,
	bottom=1in,
	headheight=3ex,       % <-- and this
	headsep=2ex,          % <-- and this
	footskip=0.25in,
}

\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage[utf8]{inputenc}
\pagestyle{fancy}
\fancyhead{} % clear all header fields
\renewcommand{\headrulewidth}{0pt} % no line in header area
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{} % clear all footer fields
\fancyfoot[L,RO]{Page\thepage\ of \pageref{LastPage}}           % page number in "outer" position of footer line

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

\newcommand{\Edu}[3]{
	\vspace{5pt}
	\textbf{#1} \hfill \textbf{#2} \\
	#3 \hfill \\
	\vspace{2pt}
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
	\vspace{5pt}
	\textbf{#1} \hfill \faMapPin \ #2 \\
	#3 \hfill \textit{#4} \\
	\vspace{3pt}
}

\newcommand{\Project}[2]{
	\vspace{6pt}
	\textbf{{\large #1}}\hfill \href{#2}{\faLaptop~\textbf{#2}}\\
	\vspace{-9pt}
	\noindent\textcolor{color1}{\rule{\textwidth}{0.2mm}}
	\vspace{-6pt}
}

\newcommand{\Research}[3]{
	\textbf{#1}\\
	\textit{#2} \hfill \textit{#3} \\
	\vspace{4pt}
}

\newcommand{\Talk}[4]{
	\hspace*{3mm}\textbf{#1} \hfill \textit{#2} \\
	\hspace*{3mm}\textit{#3} \hfill \faMapMarker \ #4 \\
	\vspace{4pt}
}

\newcommand{\Workshop}[4]{
    \textbf{#1} \hfill \textit{#2} \\
    \textit{#3} \hfill \faMapMarker \ #4 \\
    \vspace{4pt}
}

\newenvironment{titemize}{
	\vspace{-10pt}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{0pt}
	}{\end{itemize}\vspace{-12pt}}

\newlength{\linelength}
\newcommand{\resheadinga}[1]
{
	\vspace{3pt}
	\setlength{\linelength}{\linewidth/2-\widthof{#1}*\real{0.8}}
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\hfill {\Large \textbf{#1}} \hfill
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\vspace{3pt}
}

\newcommand{\resheading}[1]
{
	\vspace{3pt}
	\setlength{\linelength}{\linewidth - \widthof{#1} * \real{1.6} - 10mm}
	\noindent\textcolor{color1}{\rule{10mm}{1mm}}
	\hfill {\Large \textbf{#1}} \hfill
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\vspace{3pt}
}
