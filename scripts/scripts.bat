@echo off
title Various Scripts
echo Various Scripts by ShadowElixir
echo Press 1 to Activate Windows and Office (MAS By MassGrave)
echo Press 2 to Debloat Windows (winutil by Chris Titus Tech)
echo Press 3 to Activate Better Pwsh Profile (Better Powershell Profile by ShadowElixir)
echo                     *Requires Powershell Core 7
echo Press 4 to Launch ShadowOS (ShadowOS by ShadowElixir)
echo Press 5 to Launch Just Guitars
echo Press 6 to Launch GUI version of Various Scripts.
echo ------------------------------------------------------------------------------------
set /p homeoption=
if %homeoption% == 1 powershell "irm massgrave.dev/get | iex"
if %homeoption% == 2 powershell "irm christitus.com/win | iex"
if %homeoption% == 3 pwsh "irm cutt.ly/powerprofile | iex"
if %homeoption% == 4 powershell "irm cutt.ly/shadowos | iex"
if %homeoption% == 5 start "" https://cutt.ly/justguitars
if %homeoption% == 6 powershell "irm cutt.ly/manyscripts | iex"
