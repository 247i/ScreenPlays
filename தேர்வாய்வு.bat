@echo off
pause
rem cd /d %~dp0
pushd %~dp0
cd ..
setlocal EnableExtensions EnableDelayedExpansion
set num1=1
set num2=1 
set terminator=1331
:loop
if %num1%==%terminator% goto close
goto open
:close
echo %num1%
goto :eof
:open
Set Kod1=000%num1%
Set Kod2=%Kod1:~-4% 
Echo %Kod2%
கணினிஅகம்\பின்னணிதகவல்.exe திரைதிருக்குறள்கள்\திருக்குறள்-%Kod2%.bgi /NOLICPROMPT /SILENT /timer:0
set /a num1= %num1% + %num2%
goto loop