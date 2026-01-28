@echo off
setlocal

echo ===== Profil Git actuel (GLOBAL) =====
git config --global user.name
git config --global user.email
echo.

set /p profile="Entrez le profil (perso/pro) : "

if /i "%profile%"=="perso" (
    git config --global user.name "Mohand Amoura"
    git config --global user.email "mohandamoura@gmail.com"
    goto success
)

if /i "%profile%"=="pro" (
    git config --global user.name "m-amoura"
    git config --global user.email "m-amoura@enageo.com"
    goto success
)

echo Profil non reconnu. Utilisez perso ou pro.
goto end


:success
echo.
echo ===== Nouveau profil actif =====
git config --global user.name
git config --global user.email

:end
pause
