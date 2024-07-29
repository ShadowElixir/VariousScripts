@echo off
title Various Scripts
:start
echo Press 1 to use GUI version of VariousScripts. (recommended)
echo Press 2 to use CMD version of VariousScripts.
echo ------------------------------------------------------------------------------------
set /p vs=
if %vs% == 1 goto vs-gui
if %vs% == 2 goto vs-cmd

:vs-gui
echo Adding VariousScripts...
mkdir "C:\Program Files\ShadowElixir\VariousScripts"
powershell "Remove-Item C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat" -erroraction 'silentlycontinue'
echo @echo off >> "C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/manyscripts | iex" >> "C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\Program Files\\ShadowElixir\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit

:vs-cmd
echo Adding VariousScripts...
mkdir "C:\Program Files\ShadowElixir\VariousScripts"
powershell "Remove-Item C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat" -erroraction 'silentlycontinue'
echo @echo off >> "C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat"
echo powershell "irm cutt.ly/cmdscripts | iex" >> "C:\Program Files\ShadowElixir\VariousScripts\#ManyScripts.bat"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\#ManyScripts.lnk');$s.TargetPath='C:\\VariousScripts\\Program Files\\ShadowElixir\\VariousScripts\\#ManyScripts.bat';$s.Save()"
echo Done.
pause
exit
