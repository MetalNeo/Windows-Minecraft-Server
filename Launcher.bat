rem Run the Powershell script to check for and download jar updates.
powershell.exe -executionpolicy remotesigned -File Updater.ps1

rem Remove "rem VLAN" from lines to enable VLAN to start up/shutdown with the script
rem VLANset vlan=ZeroTier One.exe
rem VLANset vlanloc=C:\Program Files (x86)\ZeroTier\One\ZeroTier One.exe

rem Check to make sure that VLAN software is not already running
rem VLANtasklist /FI "IMAGENAME eq ZeroTier One.exe" 2>NUL | find /I /N "%vlan%">NUL
rem VLANif "%ERRORLEVEL%"=="0" taskkill /IM "%vlan%" /T /F

rem Open VLAN software, then start server with 2-4 GB of RAM.
rem VLANstart "" "%vlanloc%" 
@echo OFF
java -Xms2G -Xmx4G -jar server.jar

rem Close VLAN software when server shuts down
rem VLANtaskkill /IM "%vlan%" /T /F