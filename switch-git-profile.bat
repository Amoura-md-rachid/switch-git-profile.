@echo off
title Git Profile Switcher

:MENU
cls
echo =====================================
echo        GIT PROFILE SWITCHER
echo =====================================
echo.
echo 1 - Profil Personnel
echo 2 - Profil Professionnel
echo 3 - Afficher le profil actuel
echo 0 - Quitter
echo.
set /p choice="Choisissez une option : "

if "%choice%"=="1" goto PERSONAL
if "%choice%"=="2" goto WORK
if "%choice%"=="3" goto SHOW
if "%choice%"=="0" goto END

echo.
echo Choix invalide !
pause
goto MENU

:PERSONAL
echo.
echo Activation du profil Personnel...

git config --global user.name "AMOURA Mohand"
git config --global user.email "amoura.md.rachid@gmail.com"

echo.
echo Profil Personnel active !
echo.
git config --global --list
pause
goto MENU

:WORK
echo.
echo Activation du profil Professionnel...

git config --global user.name "AMOURA Mohand"
git config --global user.email "m-amoura@enageo.com"

echo.
echo Profil Professionnel active !
echo.
git config --global --list
pause
goto MENU

:SHOW
echo.
echo Profil Git actuel :
echo -------------------------
echo Nom   :
git config --global user.name

echo.
echo Email :
git config --global user.email

echo.
pause
goto MENU

:END
exit
