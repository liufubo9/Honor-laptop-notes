@echo off
cd /d "%~dp0"

echo.
echo   ===== Sync docs to GitHub =====
echo.

echo [1/3] Collecting .md files from D:\ ...
copy /Y "D:\*.md" "." >nul 2>&1

echo [2/3] Committing changes...
git add -A
git commit -m "Sync docs %date% %time%"

echo [3/3] Pushing to GitHub...
git push

echo.
echo   ===== Done =====
echo   "Everything up-to-date" means no new changes. That is fine.
echo.
if "%~1"=="" pause
