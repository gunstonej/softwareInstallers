
@echo off
REM ----------NOTES------------
REM run as admin
REM https://www.jetbrains.com/help/pycharm/installation-guide.html#

echo ---------VERIFY-----------
echo INSTALLFOL: %~dp0
echo INSTALLER: pycharm-community-2019.2.5.exe
echo CONFIG: silent.config
echo INSTALLTO: C:\Program Files (x86)\JetBrains\PyCharm Community Edition 2019.2.5
echo LOG: C:\JetBrains\PyCharm\install.log
echo --------------------------

pause
REM ---------RUN---------------
pushd %~dp0
pycharm-community-2019.2.5.exe /S /CONFIG=silent.config /LOG=C:\JetBrains\PyCharm\install.log /D=C:\Program Files (x86)\JetBrains\PyCharm Community Edition 2019.2.5
pause