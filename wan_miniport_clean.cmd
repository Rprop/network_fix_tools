@echo off
set PATH=%PATH%;%~dp0
echo Uninstalling Network Devices...
devcon remove ms_agilevpnminiport
devcon remove ms_sstpminiport
devcon remove ms_pptpminiport
devcon remove ms_l2tpminiport
devcon remove ms_pppoeminiport
devcon remove ms_ndiswanip
devcon remove ms_ndiswanipv6
devcon remove ms_ndiswanbh
echo Uninstalling Network Protocols...
::Remote Access NDIS WAN Driver
netcfg -u ms_ndiswan
netcfg -u ms_ndiswanlegacy
::Remote Access IP ARP Driver
netcfg -u ms_wanarp
netcfg -u ms_wanarpv6
::PPPoE
netcfg -u ms_pppoe
::Layer 2 Tunneling Protocol
netcfg -u ms_l2tp
::Point to Point Tunneling Protocol
netcfg -u ms_pptp
netcfg -u ms_sstp
::AgileVpn based VPN
netcfg -u ms_agilevpn
pause
