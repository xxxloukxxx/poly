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
\geometry{a4paper,top=2.5cm,bottom=2.5cm,left=2cm,right=2cm,footskip=12mm}
\addtokomafont{disposition}{\rmfamily}
\RequirePackage{setspace}
\setstretch{1.2}
\setlength{\parindent}{10mm}
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
\RequirePackage{amsfonts, mathtools, mathrsfs, yhmath, interval, xfp, relsize, siunitx, esvect, epsdice, numprint, pifont}
\mathsurround=2pt
\nc{\R}{\ensuremath{\mathbb{R}}}
\nc{\D}{\ensuremath{\mathbb{D}}}
\nc{\Q}{\ensuremath{\mathbb{Q}}}
\nc{\Z}{\ensuremath{\mathbb{Z}}}
\nc{\N}{\ensuremath{\mathbb{N}}}
\nc{\C}{\ensuremath{\mathbb{C}}}
\nc{\Cf}{\ensuremath{\mathcal{C}_f}}
\nc{\Cg}{\ensuremath{\mathcal{C}_g}}
\nc{\Ch}{\ensuremath{\mathcal{C}_h}}
\rnc{\vec}[1]{\ensuremath{\vv{#1}}}
\nc{\norm}[1]{\ensuremath{\left\lVert#1\right\rVert}}
\nc{\abs}[1]{\ensuremath{\left\lvert#1\right\rvert}}
\nc{\pa}[1]{\ensuremath{\left(#1\right)}}
\nc{\bra}[1]{\ensuremath{\left[#1\right]}}
\nc{\brac}[1]{\ensuremath{\left\{#1\right\}}}
\nc{\pfrac}[2]{\pa{\frac{#1}{#2}}}
\nc{\bfrac}[2]{\bra{\frac{#1}{#2}}}
\nc{\mat}[1]{\ensuremath{\begin{matrix}#1\end{matrix}}}
\nc{\pmat}[1]{\pa{\mat{#1}}}
\nc{\bmat}[1]{\bra{\mat{#1}}}
\nc{\determinant}[1]{\ensuremath{\left|\mat{#1}\right|}}
\nc{\coord}[2]{\pmat{#1\\#2}}
\nc{\coordl}[2]{\pa{#1\,;\,#2}}
\nc{\OIJ}{\pa{O;I,J}}
\nc{\vOIJ}{\pa{O;\vec{i},\vec{j}}}
\nc{\eqv}{\ensuremath{\Leftrightarrow}}
\nc{\rarr}{\ensuremath{\rightarrow}}\nc{\larr}{\ensuremath{\leftarrow}}
\nc{\Rarr}{\ensuremath{\Rightarrow}}\nc{\Larr}{\ensuremath{\Leftarrow}}
\nc{\Lrarr}{\ensuremath{\Leftrightarrow}}
\rnc{\iff}{\Lrarr}
\let\le\leqslant
\let\ge\geqslant
\nc{\lt}{\ifmmode\ensuremath{<}\else\textless\fi}
\nc{\gt}{\ifmmode\ensuremath{>}\else\textgreater\fi}
\nc{\dint}{\ensuremath{\displaystyle\int}}
\nc{\dx}{\ensuremath{\mathrm{d}x}}
\nc{\dy}{\ensuremath{\mathrm{d}y}}
\nc{\dz}{\ensuremath{\mathrm{d}z}}
\nc{\dt}{\ensuremath{\mathrm{d}t}}
\nc{\pd}{\ensuremath{\partial}}
\nc{\pdx}[1]{\ensuremath{\frac{\pd #1}{\pd x}}}
\nc{\pdy}[1]{\ensuremath{\frac{\pd #1}{\pd y}}}
\nc{\pdz}[1]{\ensuremath{\frac{\pd #1}{\pd z}}}
\nc{\pdt}[1]{\ensuremath{\frac{\pd #1}{\pd t}}}
\nc{\np}[1]{\ensuremath{\numprint{#1}}}
\rnc{\bar}[1]{\ensuremath{\overline{#1}}}
\rnc{\parallel}{\ensuremath{\mathbin{\!/\mkern-4mu/\!}}}
\intervalconfig{separator symbol={\,;\,}}
\nc{\intoo}[2]{\ensuremath{\interval[open,scaled]{#1}{#2}}}
\nc{\intff}[2]{\ensuremath{\interval[scaled]{#1}{#2}}}
\nc{\intof}[2]{\ensuremath{\interval[open left,scaled]{#1}{#2}}}
\nc{\intfo}[2]{\ensuremath{\interval[open right,scaled]{#1}{#2}}}
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
\RequirePackage{courier, listings}
\lstset{
	inputencoding=utf8, extendedchars=true,
	literate={á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1 {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1 {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1 {À}{{\`A}}1 {È}{{\`E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1 {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1 {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1 {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1 {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1 {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ç}{{\c{c}}}1 {Ç}{{\c{C}}}1,
	backgroundcolor=\color{gray!5},
	basicstyle=\ttfamily,
	commentstyle=\itshape\color{black!70!white},
	keywordstyle=\bfseries,
	breakatwhitespace=false, breaklines=true, showstringspaces=false,
}
% ----------------------------------------------------------------------------------------------------
\let\ms\medskip
\let\bs\bigskip
\def\numero{n\up{\small{o}~}}
\RequirePackage{enumitem}
\setlist[itemize]{label=\textbullet}
\def\be{\begin{enumerate}}\def\ber{\begin{enumerate}[resume]}\def\ee{\end{enumerate}}
\def\bi{\begin{itemize}}\def\ei{\end{itemize}}
\def\bmc{\begin{multicols}}\def\emc{\end{multicols}}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{hyperref}
\hypersetup{hidelinks, pdftitle={}, pdfauthor={}, psdextra}
\makeatletter\pdfstringdefDisableCommands{\def\HyPsd@Warning#1{}}\makeatother
