set Dir_Old=%cd%
cd /D %~dp0

del /s /f *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl *.lot *.lof *.lsb *.lsg modelo.pdf
latex modelo
echo ----
makeindex modelo.idx
echo ----
latex modelo

setlocal enabledelayedexpansion
set count=8
:repeat
set content=X
for /F "tokens=*" %%T in ( 'findstr /C:"Rerun LaTeX" modelo.log' ) do set content="%%~T"
if !content! == X for /F "tokens=*" %%T in ( 'findstr /C:"Rerun to get cross-references right" modelo.log' ) do set content="%%~T"
if !content! == X goto :skip
set /a count-=1
if !count! EQU 0 goto :skip

echo ----
latex modelo
goto :repeat
:skip
endlocal
makeindex modelo.idx
bibtex modelo
latex modelo
bibtex modelo
sort modelo.lsg > modelo2.lsg
del modelo.lsg
copy modelo2.lsg modelo.lsg
del modelo2.lsg 
latex modelo
dvips modelo.dvi
ps2pdf modelo.ps
cd /D %Dir_Old%
set Dir_Old=
