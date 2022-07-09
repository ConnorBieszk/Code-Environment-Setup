@echo off
echo.
echo - - - - - - - - - - - - -
echo.
echo Coding Enviroment Set-up
echo.
echo - - - - - - - - - - - - -
echo.
echo Where will the coding folder be?
echo Please type the path on where you want your folder to be created then press enter
set /p path=Enter Path: >nul
cd %path%
mkdir Coding
cd Coding
mkdir Android
mkdir Apple/AppleScript
mkdir Batch
mkdir C
mkdir C#
mkdir Python
mkdir C++
mkdir HTML/Javascipt/CSS
mkdir Ruby
mkdir Lua
mkdir Java
echo Next Step
pause
start install.bat
exit