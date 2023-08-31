@echo off

REM Set the path to the directory containing the software installation files
set "installPath="C:\Users\HP\Downloads"

REM List of software installation files (replace with actual filenames)
set "softwareFiles=EpicInstaller-15.7.0.msi"
set "softwareFiles=UnitySetup64-2022.3.4f1.exe"

REM Loop through the list of software files and install each one
for %%i in (%softwareFiles%)  do (  
  echo Installing %%i...
  start /wait "" "%installPath%\%%i"
  REM Check the exit code of the installation
	if errorlevel 1 ( echo %%i installation was cancelled or failed.)
	else ( echo %%i installation completed.)

)


echo All software installations have been completed.

REM Add the pause command to prevent the window from closing
pause