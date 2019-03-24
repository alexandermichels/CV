\ProvidesClass{acmresume}

\LoadClass[letterpaper,11pt]{article}

\RequirePackage[empty]{fullpage}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*}
\RequirePackage[usenames,dvipsnames]{xcolor}
\definecolor{color1}{rgb}{.8,.2,1}
\RequirePackage{fontawesome5}
\RequirePackage{calc}
\RequirePackage{multicol}

\hypersetup{
	colorlinks=true,
	linkcolor=color1,
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
\addtolength{\textheight}{1.0in}

\newcommand{\resitem}[1]{\item[--] #1}

\newcommand{\ressubheading}[4]{
	\textbf{#1} \hfill #2 \\
	\textit{#3} \hfill \textit{#4} \\
	\vspace{-6pt}
}

\newcommand{\Position}[4]{
	\textbf{#1} \hfill \faMapPin \ #2 \\
	\textit{#3} \hfill \textit{#4} \\
	\vspace{1pt}
}

\newcommand{\Talk}[4]{
	\textbf{#1} \hfill #2 \\
	\textit{#3} \hfill \faMapMarker \ #4 \\
}

\newcommand{\Research}[3]{
	\textbf{#1}\\
	\textit{#2} \hfill \textit{#3} \\
}

\newcommand{\Award}[4]{
	\textbf{#1} \hfill #2 \\
	\textit{``#3''} \hfill #4 \\
}

\newenvironment{titemize}{
	\vspace{-12pt}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{0pt}
	}{\end{itemize}\vspace{-10pt}}

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