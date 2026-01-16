\ProvidesClass{Tellor}
%
% Vendored Tellor theme (pinned copy)
% Source-of-truth: /themes/Tellor/v1/Tellor.cls
% Project: /presentations/rewards-presentation
%

\LoadClass[12pt]{beamer}
\RequirePackage{booktabs,pifont,times,mathptmx}

\hypersetup{pdfpagemode=UseThumbs}

% TELLOR OFFICIAL BRAND COLORS
% From Tellor Brand Materials - Colour Palette
\definecolor{TellorInkwell}{HTML}{191B24}       % Inkwell 950 - Primary dark background
\definecolor{TellorPine}{HTML}{00D689}          % Pine 400 - Primary green accent
\definecolor{TellorEmerald}{HTML}{0A7149}       % Emerald 800 - Secondary green
\definecolor{TellorNeptune}{HTML}{0E5353}       % Neptune 800 - Teal accent
\definecolor{TellorOpal}{HTML}{AEB6C8}          % Opal 300 - Light gray text
\definecolor{TellorWhite}{HTML}{FFFFFF}         % White - Primary text

% Aliases for easy theming
\colorlet{TellorDark}{TellorInkwell}
\colorlet{TellorAccent}{TellorPine}
\colorlet{TellorLight}{TellorWhite}
\colorlet{TellorGray}{TellorOpal}

% TITLE GRAPHIC
\titlegraphic{ \includegraphics[width=0.35\textwidth]{TellorLogo} }

\mode<beamer>
\setbeamertemplate{blocks}[rounded][shadow=true]

% COLORS
\setbeamercolor{background canvas}{bg=TellorDark}
\setbeamercolor{title}{fg=TellorLight}
\setbeamercolor{subtitle}{fg=TellorGray}
\setbeamercolor{author}{fg=TellorGray}
\setbeamercolor{date}{fg=TellorGray}
\setbeamercolor{normal text}{fg=TellorLight}
\setbeamercolor{frametitle}{fg=TellorLight}
\setbeamercolor{item}{fg=TellorAccent}
\setbeamercolor{subitem}{fg=TellorAccent}
\setbeamercolor{itemize/enumerate body}{fg=TellorLight}
\setbeamercolor{block title}{fg=TellorDark, bg=TellorAccent}
\setbeamercolor{block body}{fg=TellorLight, bg=TellorNeptune!30}
\setbeamercolor{block title example}{fg=TellorDark, bg=TellorEmerald}
\setbeamercolor{block body example}{fg=TellorLight, bg=TellorNeptune!30}

% FONTS
\setbeamerfont{title}{size=\Large, series=\bfseries}
\setbeamerfont{frametitle}{series=\bfseries}
\setbeamerfont{block title}{size=\large, series=\bfseries}
\setbeamerfont{block body}{size=\small}

% REMOVE NAVIGATION
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{frametitle continuation}[from second][(\insertcontinuationcount)]

% PARAGRAPHS
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5ex}

% FOOTER
\setbeamertemplate{footline}{%
    \vspace{0.2cm}
    \hspace{0.5cm}
    \includegraphics[height=0.4cm]{TellorWordmark}
    \hfill
    \textcolor{TellorGray}{\footnotesize\insertframenumber/\inserttotalframenumber}
    \hspace{0.3cm}
    \includegraphics[height=0.4cm]{TellorIcon}
    \hspace{0.5cm}
    \vspace{0.2cm}
}

% CUSTOM COMMANDS

% Example block with Tellor styling
\newcommand{\ex}[1]{%
\begin{exampleblock}{\textit{Example}}
#1
\end{exampleblock}
}

% Titled block
\newcommand{\titlebox}[2]{%
\begin{block}{#1}
#2
\end{block}
}

% Highlight text with accent color
\newcommand{\highlight}[1]{\textcolor{TellorAccent}{\textbf{#1}}}

% Arrow indicator
\newcommand{\arrow}{\hspace{0.5em}\textcolor{TellorAccent}{\ding{212}}\hspace{0.5em}}

% TRB token styling
\newcommand{\trb}[1]{\textcolor{TellorAccent}{\textbf{#1 TRB}}}
