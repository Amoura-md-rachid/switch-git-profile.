@echo off
:: Désactive l'affichage des commandes pour un terminal plus propre.

:: Affiche le profil Git actuel avant de le changer
echo ===== Profil Git actuel =====
git config user.name
git config user.email
echo.

:: Demande à l'utilisateur de choisir un profil
set /p profile="Entrez le profil (perso/pro) : "

:: Si l'utilisateur choisit "perso", configure Git avec le profil personnel
if "%profile%"=="perso" (
    git config user.name "Mohand Amoura"
    git config user.email "votre.email.perso@example.com"
    echo Profil personnel activé avec succès.
    echo Nom : %user.name%
    echo Email : %user.email%
)

:: Si l'utilisateur choisit "pro", configure Git avec le profil professionnel
else if "%profile%"=="pro" (
    git config user.name "m-amoura"
    git config user.email "m-amoura@enageo.com"
    echo Profil professionnel activé avec succès.
    echo Nom : %user.name%
    echo Email : %user.email%
)

:: Si l'utilisateur entre autre chose, affiche une erreur
else (
    echo Profil non reconnu. Utilisez "perso" ou "pro".
)
