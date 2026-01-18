\ProvidesClass{TellorLight}
%
% Tellor theme v1 (light variant)
% Layout-compatible with Tellor.cls, but optimized for light backgrounds.
%
\LoadClass[12pt]{beamer}
\RequirePackage{booktabs,pifont}

% MODERN TYPOGRAPHY
\RequirePackage[default,semibold]{sourcesanspro}
\RequirePackage{sourcecodepro}
\RequirePackage[T1]{fontenc}

\hypersetup{
    pdfpagemode=UseThumbs,
    pdfcreator={Tellor Beamer Theme (Light)},
    pdfproducer={LaTeX with Beamer},
    pdflang={en},
    colorlinks=false,
    pdfborder={0 0 0}
}

% LAYOUT CONSTANTS (alignment + repetition)
\newcommand{\TellorSideMargin}{0.5cm}
\newcommand{\TellorFrameTitleSize}{\Large}

% TELLOR OFFICIAL BRAND COLORS
\definecolor{TellorInkwell}{HTML}{191B24}       % Inkwell 950 - Primary dark
\definecolor{TellorPine}{HTML}{00D689}          % Pine 400 - Primary green accent
\definecolor{TellorEmerald}{HTML}{0A7149}       % Emerald 800 - Secondary green
\definecolor{TellorNeptune}{HTML}{0E5353}       % Neptune 800 - Teal accent
\definecolor{TellorOpal}{HTML}{AEB6C8}          % Opal 300 - Light gray
\definecolor{TellorWhite}{HTML}{FFFFFF}         % White
\definecolor{TellorDeepPine}{HTML}{003421}      % Deep Pine
\definecolor{TellorWordmarkTeal}{HTML}{003734}  % Wordmark teal (exact)

% Aliases for easy theming (kept compatible with Tellor.cls usage)
\colorlet{TellorDark}{TellorInkwell}
\colorlet{TellorAccent}{TellorPine}
\colorlet{TellorLight}{TellorWhite}
\colorlet{TellorGray}{TellorInkwell!55} % readable gray on white

% Block palette (contrast-first)
% Key rule: never place bright teal/green text on light grey/green panels.
% So: keep block bodies white, and use dark text inside.
\colorlet{TellorBlockTitleBg}{TellorAccent}
\colorlet{TellorBlockTitleFg}{TellorDark}
\colorlet{TellorBlockBodyBg}{TellorWhite}
\colorlet{TellorBlockBodyFg}{TellorDark}
\colorlet{TellorExampleTitleBg}{TellorEmerald}
\colorlet{TellorExampleTitleFg}{TellorWhite}
\colorlet{TellorRule}{TellorNeptune}

% TITLE GRAPHIC (use colored wordmark on light bg)
\titlegraphic{ \includegraphics[width=0.35\textwidth]{TellorWordmark} }

\mode<beamer>
\setbeamertemplate{blocks}[rounded][shadow=true]

% COLORS
\setbeamercolor{background canvas}{bg=TellorLight}
\setbeamercolor{normal text}{fg=TellorDark}
\setbeamercolor{title}{fg=TellorDark}
\setbeamercolor{subtitle}{fg=TellorGray}
\setbeamercolor{author}{fg=TellorGray}
\setbeamercolor{date}{fg=TellorGray}
\setbeamercolor{frametitle}{fg=TellorWordmarkTeal}
\setbeamercolor{structure}{fg=TellorAccent}
\setbeamercolor{item}{fg=TellorAccent}
\setbeamercolor{subitem}{fg=TellorAccent}
\setbeamercolor{itemize/enumerate body}{fg=TellorDark}

% Blocks
\setbeamercolor{block title}{fg=TellorBlockTitleFg, bg=TellorBlockTitleBg}
\setbeamercolor{block body}{fg=TellorBlockBodyFg, bg=TellorBlockBodyBg}
\setbeamercolor{block title example}{fg=TellorExampleTitleFg, bg=TellorExampleTitleBg}
\setbeamercolor{block body example}{fg=TellorBlockBodyFg, bg=TellorBlockBodyBg}

% FONTS
\setbeamerfont{title}{size=\Large, series=\bfseries}
\setbeamerfont{frametitle}{size=\TellorFrameTitleSize, series=\bfseries}
\setbeamerfont{block title}{size=\large, series=\bfseries}
\setbeamerfont{block body}{size=\small}

% REMOVE NAVIGATION
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{frametitle continuation}[from second][(\insertcontinuationcount)]

% CUSTOM ITEMIZE BULLETS
\setbeamertemplate{itemize item}{\textcolor{TellorAccent}{\scriptsize\ding{108}}}
\setbeamertemplate{itemize subitem}{\textcolor{TellorAccent}{\scriptsize\ding{110}}}
\setbeamertemplate{itemize subsubitem}{\textcolor{TellorGray}{\scriptsize\ding{109}}}

% FRAME TITLE WITH FULL-WIDTH RULE (aligned with footer margins)
\setbeamertemplate{frametitle}{%
    \vspace{0.9cm}
    \begin{beamercolorbox}[wd=\paperwidth, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{frametitle}
        \usebeamerfont{frametitle}\usebeamercolor[fg]{frametitle}\insertframetitle%
    \end{beamercolorbox}
    \vspace{0.2cm}
}

% PARAGRAPHS
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5ex}

% FOOTER
\setbeamercolor{footline}{bg=TellorLight, fg=TellorDark}
\setbeamertemplate{footline}{%
    \begin{beamercolorbox}[wd=\paperwidth, ht=0.8cm, dp=0.2cm, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{footline}
        \raisebox{0.15cm}{\includegraphics[height=0.5cm]{TellorWordmark}}%
    \end{beamercolorbox}
}

% TITLE PAGE TEMPLATE
\setbeamertemplate{title page}{%
    \vfill
    \begin{beamercolorbox}[wd=\paperwidth, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{title}
        \usebeamerfont{title}\inserttitle\par
        \vspace{0.3cm}
    \end{beamercolorbox}
    \vspace{0.5cm}
    \begin{beamercolorbox}[wd=\paperwidth, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{subtitle}
        \usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par
    \end{beamercolorbox}
    \vspace{1cm}
    \begin{beamercolorbox}[wd=\paperwidth, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{author}
        \usebeamerfont{author}\usebeamercolor[fg]{author}\insertauthor\par
    \end{beamercolorbox}
    \vspace{0.3cm}
    \begin{beamercolorbox}[wd=\paperwidth, leftskip=\TellorSideMargin, rightskip=\TellorSideMargin]{date}
        \usebeamerfont{date}\usebeamercolor[fg]{date}\insertdate\par
    \end{beamercolorbox}
    \vfill
    \vspace{0.5cm}
}

% CUSTOM COMMANDS (kept identical for compatibility)
\newcommand{\ex}[1]{%
\begin{exampleblock}{\textit{Example}}
#1
\end{exampleblock}
}

\newcommand{\titlebox}[2]{%
\begin{block}{#1}
#2
\end{block}
}

% Highlight text with accent color (safe on white)
\newcommand{\highlight}[1]{\textcolor{TellorAccent}{\textbf{#1}}}

% Alert text styling (for \alert{} command)
\setbeamercolor{alerted text}{fg=TellorEmerald}
\setbeamerfont{alerted text}{series=\bfseries}

% Warning block environment (scoped)
\newenvironment{warningblock}[1]{%
    \begingroup
    \setbeamercolor{block title}{fg=TellorWhite, bg=orange!70!black}
    \setbeamercolor{block body}{fg=TellorDark, bg=TellorWhite}
    \begin{block}{#1}
}{%
    \end{block}%
    \endgroup
}

% Info block environment (scoped)
\newenvironment{infoblock}[1]{%
    \begingroup
    \setbeamercolor{block title}{fg=TellorWhite, bg=TellorNeptune}
    \setbeamercolor{block body}{fg=TellorDark, bg=TellorWhite}
    \begin{block}{#1}
}{%
    \end{block}%
    \endgroup
}

% Arrow indicator
\newcommand{\arrow}{\hspace{0.5em}\textcolor{TellorAccent}{\ding{212}}\hspace{0.5em}}

% TRB token styling
\newcommand{\trb}[1]{\textcolor{TellorAccent}{\textbf{#1 TRB}}}

