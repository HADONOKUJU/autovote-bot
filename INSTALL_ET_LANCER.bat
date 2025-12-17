@echo off
title AUTOMATIC BOT INSTALLER
color 0A

echo ===================================================
echo      INSTALLATION DES DEPENDANCES DU BOT
echo ===================================================
echo.
echo 1. Verification de Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    echo.
    echo [ERREUR] Python n'est pas installe ou n'est pas dans le PATH !
    echo.
    echo VEUILLEZ INSTALLER PYTHON DEPUIS : https://www.python.org/downloads/
    echo IMPORTANT : Cochez la case "Add Python to PATH" lors de l'installation.
    echo.
    pause
    exit
)

echo [OK] Python est present.
echo.
echo 2. Installation des librairies...
pip install -r requirements.txt

echo.
echo ===================================================
echo      LANCEMENT DU BOT
echo ===================================================
echo.
python bot.py

pause