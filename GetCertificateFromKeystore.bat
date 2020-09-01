@echo off
TITLE GetCertificateFromKeystore
Echo Put me in the same Folder as the keystore :)
set /p FileName=Enter File Name (without .keystore): 
set /p Alias=Enter alias (all lowercase): 
keytool -list -v -keystore %~dp0\%FileName%.keystore -alias %Alias%
pause