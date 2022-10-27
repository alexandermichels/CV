\ProvidesClass{acmresume}

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

% \renewcommand{\familydefault}{\sfdefault}
\setlist[itemize]{leftmargin=*}
% For interesting people
% \definecolor{color1}{rgb}{.6,.15,.85}
% \definecolor{color2}{rgb}{.5,.05,.7}
% For boring...
\definecolor{color1}{rgb}{0,0,0}
\definecolor{color2}{rgb}{0,0,0}

\usepackage[
	backend=biber,
    defernumbers=true,
	style=numeric,
	sorting=ydnt,
	maxbibnames=99,
	refsection=section,
	giveninits=true
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
	top=1in,            % <-- you want to adjust this
	inner=1in,
	outer=1in,
	bottom=1in,
	headheight=3ex,       % <-- and this
	headsep=2ex,          % <-- and this
	footskip=0.5in,
}

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
	\vspace{2pt}
	\textbf{#1} \hfill \textbf{#2} \\
	#3 \hfill \\
	\vspace{4pt}
}

\newcommand{\GithubProject}[2]{
	\vspace{6pt}
	% \textbf{{\large #1}}\hfill \href{#2}{\faGithub~\textbf{#2}}\\
	\textbf{#1}\hfill \href{#2}{\textbf{#2}}\\
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
	\vspace{2pt}
	% \textbf{#1} \hfill \faMapPin \ #2 \\
	\textbf{#1} \hfill \ #2 \\
	#3 \hfill \textit{#4} \\
	% \vspace{3pt}
}

\newcommand{\Project}[2]{
	\vspace{3pt}
	% \textbf{{\large #1}}\hfill \href{#2}{\faLaptop~\textbf{#2}}\\
	\textbf{#1}\hfill \href{https://#2}{\textbf{#2}}\\
	% \vspace{-9pt}
	% \noindent\textcolor{color1}{\rule{\textwidth}{0.2mm}}
	% \vspace{-0.4cm}
}

\newcommand{\Research}[3]{
	\textbf{#1}\\
	\textit{#2} \hfill \textit{#3} \\
	\vspace{4pt}
}

\newcommand{\Talk}[4]{
	\hspace*{3mm}\textbf{#1} \hfill \textit{#2} \\
	% \hspace*{3mm}\textit{#3} \hfill \faMapMarker \ #4 \\
	\hspace*{3mm}\textit{#3} \hfill \ #4 \\
	\vspace{4pt}
}

\newcommand{\Workshop}[4]{
    \textbf{#1} \hfill \textit{#2} \\
    % \textit{#3} \hfill \faMapMarker \ #4 \\
    \textit{#3} \hfill \ #4 \\
    \vspace{4pt}
}

\newenvironment{titemize}{
	\vspace{-0.3cm}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{0pt}
	}{\end{itemize}\vspace{-0.3cm}}


\newlength{\hrwidth}
\setlength{\hrwidth}{0.5mm}
\newlength{\hrlength}
\newcommand{\resheading}[1]
{
	\vspace{3pt}
	\setlength{\hrlength}{\linewidth - \widthof{\uppercase{#1}} * \real{1.3} - 1.5cm}
	\noindent\textcolor{color1}{\rule{1cm}{\hrwidth}}
	\hfill \textbf{\uppercase{#1}} \hfill
	\noindent\textcolor{color1}{\rule{\hrlength}{\hrwidth}}
	\vspace{3pt}
}
