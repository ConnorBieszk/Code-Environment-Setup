@echo off
echo Size?
echo 1  Minimal
echo 2  Small
echo 3  Full
set /p sized=choice1~3 >nul
if %sized%==1 goto Minimal
if %sized%==2 goto Small
if %sized%==3 goto Full
cls
echo - - - - - - - - - - - - -
echo.
echo Coding Enviroment Set-up
echo.
echo - - - - - - - - - - - - -
:Minimal
Echo App List: Visual Studio Code
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu=choice1~2 >nul
if %returntosizemenu%==1 goto installationmini
if %returntosizemenu%==2 goto Return
:installationmini
winget install -e --id Microsoft.VisualStudioCode
start settings.bat
exit
:Small
Echo App List: Visual Studio Code, Android Studio, Ruby, and Java
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu2=choice1~2 >nul
if %returntosizemenu2%==1 goto installationsmall
if %returntosizemenu2%==2 goto Return
:installationsmall
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Google.AndroidStudio
winget install -e --id RubyInstallerTeam.Ruby
winget install -e --id Oracle.JavaRuntimeEnvironment rem java
winget install -e --id Oracle.JDK.17 rem java
start settings.bat
exit
:Full
Echo App List: Visual Studio Code, Android Studio, Ruby, Java, Visual Studio, Eclipse,Notepad++, VIM, node.js, and Lua
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu3=choice1~2 >nul
if %returntosizemenu3%==1 goto installatiofull
if %returntosizemenu3%==2 goto Return
:installatiofull
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Google.AndroidStudio
winget install -e --id RubyInstallerTeam.Ruby
winget install -e --id Oracle.JavaRuntimeEnvironment rem java
winget install -e --id Oracle.JDK.17 rem java
winget install -e --id Microsoft.VisualStudio.2022.Community-Preview
winget install -e --id Notepad++.Notepad++
winget install -e --id vim.vim
winget install -e --id OpenJS.NodeJS
cd C:/CodeTools
START eclipseinstaller.exe
pause
START luainstaller.exe
start C:\CodeTools\Advancedmode\settings.lnk
exit