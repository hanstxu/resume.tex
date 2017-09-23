\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2017/09/18 resume class from scratch]

% page size and margins
\RequirePackage{geometry}
\RequirePackage{hyperref}

% page size and margins
\geometry{
  letterpaper,
  top=0.5in,
  bottom=0.5in,
  left=0.5in,
  right=0.5in,
  body={8.5in,11in},
}

\hypersetup{
  colorlinks=true,
  linkcolor=blue,
  filecolor=magenta,      
  urlcolor=blue,
}

% no indentation
\setlength\parindent{0pt}

\newcommand{\start}
  {
    \begin{document}
  }

\newcommand{\finish}
  {
    \end{document}
  }

\newcommand{\onespace}
  {
    \hspace{1pt}
  }

\newcommand{\bold}[1]
  {\textbf{#1}}

\newcommand{\n}
  {
    \hfill\\
  }

% make this recursive
\newcommand{\dash}[1]
  {
    \hspace{4pt} - #1 \\\vspace{2pt}
  }

\newcommand{\datedevent}[2]
  {
    #1 \hfill #2
  }

\newcommand{\project}[3]
  {
    \bold{#1} #2 \hfill \\
  }

\newcommand{\bulletpoint}[1]
  {
    \begin{itemize}
      \item #1
    \end{itemize}
  }

\newenvironment{resume_section}[1]
  {
    \begin{flushleft}
      {\large\bold{#1}}\\
      \vspace{6pt}
  }
  {
    %\line(1,0){550}
    \end{flushleft}
  }


% get rid of page numbers
\pagestyle{empty}