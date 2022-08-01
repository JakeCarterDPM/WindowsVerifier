@echo off

goto check_Permissions
:check_Permissions
echo -----------------------------------------------------------------
echo -------------------- Jake's Windows Verifier --------------------
echo -----------------------------------------------------------------
echo.
echo Admin Check: Detecting permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
echo Admin Check: Administrative permissions confirmed.
echo.
goto :startup

) else (
echo Admin Check: Administrative permissions missing.
echo Admin Check: Please start script as admin.
goto :exitprogram
)
pause >nul

:startup
set /P answer=Would you like to scan? "Y" or "N": 
if /I "%answer%" EQU "Y" goto :sfcscannow
if /I "%answer%" EQU "N" goto :exitprogram
cls
goto :startup

:sfcscannow
sfc /scannow
goto :checkforwindowsimagerepair

:checkforwindowsimagerepair
set /P answer=Was an error found? "Y" or "N": 
if /I "%answer%" EQU "Y" goto :windowsimagerepair
if /I "%answer%" EQU "N" goto :exitprogram
goto :checkforwindowsimagerepair

:windowsimagerepair
DISM.exe /Online /Cleanup-image /Restorehealth
echo Highly suggested to restart and scan again to ensure repair was successful.
set /P answer=Would you like to restart? "Y" or "N": 
if /I "%answer%" EQU "Y" goto :restartcomputer
if /I "%answer%" EQU "N" goto :exitprogram
goto :checkforwindowsimagerepair

:restartcomputer
echo Now restarting...
shutdown.exe /r /t 00
exit

:exitprogram
echo.
echo -----------------------------------------------------------------
echo ----------------- Thanks for using this script! -----------------
echo ----------------------- Scripted by Jake! -----------------------
echo -----------------------------------------------------------------
echo.
pause
exit

