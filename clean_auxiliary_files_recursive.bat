@echo off

:: Suppression des fichiers auxiliaires s'ils existent
for /r %%i in (*.log *.aux *.dvi *.lof *.lot *.bit *.idx *.glo *.bbl *.bcf *.ilg *.toc *.ind *.out *.blg *.fdb_latexmk *.fls *.run.xml *.gz *.nav *.snm *.vrb *.listing *.minted) do (
    if exist "%%i" (
        del /q "%%i"
    )
)

:: Suppression des dossiers _minted s'ils existent
for /d /r %%d in (_minted*) do (
    if exist "%%d" (
        rd /s /q "%%d"
    )
)

echo Fichiers et dossiers auxiliaires supprimés avec succès.
