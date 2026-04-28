@echo off
:: Check for Administrator privileges using 'net session'
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

title GPU & System Cache Optimizer
color 0A

:MENU
cls
echo ===================================================
echo      (MYNA X SYSTEM) GPU VRAM ^& CACHE CLEANER
echo ===================================================
echo.
echo  1. Reset VRAM (Restart GPU Process)
echo  2. Clean Safe Cache (Temp Files ^& DNS)
echo  3. Clean Deep Cache (Shader Cache ^& Prefetch)
echo  4. Exit
echo.
echo ===================================================
set /p choice="Enter your selection (1-4): "

if "%choice%"=="1" goto RESET_VRAM
if "%choice%"=="2" goto SAFE_CACHE
if "%choice%"=="3" goto DEEP_CACHE
if "%choice%"=="4" exit
goto MENU

:RESET_VRAM
cls
echo [!] Resetting VRAM and GPU Display Manager...
echo Screen may flicker for a second.
timeout /t 2 >nul
:: Force restart Desktop Window Manager to flush VRAM
taskkill /f /im dwm.exe
:: DWM usually restarts automatically, but 'start' ensures it.
start dwm.exe
echo.
echo [OK] VRAM has been refreshed.
pause
goto MENU

:SAFE_CACHE
cls
echo [!] Cleaning Safe System Cache...
:: Clean User Temp
del /f /q /s "%temp%\*" >nul 2>&1
:: Clean Windows Temp
del /f /q /s "C:\Windows\Temp\*" >nul 2>&1
:: Flush DNS
ipconfig /flushdns >nul
echo.
echo [OK] Safe Cache cleared.
pause
goto MENU

:DEEP_CACHE
cls
echo [!] Performing Deep Cache Cleaning (Shaders ^& Prefetch)...
:: Clear DirectX Shader Cache
del /f /q /s "%LocalAppData%\Microsoft\DirectX Shader Cache\*" >nul 2>&1
:: Clear NVIDIA/AMD Shaders
del /f /q /s "%LocalAppData%\NVIDIA\DXCache\*" >nul 2>&1
del /f /q /s "%LocalAppData%\AMD\DxCache\*" >nul 2>&1
:: Clear Windows Prefetch
del /f /q /s "C:\Windows\Prefetch\*" >nul 2>&1
echo.
echo [OK] Deep Cache and Shaders have been wiped.
pause
goto MENU