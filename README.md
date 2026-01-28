# Switch Git Profile

Ce script batch permet de basculer facilement entre un profil Git **personnel** et un profil **professionnel**.

---

## 📌 Prérequis
- Git installé sur votre machine.
- Accès à un terminal Windows (CMD ou PowerShell).

---

## 📂 Installation
1. Téléchargez le fichier [`switch_git_profile.bat`](sandbox/switch_git_profile.bat).
2. Placez-le dans un dossier accessible (ex: `C:\scripts\` ou sur le bureau).

---

## 🚀 Utilisation
1. **Double-cliquez** sur le fichier `switch_git_profile.bat`.
2. Entrez `perso` ou `pro` selon le profil souhaité.
3. Vérifiez les changements avec :
   ```bash
   git config user.name
   git config user.email
