# Windows-Minecraft-Server
A set of batch and powershell scripts that allow for automatic Minecraft Server creation, updating, and optional VLAN support on Windows 10-based machines.

# Setup
0. Make sure that you have installed the latest version of Java for the Minecraft server jar.
1. Place Launcher.bat and Updater.ps1 in your desired Minecraft Server folder.
2. Edit server settings in launcher.bat (optional).
3. Run the Launcher.bat to start the server.

# VLAN Support
If you desire, you can uncomment the "rem VLAN" lines in Launcher.bat to enable support for a VLAN program. I have left my settings for ZeroTier, but you can also insert settings for your own VLAN setup.

## Feedback
This is my first Github project, so let me know if you have any ideas for improvements on the code or project page setup!
