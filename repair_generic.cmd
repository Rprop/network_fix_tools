@echo off
set PATH=%PATH%;%~dp0
echo Resetting TCP/IP Stack...
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo Restarting DHCP Service...
::net stop DHCP
net start DHCP
pause
