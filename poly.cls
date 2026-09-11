\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{poly}[2026/09/06 Classe de document personnalisee pour poly de mathematiques]
\DeclareOption*{\PassToOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
\LoadClass[a4paper,10pt,headings=small,headings=openright,twoside=true]{scrreprt}
% ---------------------------------------------------------------------------------------------------- 
\let\nc\newcommand
\let\rnc\renewcommand
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{geometry}
\geometry{a4paper,top=1.27cm,bottom=2.54cm,left=1.27cm,right=1.27cm,footskip=12.7mm}
\addtokomafont{disposition}{\rmfamily}
\RequirePackage{setspace}
\setstretch{1.1}
\setlength{\parindent}{5mm}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{amsmath, amssymb, amsthm}
\newtheoremstyle{plain}{\topsep}{\topsep}{\itshape}{0pt}{\bfseries}{\newline\indent}{0pt}{}
\newtheoremstyle{definition}{\topsep}{\topsep}{\normalfont}{0pt}{\bfseries}{\newline\indent}{0pt}{}
\newtheoremstyle{remark}{\topsep}{\topsep}{\normalfont}{0pt}{\itshape}{~:\newline\indent}{0pt}{}
\theoremstyle{plain}
\newtheorem*{theoreme}{Théorème}
\newtheorem*{propriete}{Propriété}
\theoremstyle{definition}
\newtheorem*{definition}{Définition}
\newtheorem*{methode}{Méthode}
\newtheorem*{exercice}{Exercice}
\theoremstyle{remark}
\newtheorem*{demonstration}{Démonstration}
\newtheorem*{exemple}{Exemple}
\newtheorem*{remarque}{Remarque}
\newtheorem*{correction}{Correction}
\newenvironment{thm}{\begin{theoreme}}{\end{theoreme}}
\newenvironment{prop}{\begin{propriete}}{\end{propriete}}
\newenvironment{df}{\begin{definition}}{\end{definition}}
\newenvironment{meth}{\begin{methode}}{\end{methode}}
\newenvironment{exo}{\begin{exercice}}{\end{exercice}}
\newenvironment{demo}{\begin{demonstration}}{\end{demonstration}}
\newenvironment{ex}{\begin{exemple}}{\end{exemple}}
\newenvironment{rem}{\begin{remarque}}{\end{remarque}}
\rnc{\qedsymbol}{}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{amsfonts, mathtools, mathrsfs, yhmath, interval, xfp, relsize, siunitx, esvect, epsdice, numprint}
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
\nc{\eqv}{\Leftrightarrow}
\nc{\rarr}{\rightarrow}
\nc{\larr}{\leftarrow}
\nc{\Rarr}{\Rightarrow}
\nc{\Larr}{\Leftarrow}
\nc{\Lrarr}{\Leftrightarrow}
\rnc{\iff}{\Lrarr}
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
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{tikz,pgfplots,tkz-tab}
\usetikzlibrary{arrows.meta, calc, patterns, decorations.markings, shapes.geometric, positioning, backgrounds,decorations.text}
\pgfplotsset{compat=1.18}
\tikzset{arrow style/.style={thick, >={Stealth[scale=1.5]}, ->, shorten <=5pt, shorten >=5pt}}
\tikzset{double style/.style={double distance=3pt, line width=0.5pt}}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{lipsum, multicol, wrapfig, graphicx, fontawesome5}
\let\faWarning\faExclamationTriangle
\RequirePackage{eurosym}
\nc{\eur}{\,\text{\euro}}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{enumitem}
\setlist[itemize]{label=\textbullet}
\def\be{\begin{enumerate}}\def\ber{\begin{enumerate}[resume]}\def\ee{\end{enumerate}}
\def\bi{\begin{itemize}}\def\ei{\end{itemize}}
\def\bmc{\begin{multicols}}\def\emc{\end{multicols}}
\let\ms\medskip\let\bs\bigskip
\def\numero{n\up{\small{o}~}}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{listings,courier}
\lstset{
	language=Python,
	tabsize=4,
	keepspaces=true,
	breaklines=true,
	basicstyle=\ttfamily,
	texcl=true,
	commentstyle=\ttfamily
}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{hyperref}
\hypersetup{hidelinks, pdftitle={}, pdfauthor={}, psdextra}
\makeatletter\pdfstringdefDisableCommands{\def\HyPsd@Warning#1{}}\makeatother
