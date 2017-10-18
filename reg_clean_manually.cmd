@echo off
set RPATH=HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit /f /v LastKey /t REG_SZ /d "%RPATH%"
::the undocumented "-m" switch, which allows you to run multiple instances of Regedit simultaneously
regedit -m
set RPATH=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit /f /v LastKey /t REG_SZ /d "%RPATH%"
regedit -m
set RPATH=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Network
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit /f /v LastKey /t REG_SZ /d "%RPATH%"
regedit -m