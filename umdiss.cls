%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  umdiss.cls  Version 1.0, March 2001.                  %%%                            
%%%  Created from the utthesis.sty given below.            %%%
%%%  Credits goto Dinesh Das for original template.        %%%
%%%  Author:                                               %%%
%%%  Ernest Kulasekere,                                    %%%
%%%  Department of Electrical and Computer Engineering     %%%
%%%  University of Miami, Coral Gables, Florida 33146      %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  University of Miami Dissertation Style File           %%%
%%%  Version 1.0, March 2001                               %%%
%%%  Created by  : Ernest Kulasekere                       %%%
%%%  Modified by : Rohitha Hewawasam - April 2008          %%%
%%%  Modified according to the new requirements of the UM  %%%
%%%  graduate school by : Mohammad Haghighat - April 2016  %%%
%%%  Department of Electrical and Computer Engineering     %%%
%%%  University of Miami, Coral Gables, Florida 33146      %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Original Copyright Message From Dinesh Das of University of Texas      %%%
%%%  File: utthesis.sty, version 2.0, January 1995                          %%%
%%%  ====================================================================   %%%
%%%  Copyright (c) 1995 by Dinesh Das.  All rights reserved.                %%%
%%%  This file is free and can be modified or distributed as long as        %%%
%%%  you meet the following conditions:                                     %%%
%%%                                                                         %%%
%%%  (1) This copyright notice is kept intact on all modified copies.       %%%
%%%  (2) If you modify this file, you MUST NOT use the original file name.  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{umdiss}[2001/03/11 v1.0 Dissertation class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass{report}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Redefine the section and subsection headings to single spacing---Shaminda  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\section{\@startsection {section}{1}{\z@}{-3.5ex plus -1ex minus 
    -.2ex}{2.3ex plus .2ex}{\singlespace\Large\bf}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus -1ex minus 
   -.2ex}{1.5ex plus .2ex}{\singlespace\large\bf}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Load some packages necessary for the dissertation presentation  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[normalem]{ulem}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Set up page layout parameters  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\setlength{\textheight}{8.75in}
\setlength{\oddsidemargin}{0.4in}
\setlength{\evensidemargin}{0.2in}
\setlength{\textwidth}{6in}
\setlength{\topmargin}{0.03in}
\setlength{\headheight}{0.03in}
\setlength{\headsep}{0.2in}
\setlength{\footskip}{18pt}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Set up default values  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@universityname}{University of Miami}
\newcommand{\@universityaddress}{Coral Gables, Florida}
\newcommand{\dissdepartment}{Department of Electrical and Computer Engineering}
\newcommand{\dissauthorFirst}{First Name}
\newcommand{\dissauthorLast}{Last Name}
\newcommand{\dissdate}{Date}
\newcommand{\dissmonth}{Month}
\newcommand{\dissyear}{Year}
\newcommand{\disstitle}{Dissertation Title}
\newcommand{\dissabstitle}{Dissertation Title\\ if you want it split it}

\newcommand{\dissauthoraddress}{USA}
\newcommand{\dissmajor}{Electrical and Computer Engineering}
\newcommand{\dissacknowledgmentsigplace}%
    {{\slshape
       \renewcommand{\arraystretch}{1.0}
       \begin{tabular}{l}
         \@universityname \\
         \dissmonth\ \dissyear
       \end{tabular}}}
\newcommand{\dissdedication}{Dedication}
\newcommand{\disssupervisor}{Chairman}
\newcommand{\disssupervisortitle}{Chairman Title}
\newcommand{\disscommitteeFirst}{Committe First}
\newcommand{\disscommitteeFirsttitle}{Committe First Title}
\newcommand{\disscommitteeSecond}{Committe Second}
\newcommand{\disscommitteeSecondtitle}{Committe Second Title}
\newcommand{\disscommitteeThird}{Committe Third}
\newcommand{\disscommitteeThirdtitle}{Committe Third Title}
\newcommand{\disscommitteeoutside}{Committe Outside}
\newcommand{\disscommitteeoutsidetitle}{Committe Outside Title}
\newcommand{\dissdean}{Dean}
\newcommand{\dissdeantitle}{Dean Title}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Set up other commands  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@defaultbaselinestretch}{1.5}
\newcommand{\@base}[1]{\renewcommand{\baselinestretch}{#1}}
\newcommand{\singlespace}{\renewcommand{\@defaultbaselinestretch}{1.1}}
\newcommand{\oneandhalfspace}{\renewcommand{\@defaultbaselinestretch}{1.5}}
\newcommand{\doublespace}{\renewcommand{\@defaultbaselinestretch}{1.8}}
\newcommand{\dissvitahead}{\Large Vita}
\newcommand{\dissacknowledgmenthead}{\vspace{-.5in}\Large Acknowledgements}
\newcommand{\@dissacknowledgmentsigname}
    {\textsc{\dissauthorFirst \ \dissauthorLast}}
\newcommand{\@dissacknowledgmentsigplace}{\dissacknowledgmentsigplace}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Indent the first paragraph after a sectioning command  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \let\@afterindentfalse\@afterindenttrue
	 \@afterindenttrue

	 
	 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Set up default page numbering and line spacing  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@textpagenumbering}{arabic}
\newcommand{\@preamblepagenumbering}{roman}
\newcommand{\@textpagestyle}{fancy}
\newcommand{\@preamblepagestyle}{plain}
\pagenumbering{\@preamblepagenumbering}
\@base{\@defaultbaselinestretch}
\newcommand{\@chaptertype}{\chaptername}
\newcommand{\@appendix}{0}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Dissertation Title page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dissproposaltitle}{%
  \thispagestyle{empty}
  \vfill\strut
  \begin{center}
    \MakeUppercase{\large \@universityname} \\[8mm]
    \parbox[t]{\textwidth}{\raggedright
      \begin{center}
        \MakeUppercase{\large \disstitle }
%        \MakeUppercase{\large an information-retrieval point of view}
      \end{center}}\\[15mm]
    {\dissauthorFirst\ \dissauthorLast}\\
    \dissdepartment \\[8mm]
    A dissertation submitted in partial fulfillment of \\
    the requirement for the degree of\\ 
    Doctor of Philosophy\\[15mm]
    Advisor : \disssupervisor \\[10mm]
    Committee Members \\[5mm]
    \disscommitteeFirst\\ 
    \disscommitteeSecond\\
    \disscommitteeThird\\
    \disscommitteeoutside\\[10mm]
    \dissmonth\ \dissyear \\
  \end{center}\strut\newpage}
    
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Generate the title page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\disstitlepage}{
    \thispagestyle{empty}
    \vfill\strut
    \begin{center}
      %\MakeUppercase{\large \@universityname} \\[8mm]
		\MakeUppercase{ \@universityname} \\[8mm]
      \parbox[t]{\textwidth}{\raggedright
        \begin{center}
        \begin{spacing}{1}
%      {\MakeUppercase{\large \disstitle}}
      {\MakeUppercase{ \disstitle}}
	\end{spacing}
    \end{center}}\\[20mm]
      By \\[0.02\textheight]
      {\dissauthorFirst \ \dissauthorLast} \\
      \vspace{15mm}
      {A DISSERTATION} \\[15mm]

	\begin{spacing}{1}
		Submitted to the Faculty \\
		of the University of Miami \\
		in partial fulfillment of the requirements for \\
		the degree of Doctor of Philosophy\\[30mm]
	\end{spacing}
      \@universityaddress \\
      \dissmonth \ \dissyear
    \end{center}
    \strut\newpage}


    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Setup TableofContents Header  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\contentsname{Table of Contents}   %   Setup TableofContents Header
\setcounter{tocdepth}{1}                        %   Numbering Depth
%
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.3em \@plus\p@     %1.0em       % tweak distance b/w toc headers
    \setlength\@tempdima{1.5em}%
    \begingroup		
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Generate the copyright page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\disscopyrightpage}{
    \thispagestyle{empty}
    \strut \vfill
    \begin{center}
      \begin{spacing}{1}
      \copyright\dissyear \\
      \dissauthorFirst \ \dissauthorLast \\
      All Rights Reserved
      \end{spacing}
    \end{center}
    \newpage}


    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Generate the signature page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\disssignaturepage}{
  \thispagestyle{empty}
%  \vfill\strut
  \begin{center}
    \MakeUppercase{\normalsize \@universityname} \\[15mm]
    \begin{spacing}{1}
    A dissertation submitted in partial fulfillment of \\
    the requirements for the degree of\\
    Doctor of Philosophy\\
    \end{spacing}
    \vspace{2mm}
    \parbox[t]{\textwidth}{
      \begin{center}
	  \begin{spacing}{1}
		\MakeUppercase{\normalsize \disstitle}
%         	\MakeUppercase{\large an information-retrieval point of view}
	  \end{spacing}
      \end{center}}\\[8mm]
    {\dissauthorFirst\ \ \dissauthorLast}\\[10mm]
  \end{center}
  Approved: \\[10mm]
  %
  \begin{minipage}[t]{2.5in}
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}\newline
    \disssupervisor, Ph.D.\\
    \disssupervisortitle
  \end{spacing}
  \end{minipage}\hfill
  %
  \begin{minipage}[t]{2.6in}
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}\newline
    \disscommitteeFirst, Ph.D.\\ 
    \disscommitteeFirsttitle
  \end{spacing}
  \end{minipage}\\[10mm]
  %
  \begin{minipage}[t]{2.6in}
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}\newline 
	\disscommitteeSecond, Ph.D.\\
    \disscommitteeSecondtitle
  \end{spacing}  
  \end{minipage}\hfill
  %
  \begin{minipage}[t]{2.6in} 
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}~\newline
    \disscommitteeThird, Ph.D.\\
    \disscommitteeThirdtitle\\
  \end{spacing}  
  \end{minipage}\\[10mm]
  %
  \begin{minipage}[t]{2.5in}
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}\newline
    \disscommitteeoutside, Ph.D.\\
    \disscommitteeoutsidetitle
  \end{spacing}
  \end{minipage}\hfill
  %
  \begin{minipage}[t]{2.6in}
  \begin{spacing}{1}
    \rule{2.5in}{0.5pt}\newline
    \dissdean, Ph.D.\\
    \dissdeantitle
  \end{spacing}  
  \end{minipage} 
  \strut\newpage
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Create the dissertation Abstract  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{dissabstract}{
  \pagestyle{empty}\noindent 
%
  \parbox[t]{0.4\textwidth}{\raggedright
      \begin{spacing}{0}
	  { \MakeUppercase{\dissauthorLast,\ \dissauthorFirst\ }}
      \end{spacing}}\hfill
%
  \parbox[t]{0.6\textwidth}{\raggedleft
      \begin{spacing}{0}
	\hfill
	{ (Ph.D.,\ \dissmajor)}\\
      \end{spacing}}
%
  \parbox[t]{0.5\textwidth}{\raggedright
      \vspace{0mm}
      \begin{spacing}{0}\noindent
	  { \uline{\dissabstitle}}
      \end{spacing}}\hfill
%
  \parbox[t]{0.2\textwidth}{\raggedright
      \vspace{0mm}
      \begin{spacing}{1}\hfill
      { (\dissmonth \ \dissyear)}
      \end{spacing}} \\
%
  \parbox[t]{0.65\textwidth}{\raggedright
      \vspace{5mm}
      \begin{spacing}{1}
	  { Abstract of a dissertation at the University of Miami.}
      \end{spacing}}\\
%        
  \parbox[t]{0.85\textwidth}{\raggedright
      \vspace{5mm}
      \begin{spacing}{1}
	  { Dissertation supervised by Professor \disssupervisor.\\
	  No. of pages in text. (\pageref{LastPage})}
      \end{spacing}}\hfill
      \vspace{18mm}
      \begin{spacing}
	  {\@defaultbaselinestretch}  \noindent
      \end{spacing}
}
\newpage



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Environment to generate the dedication page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dissdedicationpage}{
    \thispagestyle{plain}
    \setcounter{page}{3}
    \strut \vfill
    \begin{spacing}{\@defaultbaselinestretch}
    \begin{center}
      \slshape \dissdedication
    \end{center}
    \end{spacing}
    \vfill \strut
    \newpage
}

    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Environment to generate the acknowledgments page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{dissacknowledgments}{
    %\doublespace\small\normalsize
     \chapter*{\dissacknowledgmenthead
         \@mkboth{\uppercase{\dissacknowledgmenthead}}
                 {\uppercase{\dissacknowledgmenthead}}}     
%     \begin{spacing}{\@defaultbaselinestretch}}
      \begin{spacing}{1.5}}
      { \end{spacing} \par \vspace{5mm}
        \raggedleft \@dissacknowledgmentsigname \\[1mm]
        \raggedright \@dissacknowledgmentsigplace \newpage}

     
     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Environment to generate the vita page  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{dissauthorvita}
    {\clearpage
     \chapter*{\dissvitahead
         \@mkboth{\uppercase{\dissvitahead}}
                 {\uppercase{\dissvitahead}}}
    \addcontentsline{toc}{chapter}{Vita}
    \begin{spacing}{\@defaultbaselinestretch}}
    {\end{spacing} \par \vspace{1mm}
%     \noindent Permanent Address:
       \begin{minipage}[t]{90mm}
%         \dissauthoraddress
       \end{minipage}}

       
       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Setup of the page layout  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@chapteralignment}{\centering}
\renewcommand{\chapter}{\clearpage
   \ifnum\@appendix=1
     \renewcommand{\@chaptertype}{\appendixname}
   \else
     \renewcommand{\@chaptertype}{\chaptername}
   \fi
   \thispagestyle{plain}%
   \global\@topnum\z@
   \@afterindenttrue
   \secdef\@chapter\@schapter
   }
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}
  \renewcommand{\@appendix}{1}}

  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Define chapter heading placement commands  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\leftchapter}{
    \renewcommand{\@chapteralignment}{\raggedright}}
\newcommand{\centerchapter}{
    \renewcommand{\@chapteralignment}{\centering}}
\newcommand{\rightchapter}{
    \renewcommand{\@chapteralignment}{\raggedleft}}


    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Command from report.cls, (c) LaTeX3 Project  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
      \refstepcounter{chapter}%
      \typeout{\MakeUppercase{\@chapapp}\space\thechapter.}%
      \ifnum\@appendix=0
	\addcontentsline{toc}{chapter}%
	    {
	\space\protect\numberline{\thechapter}\MakeUppercase{#1}}%
      \else
	\addcontentsline{toc}{chapter}%
	    {
	\space\protect\numberline {APPENDIX \thechapter  \quad \MakeUppercase{#1}}}%
      \fi
    \else
      \addcontentsline{toc}{chapter}{%
\MakeUppercase{\@chaptertype{}} \MakeUppercase{#1}}
    \fi
    \ifnum\value{chapter}=1
      \ifnum\@appendix=0
	\pagestyle{\@textpagestyle}
	\pagenumbering{\@textpagenumbering}
      \fi
    \fi
    \chaptermark{#1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \if@twocolumn
      \@topnewpage[\@makechapterhead{#2}]%
    \else
      \@makechapterhead{#2}%
      \@afterheading
    \fi
}

\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \Large \bfseries \MakeUppercase{\@chapapp}\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \begin{spacing}{1} \LARGE \bfseries #1\par\nobreak \end{spacing}
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \LARGE \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}

  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Command from report.cls, (c) LaTeX3 Project  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\chapterheading{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \addcontentsline{toc}{chapter}{Chapter}    
    \if@restonecol\twocolumn\fi
    }


\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
    \addcontentsline{toc}{chapter}{\MakeUppercase{\listtablename}}
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\uppercase{\listfigurename}}%
              {\uppercase{\listfigurename}}}%
    \addcontentsline{toc}{chapter}{\MakeUppercase{\listfigurename}}
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
    
 
\renewcommand\tableofcontents{%
\pagestyle{plain}
%\setlength{\textheight}{8.5in}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
	\begin{spacing}{2}
    \chapter*{\contentsname
        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
	\end{spacing}
}

    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Command to print a draft version of the dissertation  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dissdraft}{
%    \setlength{\topmargin}{0in}
%    \setlength{\headheight}{0.2in}
%    \setlength{\headsep}{0.25in}
    \renewcommand{\@textpagestyle}{myheadings}
    \def\ps@myheadings{%
     \let\@evenhead\@empty\let\@evenfoot\@empty
     \def\@oddhead{\hfill\thepage}
     \def\@oddfoot{\hfill\textsl{Draft of \timestamp}}%
     \let\@mkboth\@gobbletwo
     \let\chaptermark\@gobble
     \let\sectionmark\@gobble}
    }

    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Code to compute current timestamp  %%%
%%%  (some parts by Martin Minow)       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcount\hour \newcount\minute
\hour=\time  \divide \hour by 60
\minute=\time
\loop \ifnum \minute > 59 \advance \minute by -60 \repeat
\def\disstime{\ifnum \hour<13 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute
                      \ifnum \hour<12 \ am\else \ pm\fi
         \else \advance \hour by -12 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute \ pm\fi}

\def\dissdate{\ifcase\month\or
January\or February\or March\or April\or May\or June\or
July\or August\or September\or October\or November\or December\fi
\space\number\day, \number\year}

\newcount\dow
\newcount\leap
\newcount\x
\newcount\y

%leap = year + (month - 14)/12
\leap=\month \advance\leap by -14 \divide\leap by 12
  \advance\leap by \year

%dow = (13 * (month + 10 - (month + 10)/13*12) - 1)/5
\dow=\month \advance\dow by 10
  \y=\dow \divide\y by 13 \multiply\y by 12
  \advance\dow by -\y \multiply\dow by 13 \advance\dow by -1 \divide\dow by 5

%dow += day + 77 + 5 * (leap % 100)/4
\advance\dow by \day \advance\dow by 77
  \x=\leap \y=\x \divide\y by 100 \multiply\y by 100 \advance\x by -\y
  \multiply\x by 5 \divide\x by 4 \advance\dow by \x

%dow += leap / 400
\x=\leap \divide\x by 400 \advance\dow by \x

%dow -= leap / 100 * 2;
%dow = (dow % 7)
\x=\leap \divide\x by 100 \multiply\x by 2 \advance\dow by -\x
  \x=\dow \divide\x by 7 \multiply\x by 7 \advance\dow by -\x

\def\dissdayofweek{\ifcase\dow
Sunday\or Monday\or Tuesday\or
Wednesday\or Thursday\or Friday\or Saturday\fi}

\def\timestamp{\disstime, \dissdayofweek, \dissdate}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Commands for spacing                           %%%
%%%  (some parts from spacing.sty by Stephen Page)  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifx\undefined\selectfont
\def\@setsize#1#2#3#4{\@nomath#1
   \let\@currsize#1\baselineskip
   #2\baselineskip\baselinestretch\baselineskip
   \parskip\baselinestretch\parskip
   \setbox\strutbox\hbox{\vrule height.7\baselineskip
      depth.3\baselineskip width\z@}
   \normalbaselineskip\baselineskip#3#4}
\else
\def\@newbaseline{%
    \ifx\undefined\setnew@baselineskip
      \baselineskip\f@baselineskip\relax
    \else
      \setnew@baselineskip
    \fi
    \baselineskip\baselinestretch\baselineskip
    \setbox\strutbox\hbox{\vrule\@height.7\baselineskip
    \@depth.3\baselineskip \@width\z@}%
    \normalbaselineskip\baselineskip}
\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Reset baselinestretch within footnotes and floats  %%%
%%%  (from Stanford dissertation style)                 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@xfloat#1[#2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
   \@floatpenalty-\@Miii\fi\def\@captype{#1}\ifinner
      \@parmoderr\@floatpenalty\z@
    \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@#1\endcsname
       \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
       \@tfor \@tempa :=#2\do
                        {\if\@tempa h\advance\@tempcnta \@ne\fi
                         \if\@tempa t\advance\@tempcnta \tw@\fi
                         \if\@tempa b\advance\@tempcnta 4\relax\fi
                         \if\@tempa p\advance\@tempcnta 8\relax\fi
         }\global\count\@currbox\@tempcnta}\@fltovf\fi
    \global\setbox\@currbox\vbox\bgroup 
    \def\baselinestretch{1}
    \ifx\undefined\selectfont
    \small\normalsize
    \else
    \@newbaseline
    \fi
    \boxmaxdepth\z@
    \hsize\columnwidth \@parboxrestore}
\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}}}

      
      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  (from MIT dissertation style)  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\spacing#1{\par%
 \begingroup
 \def\baselinestretch{#1}
 \ifx\undefined\selectfont
 \ifx\@currsize\normalsize\@normalsize\else\@currsize\fi
 \else
 \@newbaseline
 \fi}
\def\endspacing{\par
 \vskip \parskip
 \vskip \baselineskip
 \endgroup
 \vskip -\parskip
 \vskip -\baselineskip}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Bibliography Environment  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
}

\renewcommand{\@textpagestyle}{myheadings}

\renewenvironment{thebibliography}[1]
     {\pagestyle{\@textpagestyle}                        
     \chapter*{\bibname
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \addcontentsline{toc}{chapter}{\MakeUppercase{\bibname}}
      \@starttoc{lof}%
      \if@restonecol\twocolumn
      \fi
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\renewcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  ENVIRONMENTS from IEEE  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% "box" symbols at end of proofs
\def\QEDclosed{\mbox{\rule[0pt]{1.3ex}{1.3ex}}} % for a filled box
% V1.6 some journals use an open box instead that will just fit around a closed one
\def\QEDopen{{\setlength{\fboxsep}{0pt}\setlength{\fboxrule}{0.2pt}\fbox{\rule[0pt]{0pt}{1.3ex}\rule[0pt]{1.3ex}{0pt}}}}
\def\QED{\QEDclosed} % default to closed
\def\proof{\noindent\hspace{2em}{\itshape Proof: }}
\def\endproof{\hspace*{\fill}~\QED\par\endtrivlist\unskip}
