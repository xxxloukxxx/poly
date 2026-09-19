\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{poly}[2026/09/06 Classe de document personnalisee pour poly de mathematiques]
\DeclareOption*{\PassToOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt,headings=normal,headings=openright,twoside=true]{scrreprt}
% ---------------------------------------------------------------------------------------------------- 
\let\nc\newcommand
\let\rnc\renewcommand
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{geometry}
\geometry{a4paper,top=1.8cm,bottom=2.2cm,inner=2.0cm,outer=1.6cm,footskip=10mm}
\RequirePackage{fourier}
\addtokomafont{disposition}{\rmfamily}
\setcounter{tocdepth}{2}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{setspace}
\setstretch{1.05}
\newlength{\monindent}
\setlength{\monindent}{5mm}
\setlength{\parindent}{\monindent}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{amsmath, amssymb, amsthm}
\newtheoremstyle{plain}{\topsep}{\topsep}{\itshape}{0pt}{\bfseries}{~\dotfill\newline\indent}{0pt}{}
\newtheoremstyle{definition}{\topsep}{\topsep}{\normalfont}{0pt}{\bfseries}{~\dotfill\newline\indent}{0pt}{}
\newtheoremstyle{remark}{\topsep}{\topsep}{\normalfont}{0pt}{\itshape}{~:\newline\indent}{0pt}{}
\theoremstyle{plain}
\newtheorem*{theoreme}{\faCheckCircle\, Théorème}
\newtheorem*{propriete}{\faDraftingCompass\, Propriété}
\theoremstyle{definition}
\newtheorem*{definition}{\faBook\, Définition}
\newtheorem*{methode}{\faLightbulb\, Méthode}
\newtheorem*{exercice}{\faPenSquare\, Exercice}
\theoremstyle{remark}
\newtheorem*{demonstration}{\faSearch\, Démonstration}
\newtheorem*{exemple}{Exemple}
\newtheorem*{remarque}{Remarque}
\newtheorem*{correction}{Correction}
\newtheorem*{attention}{\faExclamationTriangle\,\normalfont\bfseries\ Attention}
\newtheorem*{piege}{\faExclamationTriangle\,\normalfont\bfseries Piège classique}
\newtheorem*{ideerecue}{\faExclamationTriangle\,\normalfont\bfseries Idée reçue}
\newtheorem*{erreur}{\faExclamationTriangle\,\normalfont\bfseries Erreur à éviter}
\newtheorem*{fauxami}{\faExclamationTriangle\,\normalfont\bfseries Faux ami}
\newtheorem*{miseengarde}{\faExclamationTriangle\,\normalfont\bfseries Mise en garde}

\newenvironment{thm}{\begin{theoreme}}{\end{theoreme}}
\newenvironment{prop}{\begin{propriete}}{\end{propriete}}
\newenvironment{df}{\begin{definition}}{\end{definition}}
\newenvironment{defn}{\begin{definition}}{\end{definition}}
\newenvironment{defin}{\begin{definition}}{\end{definition}}
\newenvironment{meth}{\begin{methode}}{\end{methode}}
\newenvironment{exo}{\begin{exercice}}{\end{exercice}}
\newenvironment{demo}{\begin{demonstration}}{\end{demonstration}}
\newenvironment{ex}{\begin{exemple}}{\end{exemple}}
\newenvironment{exmpl}{\begin{exemple}}{\end{exemple}}
\newenvironment{rem}{\begin{remarque}}{\end{remarque}}
\newenvironment{rmq}{\begin{remarque}}{\end{remarque}}
\rnc{\qedsymbol}{}
% saut si on commence un \begin{ex} par un \begin{itemize / enumerate / wrapstuff}
\nc{\nline}{\leavevmode\vspace{-\baselineskip}}
\let\ajusteliste\nline
% ----------------------------------------------------------------------------------------------------
\RequirePackage{amsfonts, mathtools, mathrsfs, interval, xfp, relsize, siunitx, esvect, epsdice, numprint}
\mathsurround=1pt
\nc{\R}{\mathbb{R}}
\nc{\D}{\mathbb{D}}
\nc{\Q}{\mathbb{Q}}
\nc{\Z}{\mathbb{Z}}
\nc{\N}{\mathbb{N}}
\nc{\C}{\mathbb{C}}
\nc{\Cf}{\mathcal{C}_f}
\nc{\Cg}{\mathcal{C}_g}
\nc{\Ch}{\mathcal{C}_h}
\rnc{\vec}[1]{\vv{#1}}
\nc{\norm}[1]{\left\lVert#1\right\rVert}
\nc{\abs}[1]{\left\lvert#1\right\rvert}
\nc{\pa}[1]{\left(#1\right)}
\nc{\bra}[1]{\left[#1\right]}
\nc{\brac}[1]{\left\{#1\right\}}
\nc{\pfrac}[2]{\pa{\frac{#1}{#2}}}
\nc{\bfrac}[2]{\bra{\frac{#1}{#2}}}
\nc{\mat}[1]{\begin{matrix}#1\end{matrix}}
\nc{\pmat}[1]{\pa{\mat{#1}}}
\nc{\bmat}[1]{\bra{\mat{#1}}}
\nc{\determinant}[1]{\left|\mat{#1}\right|}
\nc{\coord}[2]{\pmat{#1\\#2}}
\nc{\coordl}[2]{\pa{#1\,;\,#2}}
\nc{\OIJ}{\pa{O;I,J}}
\nc{\vOIJ}{\pa{O;\vec{i},\vec{j}}}
\nc{\eqv}{\Longleftrightarrow}
\nc{\rarr}{\rightarrow}
\nc{\larr}{\leftarrow}
\nc{\Rarr}{\Rightarrow}
\nc{\Larr}{\Leftarrow}
\nc{\Lrarr}{\Leftrightarrow}
\let\le\leqslant
\let\ge\geqslant
\nc{\lt}{\ifmmode{<}\else\textless\fi}
\nc{\gt}{\ifmmode{>}\else\textgreater\fi}
\nc{\dint}{\displaystyle\int}
\nc{\dx}{\mathrm{d}x}
\nc{\dy}{\mathrm{d}y}
\nc{\dz}{\mathrm{d}z}
\nc{\dt}{\mathrm{d}t}
\nc{\pd}{\partial}
\nc{\pdx}[1]{\frac{\pd #1}{\pd x}}
\nc{\pdy}[1]{\frac{\pd #1}{\pd y}}
\nc{\pdz}[1]{\frac{\pd #1}{\pd z}}
\nc{\pdt}[1]{\frac{\pd #1}{\pd t}}
\nc{\np}[1]{\numprint{#1}}
\rnc{\bar}[1]{\overline{#1}}
\rnc{\parallel}{\mathbin{\!/\mkern-4mu/\!}}
\intervalconfig{separator symbol={\,;\,}}
\nc{\intoo}[2]{\interval[open,scaled]{#1}{#2}}
\nc{\intff}[2]{\interval[scaled]{#1}{#2}}
\nc{\intof}[2]{\interval[open left,scaled]{#1}{#2}}
\nc{\intfo}[2]{\interval[open right,scaled]{#1}{#2}}
\nc\cmath[1]{\begin{center}\ensuremath{#1}\end{center}}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{tikz,pgfplots,tkz-tab}
\usetikzlibrary{calc, patterns, positioning, backgrounds}
\usetikzlibrary{arrows.meta, decorations.markings, decorations.text, shapes.geometric}
\usetikzlibrary{lindenmayersystems}
\pgfplotsset{compat=1.18}
\tikzset{arrow style/.style={thick, >={Stealth[scale=1.5]}, ->, shorten <=5pt, shorten >=5pt}}
\tikzset{double style/.style={double distance=3pt, line width=0.5pt}}
\tikzset{>=Stealth}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{lipsum, graphicx, fontawesome5, pifont, wrapstuff, xhfill}
\let\faWarning\faExclamationTriangle
\RequirePackage{eurosym}
\nc{\eur}{\,\text{\euro}}
\nc\numero[1]{n\textsuperscript{\small{o}~}#1}
\let\ms\medskip\let\bs\bigskip
% ----------------------------------------------------------------------------------------------------
\RequirePackage{enumitem,multicol}
\setlist[itemize]{label=\textbullet}
\def\bi\begin{itemize}\def\ei\end{itemize}
\def\be\begin{enumerate}\def\ee\end{numerate}
\def\ber{\begin{enumerate}[resume]}
\def\bmc\begin{multicols}\def\emc\end{multicols}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{listings,courier}
\lstset{
	language=Python,
	tabsize=4,
	keepspaces=true,
	breaklines=true,
	basicstyle=\ttfamily,
	texcl=true,
	commentstyle=\ttfamily,
	frame=single,
	framerule=0.8pt,
	framesep=5pt,
}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{hyperref}
\hypersetup{hidelinks, pdftitle={}, pdfauthor={}, psdextra}
\makeatletter\pdfstringdefDisableCommands{\def\HyPsd@Warning#1{}}\makeatother
% ----------------------------------------------------------------------------------------------------
\nc\illustration{
	\begin{tikzpicture}[cap=round]
		\colorlet{anglecolor}{white!50!black}
		\colorlet{bordercolor}{black}
		\def\alpha{10}
		\def\layer{5}
		\begin{scope}[scale=5]
			\pgfmathsetmacro\sinTriDiff{sin(60-\alpha)}
			\pgfmathsetmacro\cosTriDiff{1-cos(60-\alpha)}
			\pgfmathsetmacro\radiusC{sqrt(\cosTriDiff*\cosTriDiff + \sinTriDiff*\sinTriDiff)}
			\pgfmathsetmacro\startAng{\alpha + atan(\sinTriDiff/\cosTriDiff)}
			\pgfmathsetmacro\al{\alpha*\layer}
			\foreach \x in {0,\alpha,...,\al}
				{
					\pgfmathsetmacro\ang{\x + \startAng}
					\pgfmathsetmacro\xRs{\radiusC*cos(\ang)}
					\pgfmathsetmacro\yRs{\radiusC*sin(\ang)}
					\pgfmathsetmacro\radiusLayer{\xRs + sqrt( 1 - \yRs*\yRs )}
					\pgfmathsetmacro\angRs{acos(\yRs)}
					\pgfmathsetmacro\angRss{acos(\radiusC*sin(\ang-\alpha))}
					\colorlet{anglecolor}{gray!\ang!white}
					\pgfmathsetmacro\step{2*\alpha - 180}
					\pgfmathsetmacro\stop{180-2*\alpha}
					\foreach \y in {-180, \step ,..., \stop}
						{
							\pgfmathsetmacro\deltaAng{\y-\x}
							\filldraw[color=anglecolor,draw=bordercolor] (\y-\x:\radiusLayer) arc (-90+\angRs+\deltaAng : \alpha-90+\angRss+\deltaAng :1) arc (\alpha+90-\angRss+\deltaAng : 2*\alpha+90-\angRs+\deltaAng :1) arc (\deltaAng+2*\alpha : \deltaAng : \radiusLayer);
						}
				}
			\pgfmathsetmacro\xRs{\radiusC*cos(\al+\startAng)}
			\pgfmathsetmacro\yRs{\radiusC*sin(\al+\startAng)}
			\pgfmathsetmacro\radiusLayer{\xRs + sqrt( 1 - \yRs*\yRs )}
			\draw[line width=2, color=bordercolor] (0,0) circle (.8*\radiusLayer);
			\pgfmathsetmacro\radiusSmall{.7*\radiusLayer}
			\foreach \x in {-60,0,...,240}
				{
					\fill[color=anglecolor] (\x:\radiusSmall) arc (-180+\x+60: -180+\x: \radiusSmall)
					arc (0+\x: -60+\x: \radiusSmall)
					arc (120+\x: 60+\x: \radiusSmall);
				}
			\foreach \x in {0, 4, ..., 360}
				{
					\fill[color=anglecolor] (\x:1) -- (\x+3:1.05) -- (\x+5:1.05) -- (\x+2:1) -- cycle;
					\fill[color=anglecolor] (\x+5:1.05) -- (\x+7:1.05) -- (\x+4:1.1) -- (\x+2:1.1) -- cycle;
				}
			\draw[line width=1, color=bordercolor] (0,0) circle (1);
			\draw[line width=1, color=bordercolor] (0,0) circle (1.1);
		\end{scope}
	\end{tikzpicture}
}

\makeatletter
\if@titlepage
	\renewcommand\maketitle{%
		\begin{titlepage}%
			\let\maketitle\relax
			\let\thanks\relax
			\null\vfil
			\vskip 60\p@
			\begin{center}%
				{\Huge\bfseries \@title \par}%
				\vskip 3em%
					{\LARGE
						\lineskip .75em%
						\begin{tabular}[t]{c}%
							\@author
						\end{tabular}\par}%
				\vskip 1.5em%
					{\Large \@date \par}%
				\vspace{30mm}
				\illustration
			\end{center}
			\vfil\null
		\end{titlepage}%
		\setcounter{footnote}{0}%
		\global\let\thanks\relax
		\global\let\maketitle\relax
		\global\let\@thanks\@empty
		\global\let\@author\@empty
		\global\let\@date\@empty
		\global\let\@title\@empty
		\global\let\title\relax
		\global\let\author\relax
		\global\let\date\relax
		\global\let\and\relax
	}
\fi
\makeatother
