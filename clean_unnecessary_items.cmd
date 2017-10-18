@echo off
set PATH=%PATH%;%~dp0
echo Uninstalling Network Protocols...
::Microsoft TCP/IP version 6 - Tunnels
netcfg -u ms_tcpip6_tunnel
::Internet Protocol (TCP/IP) - Tunnels
netcfg -u ms_tcpip_tunnel
::Link-Layer Topology Discovery
netcfg -u ms_lltdio
netcfg -u ms_rspndr
::WINS Client(TCP/IP) Protocol
netcfg -u ms_netbt
::Message-oriented TCP/IP Protocol (SMB session)
netcfg -u ms_netbt_smb
::Microsoft LLDP Protocol Driver
netcfg -u ms_lldp
echo Uninstalling Network Services...
::Microsoft MAC Bridge
netcfg -u ms_bridge
netcfg -u ms_netbios
::QoS Packet Scheduler
netcfg -u ms_pacer
::File and Printer Sharing
netcfg -u ms_server
netcfg -u ms_rassrv
netcfg -u ms_rasman
echo Uninstalling Network Clients...
netcfg -u ms_msclient
pause
