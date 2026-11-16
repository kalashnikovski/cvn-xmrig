@echo off
rem Mines CVN through a CVN node running on this machine.
rem Replace the address with your own CVN address, and the port with your
rem network's work-server port (18083 on the CVN Testnet, 28083 on devnet).
cd /d "%~dp0"
xmrig.exe -o 127.0.0.1:18083 -u CVN_PUT_YOUR_ADDRESS_HERE -a rx/0
pause
