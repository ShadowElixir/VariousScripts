@echo off
title Various Scripts
echo Various Scripts by ShadowElixir
echo Press 1 to Activate Windows (MAS By MassGrave)
echo Press 2 to Activate IDM (IDM Activation Script by lstprjct)
echo Press 3 to Debloat Windows (winutil by Chris Titus Tech)
echo Press 4 to Launch ShadowOS (ShadowOS by ShadowElixir)
echo Press 5 to Launch Just Guitars
echo Press 6 to Launch GUI version of Various Scripts.
echo ----------------------------------------------------------------
set /p homeoption=
if %homeoption% == 1 powershell "irm massgrave.dev/get | iex"
if %homeoption% == 2 powershell "irm cutt.ly/idmactivation | iex"
if %homeoption% == 3 powershell "irm christitus.com/win | iex"
if %homeoption% == 4 powershell "irm cutt.ly/shadowos | iex"
if %homeoption% == 5 powershell "start "" https://cutt.ly/justguitars"
if %homeoption% == 6 powershell "irm cutt.ly/manyscripts | iex"
