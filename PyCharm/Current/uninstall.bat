@echo off
REM ----------NOTES------------
REM https://www.jetbrains.com/help/pycharm/uninstall.html
REM run as admin

REM ----------SET--------------
set FOL=%PROGRAMFILES(x86)%\JetBrains\PyCharm Community Edition 2019.2.5\bin
set UNINSTALLER=uninstall.exe
echo ---------VERIFY-----------
echo FOL: %FOL%
ECHO UNINSTALLER: %UNINSTALLER%
echo --------------------------
pause
REM ---------RUN---------------
pushd %FOL%
pause
call %UNINSTALLER% /S