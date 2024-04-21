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
\usepackage{longtable}
\RequirePackage{multicol}
\RequirePackage[usenames,dvipsnames]{xcolor}

% adjust the skip after Long tables
\setlength{\LTpost}{6pt}

\renewcommand{\arraystretch}{1.5}
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
	sorting=ymdnt,
	maxbibnames=99,
	refsection=section,
	giveninits=true,
    uniquename=init,
    isbn=false,
    url=false,
    eprint=false
]{biblatex}

\renewbibmacro{in:}{}  % get rid of "in:" in bibliography
\AtEveryBibitem{\clearfield{pages}} % remove pages

\setlength\bibitemsep{0pt}
\AtBeginBibliography{\vspace*{-0.3cm}}

% % https://tex.stackexchange.com/questions/21401/biblatex-reverse-numbering-i-e-count-down
% % Count total number of entries in each refsection
% \AtDataInput{%
%   \csnumgdef{entrycount:\therefsection}{%
%     \csuse{entrycount:\therefsection}+1}}

% % Print the labelnumber as the total number of entries in the
% % current refsection, minus the actual labelnumber, plus one
% \DeclareFieldFormat{labelnumber}{\mkbibdesc{#1}}    
% \newrobustcmd*{\mkbibdesc}[1]{%
%   \number\numexpr\csuse{entrycount:\therefsection}+1-#1\relax}

\makeatletter
\define@key{blx@bib1}{keyword}{\xdef\mykeyword{#1}}
\makeatother

\newcommand{\stepKeywordCount}[1]{\csnumgdef{entrycount:#1}{\csuse{entrycount:#1}+1}}

\AtDataInput{%
  \iffieldundef{labelprefix}{%
    \begingroup%
      \edef\mytemp{\strfield{keywords}}
      \expandafter\forcsvlist\expandafter{\expandafter\stepKeywordCount\expandafter}\expandafter{\mytemp}%
    \endgroup%
  }{}%
}%

\DeclareFieldFormat{labelnumber}{\mkbibdesc{#1}}
\newrobustcmd*{\mkbibdesc}[1]{\number\numexpr\csuse{entrycount:\mykeyword}+1-#1\relax}
\newcommand{\mykeyword}{}

% From: https://tex.stackexchange.com/questions/140561/anti-chronological-bibliography-with-sorting-ydnt-and-usage-of-sortyear
\DeclareSortingTemplate{ymdnt}{
  \sort{
    \field{presort}
  }
  \sort[final]{
    \field{sortkey}
  }
  \sort[direction=descending]{
    \field[strside=left,strwidth=4]{sortyear}
    \field[strside=left,strwidth=4]{year}
    \literal{9999}
  }
  \sort[direction=descending]{
    \field{month}
    \literal{9999}
  }
  \sort{
    \field{sortname}
    \field{author}
    \field{editor}
    \field{translator}
    \field{sorttitle}
    \field{title}
  }
  \sort{
    \field{sorttitle}
    \field{title}
  }
}


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
\setlist[itemize]{label=--}

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
	% \textbf{#1} \hfill \faMapPin \ #2 \\
	\textbf{#1} \hfill \ #2 \\
	#3 \hfill \textit{#4} \\
	\vspace{0.25cm}
}

\newcommand{\Project}[2]{
	\vspace{6pt}
	% \textbf{{\large #1}}\hfill \href{#2}{\faLaptop~\textbf{#2}}\\
	\textbf{#1}\hfill \href{#2}{\textbf{#2}}\\
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
	% \hspace*{3mm}\textit{#3} \hfill \faMapMarker \ #4 \\
	\hspace*{3mm}\textit{#3} \hfill \ #4 \\
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
    % \textit{#3} \hfill \faMapMarker \ #4 \\
    \textit{#3} \hfill \ #4 \\
    \vspace{4pt}
}

\newenvironment{titemize}{
	\vspace{-0.25cm}
	\begin{itemize}
		\setlength{\itemsep}{0pt}
		\setlength{\parskip}{0pt}
		\setlength{\topsep}{6pt}
	}{\end{itemize}\vspace{-0.3cm}}

\newlength{\hrwidth}
\setlength{\hrwidth}{0.5mm}
\newlength{\hrlength}
\newcommand{\resheading}[1]
{
    \vspace{-0.25cm}
    \setlength{\hrlength}{\linewidth - \widthof{\uppercase{#1}} * \real{1.2} - 1.5cm}
    \noindent\textcolor{color1}{\rule{1cm}{\hrwidth}}
    \hfill \textbf{\uppercase{#1}} \hfill
    \noindent\textcolor{color1}{\rule{\hrlength}{\hrwidth}}
    \vspace{-0.25cm}
}

\newcommand{\pubheading}[2]
{
    \vspace{5pt}
    \setlength{\hrlength}{\linewidth - \widthof{\uppercase{#1}} * \real{1.2} - 11cm}
    \noindent\textcolor{color1}{\rule{1cm}{\hrwidth}}
    \hfill \textbf{\uppercase{#1}} \textit{(\href{#2}{Google Scholar}, underline indicates student mentee)} \hfill
    \noindent\textcolor{color1}{\rule{\hrlength}{\hrwidth}}
    \vspace{5pt}
}
