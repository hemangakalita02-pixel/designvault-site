@echo off
TITLE Push DesignVault Site to GitHub
COLOR 0A

echo ================================================================
echo       PUSHING DESIGNVAULT SITE TO GITHUB
echo       https://github.com/hemangakalita02-pixel/designvault-site.git
echo ================================================================
echo.

git add .
git commit -m "feat: Initial commit for DesignVault official website & legal portal"
git push -u origin main

if %errorlevel% equ 0 (
    COLOR 0A
    echo.
    echo ================================================================
    echo [SUCCESS] Site pushed successfully to GitHub!
    echo ================================================================
    echo Enable GitHub Pages in Repo Settings:
    echo Settings -> Pages -> Deploy from a branch -> main -> /root -> Save
    echo.
) else (
    COLOR 0C
    echo.
    echo [ERROR] Push encountered an issue. Ensure repo is created on GitHub:
    echo https://github.com/new (Name: designvault-site, Public)
)

pause
