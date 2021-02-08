\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2017/09/18 resume class from scratch]

% page size and margins
\RequirePackage{geometry}

% links
\RequirePackage{hyperref}

% radio buttons
\RequirePackage{tikz}

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

\newcommand{\italic}[1]
  {\textsl{#1}}

\newcommand{\usedlanguages}[1]
  {\small{\italic{#1}}}

\newcommand{\dash}[1]
  {
    \hspace{4pt} - #1 \\\vspace{2pt}
  }

\newcommand{\sdash}[2]
  {
    \hspace{4pt} - \makebox[1in][l]{#1} #2  \\\vspace{2pt}
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

% radio button from StackOverflow; should examine this
\makeatletter
\newcommand*{\radiobutton}{%
  \@ifstar{\@radiobutton0}{\@radiobutton1 }%
}
\newcommand*{\@radiobutton}[1]{%
  \begin{tikzpicture}
    \pgfmathsetlengthmacro\radius{height("X")/2}
    \draw[radius=\radius] circle;
    \ifcase#1 \fill[radius=.6*\radius] circle;\fi
  \end{tikzpicture}%
}
\makeatother

% get rid of page numbers
\pagestyle{empty}
