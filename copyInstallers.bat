@echo off

echo ---------ABOUT-----------
echo This "softwareInstallers" git repo contains the .bat scripts and config files
echo that run the silent installs for development software. 
echo.
echo The arrangement of the "softwareInstallers" repo directly mirrors the structure 
echo of the IT teams preferred arrangement for SCCM (software installer). SCCM copies
echo installation files onto the local machine before running the installer, this repo
echo assumes the same arrangement. 
echo. 
echo Convention requires that software installer files (i.e. .exe's and .msi's) are 
echo not added to git repos. Running this script will copy and paste installation files 
echo from where they are saved (\\maxfordham.com\data\Git_Projects\_SOFTWARE) into your
echo local "softwareInstallers" git repo to allow for testing / installation. 
echo.
echo It is assumed you have an admin password for your machine and have your MF_ROOT 
echo system variable set locally. 
echo ---------------------------
echo. 
pause

REM ----------SET-------------
set SOFTWARE_REMOTE=\\maxfordham.com\data\Git_Projects\_SOFTWARE
set SOFTWARE_LOCAL=%MF_ROOT%\softwareInstallers
set MINICONDA_SRC=%SOFTWARE_REMOTE%\Miniconda3-latest-Windows-x86_64.exe
set MINICONDA_DSTN=%SOFTWARE_LOCAL%\Miniconda3\Current\Miniconda3-latest-Windows-x86_64.exe
set MYSQL_SRC=%SOFTWARE_REMOTE%\mysql-workbench-community-6.3.10-winx64.msi
set MYSQL_DSTN=%SOFTWARE_LOCAL%\mysql-workbench\Current\mysql-workbench-community-6.3.10-winx64.msi
set PYCHARM_SRC=%SOFTWARE_REMOTE%\pycharm-community-2019.2.5.exe
set PYCHARM_DSTN=%SOFTWARE_LOCAL%\PyCharm\Current\pycharm-community-2019.2.5.exe

echo ---------VERIFY-----------
echo SOFTWARE_REMOTE: %SOFTWARE_REMOTE%
echo SOFTWARE_LOCAL: %SOFTWARE_LOCAL%
echo MINICONDA_SRC: %MINICONDA_SRC%
echo MINICONDA_DSTN: %MINICONDA_DSTN%
echo MYSQL_SRC: %MYSQL_SRC%
echo MYSQL_DSTN: %MYSQL_DSTN%
echo PYCHARM_SRC: %PYCHARM_SRC%
echo PYCHARM_DSTN: %PYCHARM_DSTN%
echo ---------------------------

pause
REM ----------RUN---------------
call xcopy %MINICONDA_SRC% %MINICONDA_DSTN%*
call xcopy %MYSQL_SRC% %MYSQL_DSTN%*
call xcopy %PYCHARM_SRC% %PYCHARM_DSTN%*
pause