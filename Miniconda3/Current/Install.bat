@Echo Off
REM ----------NOTES------------
REM run as admin
REM Miniconda installer
REM https://docs.anaconda.com/anaconda/install/silent-mode/

REM ----------SET--------------
REM main install
REM --------------
REM .condarc config file
set installer=%~dp0Miniconda3-latest-Windows-x86_64.exe
set src=%~dp0.condarc
set dstn=%programdata%\Miniconda3\.condarc
set installfol=%programdata%\Miniconda3
REM --------------
REM customisation
REM --------------
set rootfol=\\maxfordham.com\data\Git_Projects
set MF_ROOT %rootfol%
::setx MF_ROOT %rootfol% /M
REM passing n as arg below denotes (no) not using Git for dev work
set setpaths=%rootfol%\engDevSetup\dev\conda\set-paths.bat n
set activateconda=%rootfol%\engDevSetup\dev\conda\conda-activate_conda.bat
set envsetup=%rootfol%\engDevSetup\dev\conda\CALL-conda-env_create_update-mf_main.bat
set jlabsetup=%rootfol%\engDevSetup\dev\jupyter\CALL-JupyterLab-setup_env-mf_main.bat
set desktoplinks=%rootfol%\engDevSetup\update-MF_EngApps.lnk
set condaScripts=%rootfol%\engDevSetup\dev\bat\append_to_system_path.bat %programdata%\Miniconda3\Scripts
set condabin=%rootfol%\engDevSetup\dev\bat\append_to_system_path.bat %programdata%\Miniconda3\condabin


echo ---------VERIFY-----------
echo installer: %installer%
echo condarc src: %src%
echo condarc dstn: %dstn%
echo installfol: %installfol%
echo rootfol: %rootfol%
echo setpaths: %setpaths%
echo activateconda: %activateconda%
echo envsetup: %envsetup%
echo jlabsetup: %jlabsetup%
echo desktoplinks: %desktoplinks%
echo %condaScripts%
echo %condabin%
echo --------------------------

pause

REM ---------RUN---------------
REM main install
REM --------------
REM switches: RegisterPython=1 = register python, /S = silent mode, /D=%programdata%\Miniconda3 = install to programdata
start /wait "" %installer% /InstallationType=AllUsers /RegisterPython=1 /S /D=%installfol%
REM copy admin controlled config .condarc file into %programdata%
call %activateconda%
echo f | xcopy /f /y "%src%" "%dstn%" 
REM --------------
REM customisation
REM --------------
call %setpaths%
call %envsetup%
call %jlabsetup%
call %desktoplinks%
call %condaScripts%
call %condabin%
REM -------------------------------------------------------
pause
