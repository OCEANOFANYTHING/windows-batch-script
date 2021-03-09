@echo off
if exist c:\temp\datafile.txt ( 
 %WINDIR%\SysWOW64\cmd.exe
 cscript LoadToExcel.vbs
) else (
 rem file doesn't exist
)