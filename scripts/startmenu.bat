@echo off
title Various Scripts
:start
echo Press 1 to use GUI version of VariousScripts. (recommended)
echo Press 2 to use CMD version of VariousScripts.
echo ------------------------------------------------------------------------------------
set /p vs=
if %vs% == 1 goto gui
if %vs% == 2 goto cmd

:gui
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/manyscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit

:cmd
echo Adding VariousScripts...
echo @echo off >> "C:\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/cmdscripts | iex" >> "C:\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit
