%
% Classe ppgmc-uesc.cls para o Programas de mestrado e doutorado baseada na classe abntex da ABNT
%   by: Valdex de Jesus Santos <valdexsantos@ifba.edu.br>
%   Mais templates em  gg.gg/profwaldexsantos
%	
\PassOptionsToPackage{inline,shortlabels}{enumitem} % para corrigir conflito no enumerate personalizado no abntex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pacotes/ppgmc-uesc}[2022/1/30 v6.0]

% repassa os parametros ao abntex2
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{abntex2}
}

\PassOptionsToClass{
	12pt,				% tamanho da fonte
	openright,			% capítulos começam em pág ímpar (insere página vazia caso preciso)
	a4paper,			% tamanho do papel.
	sumario=tradicional,		% seleciona o sumário tradicional
	% -- opções da classe abntex2 --
	%chapter=TITLE,			% títulos de capítulos convertidos em letras maiúsculas
	%section=TITLE,			% títulos de seções convertidos em letras maiúsculas
	%subsection=TITLE,		% títulos de subseções convertidos em letras maiúsculas
	%subsubsection=TITLE,		% títulos de subsubseções convertidos em letras maiúsculas
		brazil,	% o último idioma é o principal do documento
	}{abntex2}
%=====================================================
\ProcessOptions\relax
\LoadClass{abntex2}
\RequirePackage{chngcntr}
% define a numeração das equações de forma sequencial
\counterwithout{equation}{chapter}

%=====================================================
% ESTILO DE ELEMENTOS
%=====================================================
% elementos pre-textuais
\renewcommand{\pretextual}{
	\pagenumbering{roman} % algarismos romanos
	\aliaspagestyle{chapter}{empty}%tira a numeração dos elementos pré-textuais
	\pagestyle{empty} 
	\aliaspagestyle{cleared}{empty}
	\aliaspagestyle{part}{empty}
}

% elementos textuais
% Configura layout para elementos textuais
\renewcommand{\textual}{
	\pagenumbering{arabic} % inicia a numeração em 1
	\ifthenelse{\equal{\ABNTEXisarticle}{true}}{
		\pagestyle{plain}
	}{
		\pagestyle{abntheadings}
		\aliaspagestyle{chapter}{abntchapfirst}
	}
	\nouppercaseheads
	\bookmarksetup{startatroot}
}

% elementos pos-textuais
\renewcommand{\postextual}{\phantompart}

%=====================================================
% COMANDOS DE DADOS
%=====================================================
% comandos de dados - programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% comandos de dados - subtítulo
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

%comando de título em english
\providecommand{\imprimirtitleenglish}{}
\newcommand{\titleenglish}[1]{\renewcommand{\imprimirtitleenglish}{#1}}

% comandos de dados - instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% comandos de dados - instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% criação do comando para área de concentração (folha de rosto)
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% criação do comando para linha de pesqusa (folha de rosto)
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

%=====================================================
%DADOS DA DEFFESA
%=====================================================
%comando data de defesa
\providecommand{\imprimirdatadefesa}{}
\newcommand{\datadefesa}[1]{\renewcommand{\imprimirdatadefesa}{#1}}

\providecommand{\imprimirbancamembrointerno}{}
\newcommand{\bancamembrointerno}[1]{\renewcommand{\imprimirbancamembrointerno}{#1}}

\providecommand{\imprimirbancainstmembrointerno}{}
\newcommand{\bancainstmembrointerno}[1]{\renewcommand{\imprimirbancainstmembrointerno}{#1}}

\providecommand{\imprimirbancamembroexterno}{}
\newcommand{\bancamembroexterno}[1]{\renewcommand{\imprimirbancamembroexterno}{#1}}

\providecommand{\imprimirbancainstmembroexterno}{}
\newcommand{\bancainstmembroexterno}[1]{\renewcommand{\imprimirbancainstmembroexterno}{#1}}

\providecommand{\imprimirbancasegundomembroexterno}{}
\newcommand{\bancasegundomembroexterno}[1]{\renewcommand{\imprimirbancasegundomembroexterno}{#1}}

\providecommand{\imprimirbancainstsegundomembroexterno}{}
\newcommand{\bancainstsegundomembroexterno}[1]{\renewcommand{\imprimirbancainstsegundomembroexterno}{#1}}

%=================================================

\newcommand{\logoInst}[1]{ %COMANDO DA LOGO
\newcommand{\logo}{#1}
}

%=====================================================
% OBJETOS FLUTUANTES
%=====================================================
% comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]{
	\begin{SingleSpacing}\par\end{SingleSpacing}
	\begin{tabular}{p{.05\textwidth}p{.9\textwidth}}
		Nota: & #1
	\end{tabular}
}


%=====================================================
% PARÁGRAFOS
%=====================================================
% tamanho da identação do parágrafo
\setlength{\parindent}{1.3cm}

% espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.2cm}


%=====================================================
% FONTES
%=====================================================
% redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\Large}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\Large}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\large}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}


%=====================================================
% SUMÁRIO
%=====================================================
% travessão no sumário para apêndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill{} -- \hfill{}}

% insere espaço entre os itens do sumario de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}


%=====================================================
% LISTAS
%=====================================================
% define os títulos das listas
\addto\captionsbrazil{
	% ajusta nomes padrões do babel
	\renewcommand{\listadesiglasname}{Lista de abreviaturas e siglas}
	\renewcommand{\listadesimbolosname}{Lista de s\'imbolos}
	\renewcommand{\listfigurename}{Lista de figuras}
	\renewcommand{\listtablename}{Lista de tabelas}
	% ajusta nomes usados com a macro \autoref
	\renewcommand{\pageautorefname}{p\'agina}
	\renewcommand{\sectionautorefname}{Se{\c c}\~ao}
	\renewcommand{\subsectionautorefname}{Subse{\c c}\~ao}
	\renewcommand{\subsubsectionautorefname}{Subse{\c c}\~ao}
	\renewcommand{\paragraphautorefname}{Subse{\c c}\~ao}
}
\newcommand{\listofquadrosname}{Lista de quadros}

% cria a lista de quadros
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}


%=====================================================
% CAPA
%=====================================================
\makeatletter
\renewcommand{\imprimircapa}{
	\begin{capa}

		\hspace{-2.0cm}
		\begin{minipage}{.2\textwidth}
			\logo
		\end{minipage}
		\quad
		\hspace{-1.5cm}
		\begin{minipage}{.9\textwidth}
			\begin{center}
			\normalfont\scshape\textbf{\imprimirinstituicao}\\\vspace*{0.3cm}
			\normalfont\scshape\textbf{\small\imprimirprograma}\\
   
			\end{center}
		\end{minipage}
		
	\vspace*{50pt}
	
	\begin{center}
				\large\normalfont\scshape\textbf\imprimirautor
			\end{center}
			
		\vspace*{170pt}

		\begin{center}
			\ABNTEXchapterfont\scshape\textbf\imprimirtitulo
			\abntex@ifnotempty{\imprimirsubtitulo}{
				{\ABNTEXchapterfont\scshape\textbf{\hspace*{-0.3em}: }}{\ABNTEXchapterfont\large\scshape\imprimirsubtitulo}
			}
		\end{center}

		\vspace*{20pt}

%		\begin{center}
%			\small\imprimirorientadorRotulo{} \imprimirorientador \\
%			\small\imprimirinstOrientador \\
%			\abntex@ifnotempty{\imprimircoorientador}
%			{
%				\begin{SingleSpacing}\par\end{SingleSpacing}
%				\small\imprimircoorientadorRotulo{} \imprimircoorientador \\
%				\small\imprimirinstCoorientador
%			}
%		\end{center}
%
		\vspace*{\fill}

		\begin{center}
			\normalfont\scshape\textbf{\imprimirlocal}\\
			\normalfont\scshape\textbf{\imprimirdata}
		\end{center}

	\end{capa}
}
\makeatother


%=====================================================
% FOLHA DE ROSTO
%=====================================================
\makeatletter
\renewcommand{\folhaderostocontent}{
	\setcounter{page}{2}
	\begin{center}
		{\large\normalfont\scshape\textbf\imprimirautor}
	\end{center}

	\vspace*{150pt}

	\begin{center}
		\ABNTEXchapterfont\Large\scshape\imprimirtitulo
		\abntex@ifnotempty{\imprimirsubtitulo}{
			{\ABNTEXchapterfont\Large\scshape{\hspace*{-0.3em}: }}{\ABNTEXchapterfont\large\scshape\imprimirsubtitulo}
		}
	\end{center}

	\vspace*{90pt}

	\abntex@ifnotempty{\imprimirpreambulo}{
		\SingleSpacing
		\begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
			& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
			\abntex@ifnotempty{\imprimirareaconcentracao}
			{
				& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
			}
			\abntex@ifnotempty{\imprimirlinhapesquisa}
			{
					& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
			}
			& \small\imprimirorientadorRotulo & \imprimirorientador \\
			& & %espaço se quiser colocar instituição
            \\ & & \\
			\abntex@ifnotempty{\imprimircoorientador}
			{
				& \small\imprimircoorientadorRotulo & \imprimircoorientador \\
				& & %espaço se quiser colocar instituição
			}
		\end{tabular}
	}

	\vspace*{\fill}

	\begin{center}
	%	\normalfont\scshape{\imprimirinstituicao}\\
	%	\normalfont\scshape{\imprimirprograma}\\
		\normalfont\scshape{\imprimirlocal}\\
		\normalfont\scshape{\imprimirdata}
	\end{center}
}
\makeatother

%=====================================================
% DEDICATORIA
%=====================================================
\renewenvironment{dedicatoria}[1][]
{
	\ifthenelse{\equal{#1}{}}{
		\PRIVATEbookmarkthis{\dedicatorianame}
	}{\pretextualchapter{#1}}

	\vspace*{\fill}

	\begin{flushright}
		\begin{minipage}{.5\textwidth}
			\begin{SingleSpacing}
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}
{
			\end{SingleSpacing}
		\end{minipage}
	\end{flushright}
}

% EPIGRAFE
%=====================================================
\renewenvironment{epigrafe}[1][]
{
	\ifthenelse{\equal{#1}{}}{
		\PRIVATEbookmarkthis{\epigraphname}
	}{\pretextualchapter{#1}}

	\vspace*{\fill}

	\begin{flushright}
		\begin{minipage}{.5\textwidth}
			\begin{SingleSpacing}
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}
{
			\end{SingleSpacing}
		\end{minipage}
	\end{flushright}
}
%=====================================================
% importações de pacotes
	\usepackage[alf, abnt-emphasize=bf, bibjustif, recuo=0cm, abnt-etal-cite=2, abnt-etal-list=0]{abntex2cite}	% citações padrão ABNT
	\usepackage{bookmark}					% cria menu de bookmarks
	\usepackage[utf8]{inputenc}				% acentuação direta
	\usepackage[T1]{fontenc}				% codificação da fonte em 8 bits
	\usepackage{graphicx}					% inserir figuras
	\usepackage{float}				    	%PERMITE usar H em figura
	%\usepackage{picinpar}					% imagens ao lado do texto
	
%\WarningsOff[ppgmc-uesc]% suprimir advertências relacionas ao pacote everypage
	\usepackage{amsfonts, amssymb, amsmath}		% fonte e simbolos matemáticos
	\usepackage{cancel}                     %cancelar termos numa expressão matemática
	\usepackage{lastpage}			% Usado pela Ficha catalográfica
	\usepackage{verbatim}					% texto é interpretado como escrito no documento
	\usepackage{multirow, array}				% múltiplas linhas e colunas em     tabelas
	\usepackage{indentfirst}				% indenta o primeiro parágrafo de cada seção.
	\usepackage[algoruled, portuguese]{algorithm2e}		% escrever algoritmos
	%\usepackage{times}				    	% usa a fonte Times
	%PARA INCLUIR SUBFIGURAS precisa do caption e subcaption
	\usepackage{caption} 
    \usepackage{subcaption}
	\usepackage{hyperref} 
	\usepackage{multicol}                   % para usar o ambiente multicols-multiplas colunas
%	\usepackage{paralist}                  %permite listas especiais
	\usepackage{xcolor, colortbl}			% comandos de cores
	%\usepackage{breakurl}					% permite quebra de linha em urls
	%\usepackage{subeqnarray}				% sub enumeração de equações
	%\usepackage{makeidx}					% produzir índice remissivo (glossario)
	%\usepackage{multind}					% produzir índices múltiplos
	\usepackage{pdfpages}               % inserir arq. pdf no texto (ex.: folha de aprovação e ficha catalográfica)
	\usepackage{pdflscape}                % permite colocar página em formato paisagem
%	\usepackage[normalem]{ulem} % para o underline colorido
    \usepackage{rotating} % permite rotacionar uma tabela na página usando o \begin{sidewaystable}

\makeatother

%=====================================================
% define as cores dos links e informações do pdf
\makeatletter
\hypersetup{
	portuguese,
	colorlinks,
	linkcolor=blue,
	citecolor=blue,
	filecolor=blue,
	urlcolor=blue,
	breaklinks=true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfsubject={\imprimirpreambulo},
	pdfkeywords={abnt, latex, abntex, abntex2}
}
