\ProvidesClass{acmcv}

\LoadClass[letterpaper,11pt]{article}

\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage[empty]{fullpage}
\RequirePackage{fontawesome5}
\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lastpage}
\RequirePackage{multicol}
\RequirePackage[usenames,dvipsnames]{xcolor}

\setlist[itemize]{leftmargin=*}
\definecolor{color1}{rgb}{.6,.15,.85}
\definecolor{color2}{rgb}{.5,.05,.7}


\usepackage[
	backend=biber,
    defernumbers=true,
	style=numeric,
	sorting=ydnt,
	maxbibnames=99,
	refsection=section,
	giveninits=true,
    uniquename=init
]{biblatex}


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
	top=1in,            % <-- you want to adjust this
	inner=1in,
	outer=1in,
	bottom=1in,
	headheight=3ex,       % <-- and this
	headsep=2ex,          % <-- and this
	footskip=0.3in,
}

\pagestyle{fancy}
\fancyhead{} % clear all header fields
\renewcommand{\headrulewidth}{0pt} % no line in header area
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{} % clear all footer fields
\fancyfoot[C]{Page \thepage\ of \pageref{LastPage}}           % page number in "outer" position of footer line

\newcommand{\titem}[1]{\item[--] #1}

\newcommand{\desc}[1]{\item #1}

\newcommand{\Award}[4]{
    \begin{minipage}{\textwidth}
	\textbf{#1} \hfill #2 \\
	\textit{``#3''} \hfill #4 \\
	\vspace{4pt}
    \end{minipage}
    \vspace{-0.3cm}
}

\newcommand{\Edu}[3]{
	\vspace{5pt}
	\textbf{#1} \hfill #2 \\
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
	\textbf{#1} \hfill \faMapPin \ #2 \\
	#3 \hfill \textit{#4} \\
	\vspace{0.25cm}
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
    \begin{minipage}{\textwidth}
	\hspace*{3mm}\textbf{#1} \hfill \textit{#2} \\
	\hspace*{3mm}\textit{#3} \hfill \faMapMarker \ #4 \\
	\vspace{4pt}
    \end{minipage}
	\vspace*{-0.3cm}
}

\newcommand{\OtherTalk}[4]{
    \begin{minipage}{0.15\textwidth}
        {#2} \\
        \vspace*{\fill}
    \end{minipage}
    \begin{minipage}{0.8\textwidth}
        ``{#1}.''\textit{#3}, {#4}.
    \end{minipage}
    \vspace{0.25cm}
}

\newcommand{\MyTalk}[2]{
    \begin{minipage}{0.15\textwidth}
        {#1} \\
        \vspace*{\fill}
    \end{minipage}
    \begin{minipage}{0.8\textwidth}
        {#2}
    \end{minipage} \\
    \vspace{0.25cm}
}

\newcommand{\Workshop}[4]{
    \textbf{#1} \hfill \textit{#2} \\
    \textit{#3} \hfill \faMapMarker \ #4 \\
    \vspace{4pt}
}

\newenvironment{titemize}{
	\vspace{-0.5cm}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{0pt}
	}{\end{itemize}\vspace{-0.3cm}}

\newlength{\linelength}
\newcommand{\resheading}[1]
{
	\vspace*{0.25cm}
	\setlength{\linelength}{\linewidth - \widthof{#1} * \real{1.6} - 10mm}
	\noindent\textcolor{color1}{\rule{10mm}{1mm}}
	\hfill {\Large \textbf{#1}} \hfill
	\noindent\textcolor{color1}{\rule{\linelength}{1mm}}
	\vspace*{0.25cm}
}


\newcommand{\otherresheading}[1]
{
	\vspace{3pt}
	{\Large \hspace*{0.5cm}\textbf{#1}} \\
	\noindent\textcolor{color1}{\rule{\linewidth}{0.5mm}}
	\vspace{-0.5cm}
}
