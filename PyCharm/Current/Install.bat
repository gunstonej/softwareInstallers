
@echo off
REM ----------NOTES------------
REM run as admin
REM https://www.jetbrains.com/help/pycharm/installation-guide.html#


REM ----------SET--------------
set INSTALLFOL=%~dp0
set INSTALLER=pycharm-community-2019.2.5.exe
set CONFIG=silent.config
set LOG=%USERPROFILE%\downloads\install.log

echo ---------VERIFY-----------
echo INSTALLFOL: %INSTALLFOL%
echo INSTALLER: %INSTALLER%
echo CONFIG: %CONFIG%
echo INSTALLTO: %ProgramFiles(x86)%\JetBrains\PyCharm Community Edition 2019.2.5
echo LOG: %LOG%
echo --------------------------

pause
REM ---------RUN---------------
pushd "%INSTALLFOL%"
%INSTALLER% /S /CONFIG=%CONFIG% /D=%ProgramFiles(x86)%\JetBrains\PyCharm Community Edition 2019.2.5 /LOG=%LOG%
pause