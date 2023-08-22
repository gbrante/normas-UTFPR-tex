%% version 3.2
%% normas-utf-tex.cls
%% Copyright 200?-2011 Diogo Rosa Kuiaski <diogo.kuiaski@gmail.com>
%% Copyright 200?-2011 Hugo Vieira Neto <hvieir@utfpr.edu.br>
%% Copyright 2011      César M. Vargas Benítez <cesarvargasb@gmail.com>
%% Copyright 2011-2017      Marcos Talau <talau@users.sourceforge.net>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
% http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
% 
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is normas-utf-sf.net.
% 
% This work consists of the file normas-utf-tex.cls

% dependência: abntex >= 0.9-beta2

\NeedsTeXFormat{LaTeX2e}
\def\input@path{{./abntex/}}


\input{cvs-id.def}
\CVSExtract$Id: normas-utf-tex.cls,v 2.0 2011/06/19 15:30:04 gweber Exp $
\CVSPackage{normas-utf-tex}{}

\PassOptionsToClass{pagestart=firstchapter,chapter=TITLE,section=TITLE}{abnt}

\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{perpage}
\RequirePackage[utf8]{inputenc}
\PassOptionsToPackage{hyperindex=false}{hyperref}
\PassOptionsToPackage{estilo=UTFPR}{tabela-simbolos}

\LoadClass{abnt}

\usepackage{caption}
\DeclareCaptionType[name={quadro},listname={quadro}]{quadro}[Quadro]

\usepackage{chngcntr}

\makeatletter	%Para que se entenda o @


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINICOES DA UTFPR

\providecommand{\UTFPRdepartamentodata}{}
\newcommand{\departamento}[1]{\renewcommand{\UTFPRdepartamentodata}{#1}}

\providecommand{\UTFPRprogramadata}{}
\newcommand{\programa}[1]{\renewcommand{\UTFPRprogramadata}{#1}}

\providecommand{\UTFPRareadata}{}
\newcommand{\area}[1]{\renewcommand{\UTFPRareadata}{#1}}

\providecommand{\UTFPRdocumentodata}{}
\newcommand{\documento}[1]{\renewcommand{\UTFPRdocumentodata}{#1}}

\providecommand{\UTFPRcursodata}{}
\newcommand{\curso}[1]{\renewcommand{\UTFPRcursodata}{#1}}

\providecommand{\UTFPRdocumentoinglesdata}{}
\newcommand{\documentoingles}[1]{\renewcommand{\UTFPRdocumentoinglesdata}{#1}}

\providecommand{\UTFPRniveldata}{}
\newcommand{\nivel}[1]{\renewcommand{\UTFPRniveldata}{#1}}

\providecommand{\UTFPRtitulacaodata}{}
\newcommand{\titulacao}[1]{\renewcommand{\UTFPRtitulacaodata}{#1}}

\providecommand{\UTFPRlicencaCCBYdata}{}
\newcommand{\licencaCCBY}[1]{\renewcommand{\UTFPRlicencaCCBYdata}{#1}}

\providecommand{\UTFPRlicencaCCBYNCdata}{}
\newcommand{\licencaCCBYNC}[1]{\renewcommand{\UTFPRlicencaCCBYNCdata}{#1}}

\providecommand{\UTFPRlicencaCCBYNCNDdata}{}
\newcommand{\licencaCCBYNCND}[1]{\renewcommand{\UTFPRlicencaCCBYNCNDdata}{#1}}

\providecommand{\UTFPRlicencaCCBYNCSAdata}{}
\newcommand{\licencaCCBYNCSA}[1]{\renewcommand{\UTFPRlicencaCCBYNCSAdata}{#1}}

\providecommand{\UTFPRlicencaCCBYNDdata}{}
\newcommand{\licencaCCBYND}[1]{\renewcommand{\UTFPRlicencaCCBYNDdata}{#1}}

\providecommand{\UTFPRlicencaCCBYSAdata}{}
\newcommand{\licencaCCBYSA}[1]{\renewcommand{\UTFPRlicencaCCBYSAdata}{#1}}

\providecommand{\UTFPRunidadedata}{}
\newcommand{\unidade}[1]{\renewcommand{\UTFPRunidadedata}{#1}}

\providecommand{\UTFPRautordoisdata}{}
\newcommand{\autordois}[1]{\renewcommand{\UTFPRautordoisdata}{#1}}

\providecommand{\UTFPRautortresdata}{}
\newcommand{\autortres}[1]{\renewcommand{\UTFPRautortresdata}{#1}}

\providecommand{\UTFPRautorquatrodata}{}
\newcommand{\autorquatro}[1]{\renewcommand{\UTFPRautorquatrodata}{#1}}

\providecommand{\UTFPRcitadata}{}
\newcommand{\cita}[1]{\renewcommand{\UTFPRcitadata}{#1}}

\providecommand{\UTFPRtitledata}{}
\renewcommand{\title}[1]{\renewcommand{\UTFPRtitledata}{#1}}

\providecommand{\UTFPRpalavraschavedata}{}
\newcommand{\palavraschave}[1]{\renewcommand{\UTFPRpalavraschavedata}{#1}}

\providecommand{\UTFPRkeywordsdata}{}
\newcommand{\keywords}[1]{\renewcommand{\UTFPRkeywordsdata}{#1}}

\providecommand{\UTFPRautorizacaodata}{}
\newcommand{\autorizacao}[1]{\renewcommand{\UTFPRautorizacaodata}{#1}}

\newcommand{\UTFPRifnotempty}[3]{\ifthenelse{\not\equal{#1}{}}{#2}{#3}}

%200611: mais coorientadores
\providecommand{\UTFPRcoorientadorbdata}{}
\newcommand{\coorientadorb}[1]{\renewcommand{\UTFPRcoorientadorbdata}{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA

\renewcommand{\capa}{
	\begin{titlepage}
		\begin{center}
		  \begin{espacosimples} 
				\large\ABNTchapterfont\MakeUppercase{\ABNTinstituicaodata}\\
				\ABNTifnotempty{\UTFPRdepartamentodata}
				{
					\MakeUppercase{\UTFPRdepartamentodata}\\
				}
		\end{espacosimples}		
	 \end{center}		
		\vspace{60pt}	
		\begin{center}
			\begin{espacosimples}
				\large\ABNTchapterfont\MakeUppercase{\ABNTautordata}\\
				\UTFPRifnotempty{\UTFPRautordoisdata}{\large\ABNTchapterfont\MakeUppercase{\UTFPRautordoisdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\large\ABNTchapterfont\MakeUppercase{\UTFPRautortresdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\large\ABNTchapterfont\MakeUppercase{\UTFPRautorquatrodata}\\}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{80pt}
		\begin{center}
		  \begin{espacosimples}
			\large\ABNTchapterfont \MakeUppercase{\ABNTtitulodata} \par 
			\end{espacosimples}
		\end{center}
		\vspace{80pt}
		\vfill
		\begin{center}
			\ABNTchapterfont\MakeUppercase{\ABNTlocaldata}\\
			\ABNTchapterfont\ABNTdatadata
		\end{center}
	\end{titlepage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO 

\newcommand{\esporient}[2]
{
	\leftskip 0em
	\@tempdima 6.5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\newcommand{\espcoorient}[2]
{
	\leftskip 0em
	\@tempdima 6.5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\renewcommand{\folhaderosto}
{
	\begin{titlepage}
		\espaco{1.1}
		\begin{center}
			\begin{espacosimples}
				\large\ABNTchapterfont\MakeUppercase{\ABNTautordata}\\
				\UTFPRifnotempty{\UTFPRautordoisdata}{\large\MakeUppercase{\UTFPRautordoisdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\large\MakeUppercase{\UTFPRautortresdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\large\MakeUppercase{\UTFPRautorquatrodata}\\}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{86pt}
		\begin{center}
			\ABNTchapterfont \MakeUppercase{\ABNTtitulodata} \par
		\end{center}
		\vspace{20pt}
		\begin{center}
			\ABNTchapterfont \UTFPRtitledata \par
		\end{center}
		\vspace{70pt}
		\hspace{.45\textwidth}	
		\begin{minipage}{.5\textwidth}
			\begin{espacosimples}{\footnotesize
				\ABNTcomentariodata\par
                                % 200611: mais um orientador:
                                \UTFPRifnotempty{\UTFPRcoorientadorbdata}
				{
                                  \esporient{\numberline{\ABNTorientadorname}}{\hspace{4mm}\ABNTorientadordata}\par  %orientador
                                  \espcoorient{\numberline{\ABNTcoorientadorname}}{\hspace{4mm}\ABNTcoorientadordata\vspace{1mm}\\} %coorientador
                                  \espcoorient{}{\hspace{31.3mm}\UTFPRcoorientadorbdata}           %coorientador 2
                                }
                                {       %else part
                                  \esporient{\numberline{\ABNTorientadorname}}{\ignorespaces\ABNTorientadordata}\par  %orientador
                                  \ABNTifnotempty{\ABNTcoorientadordata}
                                  {
                                    \espcoorient{\numberline{\ABNTcoorientadorname}}{\ignorespaces\ABNTcoorientadordata} % coorientador
                                  }
                                }

				}\end{espacosimples}		
		\end{minipage}
		\vfill
		\begin{center}
			\ABNTchapterfont\MakeUppercase{\ABNTlocaldata}\\
			\ABNTchapterfont\ABNTdatadata
		\end{center}
			\UTFPRifnotempty{\UTFPRlicencaCCBYdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite compartilhamento, remixe, adaptação e criação a partir do trabalho, mesmo para fins comerciais, desde que sejam atribuídos créditos ao(s) autor(es). Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
			\UTFPRifnotempty{\UTFPRlicencaCCBYNCdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by-nc/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}\includegraphics[width=0.1\textwidth]{./nc.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by-nc/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite remixe, adaptação e criação a partir do trabalho, para fins não comerciais, desde que sejam atribuídos créditos ao(s) autor(es). Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
			\UTFPRifnotempty{\UTFPRlicencaCCBYNCNDdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by-nc-nd/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}\includegraphics[width=0.1\textwidth]{./nc.eps}\includegraphics[width=0.1\textwidth]{./nd.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by-nc-nd/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite download e compartilhamento do trabalho desde que sejam atribuídos créditos ao(s) autor(es), sem a possibilidade de alterá-lo ou utilizá-lo para fins comerciais. Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
			\UTFPRifnotempty{\UTFPRlicencaCCBYNCSAdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by-nc-sa/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}\includegraphics[width=0.1\textwidth]{./nc.eps}\includegraphics[width=0.1\textwidth]{./sa.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by-nc-sa/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite remixe, adaptação e criação a partir do trabalho, para fins não comerciais, desde que sejam atribuídos créditos ao(s) autor(es) e que licenciem as novas criações sob termos idênticos. Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
			\UTFPRifnotempty{\UTFPRlicencaCCBYNDdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by-nd/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}\includegraphics[width=0.1\textwidth]{./nd.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by-nd/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite compartilhamento do trabalho, mesmo para fins comerciais, sem a possibilidade de alterá-lo, desde que sejam atribuídos créditos ao(s) autor(es). Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
			\UTFPRifnotempty{\UTFPRlicencaCCBYSAdata}{
			\vfill
			\noindent
            \begin{minipage}[c]{0.25\linewidth}
                \vspace{-0.6cm}
                \begin{figure}[H]
    			    \href{https://creativecommons.org/licenses/by-sa/4.0/deed.pt}{\centerline{\includegraphics[width=0.1\textwidth]{./cc.eps}\includegraphics[width=0.1\textwidth]{./by.eps}\includegraphics[width=0.1\textwidth]{./sa.eps}}}
    			\end{figure}
    			\vspace{-0.7cm}
    			{\scriptsize \href{https://creativecommons.org/licenses/by-sa/4.0/deed.pt}{\centerline{4.0 Internacional}}}
    			\vfill
            \end{minipage}
            \begin{minipage}[c]{0.75\linewidth}
                \vfill
                {\scriptsize Esta licença permite remixe, adaptação e criação a partir do trabalho, mesmo para fins comerciais, desde que sejam atribuídos créditos ao(s) autor(es) e que licenciem as novas criações sob termos idênticos. Conteúdos elaborados por terceiros, citados e referenciados nesta obra não são cobertos pela licença.}
                \vfill
            \end{minipage}
			}{}
	\end{titlepage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TERMO DE APROVACAO

\providecommand{\ABNTtextoaprovacaodata}{}
\newcommand{\textoaprovacao}[1]{\renewcommand{\ABNTtextoaprovacaodata}{#1}}

\providecommand{\ABNTprimeiroassinadata}{}
\newcommand{\primeiroassina}[1]{\renewcommand{\ABNTprimeiroassinadata}{#1}}

\providecommand{\ABNTsegundoassinadata}{}
\newcommand{\segundoassina}[1]{\renewcommand{\ABNTsegundoassinadata}{#1}}

\providecommand{\ABNTterceiroassinadata}{}
\newcommand{\terceiroassina}[1]{\renewcommand{\ABNTterceiroassinadata}{#1}}

\providecommand{\ABNTquartoassinadata}{}
\newcommand{\quartoassina}[1]{\renewcommand{\ABNTquartoassinadata}{#1}}

\providecommand{\ABNTlocaldiadata}{}
\newcommand{\localdia}[1]{\renewcommand{\ABNTlocaldiadata}{#1}}

\newcommand{\termodeaprovacao}
{
	\begin{titlepage}
		\pretextualchapter{TERMO DE APROVA\c{C}\~AO}
		\vspace{-0.25cm}
		\begin{center}
			\large\ABNTautordata
		\end{center}
		\vspace{0.75cm}
		\begin{center}
			\large\MakeUppercase{\ABNTtitulodata}
		\end{center}
		\vspace{0.75cm}
		\begin{espacosimples}
			\noindent\ABNTtextoaprovacaodata\par
		\end{espacosimples}
		\setlength{\ABNTsignthickness}{0.4pt}
		\setlength{\ABNTsignskip}{1.75cm}
		\ABNTifnotempty{\ABNTprimeiroassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTprimeiroassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTsegundoassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTsegundoassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTterceiroassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTterceiroassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTquartoassinadata}%
		{%
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTquartoassinadata}
		\end{center}
		}
		\vfill
		\begin{center}
			\ABNTlocaldiadata
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Ficha catalografica
\providecommand{\UTFPRfichacatpumdata}{}
\newcommand{\fichacatpum}[1]{\renewcommand{\UTFPRfichacatpumdata}{#1}}
\providecommand{\UTFPRfichacatautordata}{}
\newcommand{\fichacatautor}[1]{\renewcommand{\UTFPRfichacatautordata}{#1}}
\providecommand{\UTFPRtitulofichacatdata}{}
\newcommand{\fichacattitulo}[1]{\renewcommand{\UTFPRtitulofichacatdata}{#1}}
\providecommand{\UTFPRfichacatpgbibdata}{}
\providecommand{\UTFPRorientadorfichacatdata}{}
\newcommand{\fichacatorientador}[1]{\renewcommand{\UTFPRorientadorfichacatdata}{#1}}
\providecommand{\UTFPRcoorientadorfichacatdata}{}
\newcommand{\fichacatcoorientador}[1]{\renewcommand{\UTFPRcoorientadorfichacatdata}{#1}}
\newcommand{\fichacatpgbib}[1]{\renewcommand{\UTFPRfichacatpgbibdata}{#1}}
\providecommand{\UTFPRfichacatpalchadata}{}
\newcommand{\fichacatpalcha}[1]{\renewcommand{\UTFPRfichacatpalchadata}{#1}}
\providecommand{\UTFPRfichacatpdoisdata}{}
\newcommand{\fichacatpdois}[1]{\renewcommand{\UTFPRfichacatpdoisdata}{#1}}
\providecommand{\UTFPRfichacatbibdata}{}
\newcommand{\fichacatbib}[1]{\renewcommand{\UTFPRfichacatbibdata}{#1}}

\newcommand{\fichacat}
{
  %% \hspace{8em}
  \newcommand{\lenauthor}{\hspace{9px}}
  \newcommand{\lencore}{\hspace{12px}}
  \thispagestyle{empty}
  {
    \footnotesize{
      \vspace*{12.8cm}
      \begin{center}
        \begin{tabular}{c}
          {
            {\bf  {\ttfamily Dados Internacionais de Cataloga\c{c}\~{a}o na Publica\c{c}\~{a}o}}
          }
        \end{tabular}
      \end{center}
    }
    \vspace{-45px}
    %% line
    \begin{center}
	  \linethickness{0.01cm}
      \line(1,0){355}	
    \end{center}
    \vspace{-15px}

    \begin{table}[h!]
      % \setlength{\extrarowheight}{5px}
      \begin{center}
        \scriptsize{
          \begin{tabular}{l>{\raggedright\arraybackslash}p{10.6cm}}
            %% personal data
			{\ttfamily \UTFPRfichacatpumdata} \hspace{6px} & {\ttfamily \UTFPRfichacatautordata} \\
            {\ttfamily \the\year} & \lencore {\ttfamily \UTFPRtitulofichacatdata $\!\!\;$ / \ABNTautordata.--$\;\!\!$-- \the\year.} \\
            & \lencore {\ttfamily \pageref{LastPage} f.: il.; 30 cm} \\
            & \\
            %& \lencore {\ttfamily Orientador: \UTFPRorientadorfichacatdata.} \\
			%& \lencore {\ttfamily Coorientador: \UTFPRcoorientadorfichacatdata.} \\
            & \lencore {\ttfamily \UTFPRdocumentodata $\;$(\UTFPRniveldata) -- \ABNTinstituicaodata. \UTFPRprogramadata, \ABNTlocaldata, \the\year.} \\
            & \lencore {\ttfamily Bibliografia: f. \UTFPRfichacatpgbibdata.} \\
            & \\
            & \lencore {\ttfamily \UTFPRfichacatpalchadata} \\
            & \\
            & \\
            & \hspace{140px} {\ttfamily \UTFPRfichacatpdoisdata} \\
            %% eof personal data			
          \end{tabular}
        }
      \end{center}
    \end{table}
    \vspace{-45px}

    \begin{center}
	  \linethickness{0.01cm}
      \line(1,0){355}
    \end{center}

    \vspace{-40px}
    \center \footnotesize {\bf {\ttfamily \UTFPRfichacatbibdata}}
    \newpage
  
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   DEDICATORIA  

\newenvironment{dedicatoria}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTOS 

\newenvironment{agradecimentos}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{AGRADECIMENTOS}%
}%
{
	\newpage
} 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EPIGRAFE  

\newenvironment{epigrafe}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO

\renewenvironment{resumo}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{resumo}
	\pretextualchapter{\MakeUppercase{\resumoname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. {\bf \ABNTtitulodata}. \ABNTdatadata. \pageref{LastPage} f. \UTFPRdocumentodata\ (\UTFPRniveldata\ em \UTFPRcursodata) -- \ABNTinstituicaodata, \ABNTlocaldata, \ABNTdatadata.\par
}%
{
		\par Palavras-chave: \UTFPRpalavraschavedata \par
		\UTFPRautorizacaodata\
	\end{espacosimples}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT
 
\renewenvironment{abstract}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{abstract}
	\pretextualchapter{\MakeUppercase{\ABNTabstractname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. {\bf \UTFPRtitledata}. \ABNTdatadata. \pageref{LastPage} f. \UTFPRdocumentodata\ (\UTFPRniveldata\ em \UTFPRcursodata) -- \ABNTinstituicaodata, \ABNTlocaldata, \ABNTdatadata. Título original: \ABNTtitulodata\par
}%
{
		\par Keywords: \UTFPRkeywordsdata
		\end{espacosimples}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS

% Cria um comando auxiliar para montagem da lista de figuras
\newcommand{\figfillnum}[1]
{
	{\hspace{0em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de figuras
\renewcommand{\listadefiguras}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoffigures}
	\pretextualchapter{LISTA DE FIGURAS}
	\begin{espacosimples}
	\@starttoc{lof}
	\end{espacosimples}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}

\renewcommand*{\l@figure}[2]
{
	\leftskip 2.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
	\parindent -1.3em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
        {Figura \normalfont #1 \noindent }\nobreak \figfillnum{#2}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS

% Cria um comando auxiliar para montagem da lista de tabelas
\newcommand{\tabfillnum}[1]
{
	{\hspace{0em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de tabelas
\renewcommand{\listadetabelas}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoftables}
	\pretextualchapter{LISTA DE TABELAS}
	\begin{espacosimples}
	\@starttoc{lot}
	\end{espacosimples}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}%

\renewcommand*{\l@table}[2]
{
	\leftskip 2.4em % 3.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
	\parindent -1.3em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	%{\MakeUppercase{Tabela \normalfont #1}}\nobreak \tabfillnum{#2}
	{Tabela \normalfont #1}\nobreak \tabfillnum{#2} % 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE QUADROS
\newcommand{\listadequadros}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listofquadros}
	\pretextualchapter{LISTA DE QUADROS}
	\begin{espacosimples}
	\@starttoc{loquadro}
	\end{espacosimples}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}%

\renewcommand*{\l@quadro}[2]
{
	\leftskip 2.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
    \parindent -1.3em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
        {Quadro \normalfont #1 \noindent }\nobreak \figfillnum{#2}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIMBOLOS

% Define os comandos que montam a lista de simbolos
\newcommand{\listadesimbolos}
{
	\pretextualchapter{LISTA DE S\'IMBOLOS}
	\begin{espacosimples}  %cesar230511
	\@starttoc{lsb}
	\end{espacosimples}
}

\newcommand{\simbolo}[2]
{
	{\addcontentsline{lsb}{simbolo}{\numberline{#1}{#2}}}#1%
}

\newcommand{\l@simbolo}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIGLAS

% Define o comando que monta a lista de siglas
\newcommand{\listadesiglas}
{
	\pretextualchapter{LISTA DE SIGLAS}
	\begin{espacosimples}  %cesar230511
	\@starttoc{lsg}
	\end{espacosimples}
}

\newcommand{\sigla}[2] {{\addcontentsline{lsg}{sigla}{\numberline{#1}{#2}}}#1}

\newcommand{\l@sigla}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 7em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO

%Altera o espacamento entre dots
\renewcommand\@dotsep{2}

% Altera a forma do sumario
\renewcommand{\sumario}{%
	\ifthenelse{\boolean{@twocolumn}}%
	{
		\setboolean{ABNTrestorecol}{true}\onecolumn
	}%
	{
		\setboolean{ABNTrestorecol}{false}
	}%
	\if@openright\cleardoublepage\else\clearpage\fi
  	\pretextualchapter{SUM\'ARIO}%
	\thispagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	%\@makeschapterhead{\contentsname}%
	\@afterheading
	\@mkboth{\contentsname}{\contentsname}
	\@starttoc{toc}%
	\ifthenelse{\boolean{ABNTrestorecol}}{\twocolumn}{}%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setboolean{ABNTaftertoc}{true}
}%

%Altera forma de montagem dos capitulos
\renewcommand{\l@chapter}[2]
{
	\ifnum
		\c@tocdepth > \m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{1.5em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{
				\renewcommand{\@pnumwidth}{1.6em}
			}{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \normalsize \ABNTtocchapterfont
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{%
				\hb@xt@\@pnumwidth{\hss 
				\ifthenelse{\not\equal{#2}{}}{{#2}}{}}
				\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			}
			{%
				\hb@xt@\@pnumwidth{\hss #2}\par
			}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das secoes
\renewcommand{\l@section}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
				{\renewcommand{\@pnumwidth}{1.6em}}
				{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
                        #1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

% interface de suporte para os comandos \chapter[nouppercase]{...} e \section[nouppercase]{...}
\let\realchapter\chapter
\renewcommand{\chapter}[2][uppercase]
{
  \ifthenelse{\equal{#1}{nouppercase}}{\realchapter{#2}}{\realchapter{\MakeUppercase{#2}}}
}
\let\realsection\section
\renewcommand{\section}[2][uppercase]
{
  \ifthenelse{\equal{#1}{nouppercase}}{\realsection{#2}}{\realsection{\MakeUppercase{#2}}}
}

%Altera forma de montagem das subsecoes
\renewcommand{\l@subsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2.5em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1.6em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsubsecoes
\renewcommand{\l@subsubsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{3em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1.6em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULOS

% Altera o tamanho das fontes
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\ABNTchaptersize}{\normalsize}
\renewcommand{\ABNTsectionfont}{\normalfont}
%\providecommand{\ABNTsectionfontsize}{}
\renewcommand{\ABNTsectionfontsize}{\normalsize}
%\providecommand{\ABNTsubsectionfont}{}
\renewcommand{\ABNTsubsectionfont}{\normalfont}
%\providecommand{\ABNTsubsectionfontsize}{}
\renewcommand{\ABNTsubsectionfontsize}{\normalsize}
%\providecommand{\ABNTsubsubsectionfont}{}
\renewcommand{\ABNTsubsubsectionfont}{\normalfont}
%\providecommand{\ABNTsubsubsectionfontsize}{}
\renewcommand{\ABNTsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTanapsize}{\normalsize}

% Altera titulo das subsecoes (lowercase)
\def\ABNTsect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
					\ifnum #2<\c@secnumdepth%
	          \ifthenelse{\boolean{ABNTcapsec}}
	             %{\MakeUppercase{#8}}{#8}\@@par%
				 %	\else%
	             {#8}\@@par% lowercase
					\fi}%
    \endgroup
    \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
    \ABNTaddcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec \ifthenelse{\boolean{ABNTcapsec}}
             {\MakeUppercase{#8}}{#8}}%
      \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
      \ABNTaddcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}



% Altera o espacamento das linhas dos capitulos e apendices
\newcommand*{\taxaespacomeio}{.5}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NUMERACAO

% Define o tipo de numeracao de figuras, tabelas e equacoes
\AddAbsoluteCounter{figure}
\setcounter{absfigure}{0}
\renewcommand{\thefigure}{\arabic{absfigure}}
\AddAbsoluteCounter{table}
\setcounter{abstable}{0}
\renewcommand{\thetable}{\arabic{abstable}}
\AddAbsoluteCounter{quadro}
\setcounter{absquadro}{0}
\renewcommand{\thequadro}{\arabic{absquadro}}
\AddAbsoluteCounter{equation}
\setcounter{absequation}{0}
\renewcommand{\theequation}{\arabic{absequation}}

\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{quadro}{chapter}
\counterwithout{equation}{chapter}

% Define o tipo de numeracao das paginas
\renewcommand{\chaptertitlepagestyle}{plain}

% Altera a posicao da numeracao de paginas dos elementos pre-textuais
\renewcommand{\pretextualchapter}
{
	\if@openright\cleardoublepage\else\clearpage\fi
	\pagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\renewcommand{\thepage}{}
	\@schapter
}

% Altera a posicao da numeracao de paginas dos elementos textuais
\renewcommand{\ABNTchaptermark}[1]
{
	\ifthenelse{\boolean{ABNTNextOutOfTOC}}
		{\markboth{\ABNTnextmark}{\ABNTnextmark}}
		{\chaptermark{#1}
	\pagestyle{\chaptertitlepagestyle}}
}

% Redefine o tipo de numeracao das paginas
\renewcommand{\ABNTBeginOfTextualPart}
{
  \if@twoside							%
		\@twosidetrue \@mparswitchtrue
	\fi			
	\renewcommand{\chaptertitlepagestyle}{plainheader}
	\renewcommand{\thepage}{\arabic{page}}
	\addtocounter{page}{1}  
	%\setcounter{page}{1}

% Observacoes:
% \@twosidetrue considera as paginas pares e impares.
% A numeracao sempre fica no canto superior externo da pagina.
% \@mparswitchtrue  inverte o tamanho das margens esquerda e
% direita para páginas pares, pois as margens devem ser simétricas para páginas opostas.
}

%Altera o tamanho da indentacao do paragrafo
\setlength{\parindent}{1.5cm} %


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEGENDAS 

\newcommand{\captionfonts}{\small}

\long\def\@makecaption#1#2{
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\captionfonts \textbf{#1 -- #2}}}%
	\ifdim \wd\@tempboxa >\hsize
		{\captionfonts \textbf{#1 -- #2}\par}
	\else
		\hbox to\hsize{\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip
}

\newcommand{\fonte}[1]
{
	\begin{flushleft}
		\begin{spacing}{0.4}
			\par
		\end{spacing}
		\small{\textbf{Fonte: #1}}
	\end{flushleft}
}

\renewcommand{\fnum@figure}{\textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\textbf{\tablename~\thetable}}
\renewcommand{\fnum@quadro}{\textbf{\quadroname~\thequadro}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REFERENCIAS 

% \providecommand{\ABNTbibliographyname}{}
\renewcommand{\ABNTbibliographyname}{REFER\^ENCIAS}


%%% Outros Ajustes:
\renewenvironment{quote}{\list{}{\leftmargin=4cm\rightmargin=0cm\footnotesize\singlespace}\item[]}{\endlist}  %ajuste para citacao direta: para mais de 3 linhas, deve estar em um parágrafo próprio, com recuo de 4cm, espacamento simples e fonte tamanho 10

%% permite mais de três níveis no sumário
\setcounter{secnumdepth}{10}
\setcounter{tocdepth}{10}