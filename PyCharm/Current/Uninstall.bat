@echo off
REM ----------NOTES------------
REM https://www.jetbrains.com/help/pycharm/uninstall.html
REM run as admin

echo ---------VERIFY-----------
echo FOL: %PROGRAMFILES(x86)%\JetBrains\PyCharm Community Edition 2019.2.5\bin
ECHO UNINSTALLER: uninstall.exe
echo --------------------------
pause
REM ---------RUN---------------
pushd %PROGRAMFILES(x86)%\JetBrains\PyCharm Community Edition 2019.2.5\bin
call uninstall.exe /S

pause