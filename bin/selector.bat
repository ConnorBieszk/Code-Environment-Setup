@echo off
:start
cls
echo Please remember that you can not install the same app twice
echo Which app do you want to install?
echo 1 Visual Studio Code
echo 2 Android Studio
echo 3 Ruby
echo 4 Java and Java Development Tools
echo 5 Visual Studio
echo 6 Notepad++
echo 7 vim
echo 8 Node.js
echo 9 Lua
echo 10 Firefox Browser Developer Edition
echo 11 Exit
set /p appselect=choice1~11 >nul
if %appselect%==1 winget install -e --id Microsoft.VisualStudioCode
if %appselect%==2 winget install -e --id Google.AndroidStudio
if %appselect%==3 winget install -e --id RubyInstallerTeam.Ruby
if %appselect%==4 goto java
if %appselect%==5 winget install -e --id Microsoft.VisualStudio.2022.Community-Preview
if %appselect%==6 winget install -e --id Notepad++.Notepad++
if %appselect%==7 winget install -e --id vim.vim
if %appselect%==8 winget install -e --id OpenJS.NodeJS
if %appselect%==9 goto lua
if %appselect%==10 winget install -e --id Mozilla.Firefox.DeveloperEdition
if %appselect%==11 goto exit
pause >nul
goto start
:lua
cd C:/CodeTools
START luainstaller.exe
goto start
:java
winget install -e --id Oracle.JavaRuntimeEnvironment rem java
winget install -e --id Oracle.JDK.17 rem java
cd C:/CodeTools
START eclipseinstaller.exe
goto start
:Exit
cd C:\CodeTools\advancedmode
start settings.ink