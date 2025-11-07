@echo off
title Creating Desktop Shortcut

echo.
echo ========================================
echo   Creating Desktop Shortcut
echo ========================================
echo.

REM Get current directory
set "PROJECT_DIR=%~dp0"

REM Set the target bat file
set "BAT_FILE=%PROJECT_DIR%quickstart.bat"

REM Get Desktop path
for /f "tokens=3*" %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop') do set DESKTOP=%%b
call set DESKTOP=%DESKTOP%

REM Check if target file exists
if not exist "%BAT_FILE%" (
    echo ERROR: Cannot find quickstart.bat
    echo In directory: %PROJECT_DIR%
    echo.
    pause
    exit /b 1
)

echo Project: %PROJECT_DIR%
echo Desktop: %DESKTOP%
echo.

REM Create shortcut using PowerShell
echo Creating shortcut...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%DESKTOP%\CountdownApp.lnk'); $s.TargetPath = '%BAT_FILE%'; $s.WorkingDirectory = '%PROJECT_DIR%'; $s.Description = 'Countdown Focus App'; $s.Save()"

if not exist "%DESKTOP%\CountdownApp.lnk" (
    echo.
    echo ERROR: Failed to create shortcut
    echo.
    echo Please create manually:
    echo 1. Right-click Desktop - New - Shortcut
    echo 2. Location: %BAT_FILE%
    echo 3. Name: CountdownApp
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   SUCCESS!
echo ========================================
echo.
echo Shortcut created: Desktop\CountdownApp.lnk
echo.
echo How to use:
echo 1. Double-click the desktop shortcut
echo 2. Server starts automatically
echo 3. Browser opens automatically
echo 4. Enjoy!
echo.
echo Note: Do not move the project folder
echo.
echo ========================================
pause

