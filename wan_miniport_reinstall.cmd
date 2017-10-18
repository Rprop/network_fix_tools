@echo off
set PATH=%PATH%;%~dp0
:: required ms_pppoe(651), ms_ndiswan(rasman service done, 813), ms_wanarp(720)
echo Installing Network Protocols...
::PPPoE
Netcfg -l %windir%\inf\netrast.inf -c p -i ms_pppoe
::Point to Point Tunneling Protocol
Netcfg -l %windir%\inf\netrast.inf -c p -i ms_pptp
::Layer 2 Tunneling Protocol
Netcfg -c p -i ms_l2tp
Netcfg -c p -i ms_sstp
::AgileVpn based VPN
Netcfg -c p -i ms_agilevpn
::Remote Access NDIS WAN Driver
Netcfg -l %windir%\inf\netrast.inf -c p -i ms_ndiswan
::Netcfg -l %windir%\inf\netrast.inf -c p -i ms_ndiswanlegacy
::Remote Access IP ARP Driver
Netcfg -c p -i ms_wanarp
::Netcfg -c p -i ms_wanarpv6
::echo Installing Network Services...
::Netcfg -l %windir%\inf\netrass.inf -c s -i ms_rassrv
::Netcfg -l %windir%\inf\netrass.inf -c s -i ms_rasman
echo Installing Network Devices...
::the system will install miniport automatically
::devcon install %windir%\inf\netrasa.inf ms_pptpminiport
::devcon install %windir%\inf\netrasa.inf ms_pppoeminiport
::devcon install %windir%\inf\netrasa.inf ms_ndiswanip
::devcon install %windir%\inf\netrasa.inf ms_ndiswanipv6
::devcon install %windir%\inf\netrasa.inf ms_ndiswanbh
::devcon install %windir%\inf\netrasa.inf ms_l2tpminiport
::devcon install %windir%\inf\netavpna.inf ms_agilevpnminiport
::devcon install %windir%\inf\netsstpa.inf ms_sstpminiport
::devcon rescan
pause
