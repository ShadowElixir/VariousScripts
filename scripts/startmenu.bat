@echo off
title Various Scripts
:start
echo Press 1 to use Windows Powershell 5.1. (default; recommended)
echo Press 2 to use Powershell Core.
echo ------------------------------------------------------------------------------------
set /p pwsh=
if %pwsh% == 1 goto pwsh5
if %pwsh% == 2 goto pwshc

:pwsh5
echo Press 1 to use GUI version of VariousScripts. (recommended)
echo Press 2 to use CMD version of VariousScripts.
echo ------------------------------------------------------------------------------------
set /p vs5=
if %vs5% == 1 goto gui5
if %vs5% == 2 goto cmd5

:pwshc
echo Press 1 to use GUI version of VariousScripts. (recommended)
echo Press 2 to use CMD version of VariousScripts.
echo ------------------------------------------------------------------------------------
set /p vsc=
if %vsc% == 1 goto guic
if %vsc% == 2 goto cmdc

:gui5
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/manyscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit

:cmd5
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/cmdscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit

:guic
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo pwsh -Command "irm cutt.ly/manyscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit

:cmdc
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo pwsh -Command "irm cutt.ly/cmdscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit
