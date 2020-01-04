REM ----------NOTES------------
REM run as admin
REM https://www.jetbrains.com/help/pycharm/installation-guide.html#

@echo off

REM ----------SET--------------
set INSTALLFOL=%~dp0
set INSTALLER=pycharm-community-2019.2.5.exe
set CONFIG=silent.config
set INSTALLTO="%programfiles%\JetBrains\PyCharm Community Edition 2019.2.5"
set LOG=%USERPROFILE%\downloads\install.log

echo ---------VERIFY-----------
echo INSTALLFOL: %INSTALLFOL%
echo INSTALLER: %INSTALLER%
echo CONFIG: %CONFIG%
echo INSTALLTO: %INSTALLTO%
echo LOG: %LOG%
echo --------------------------

::pause
REM ---------RUN---------------
pushd "%INSTALLFOL%"
:: echo %cd%
:: pause
%INSTALLER% /S /CONFIG=%CONFIG% /D=%INSTALLTO% /LOG=%LOG%
pause