#Check for latest version online
Invoke-WebRequest https://launchermeta.mojang.com/mc/game/version_manifest.json -OutFile version.json
$latest = (Get-Content 'version.json' | ConvertFrom-Json).latest.release
Remove-Item version.json

#Ensure local version holder is present
if(!(Test-Path version.txt)){
	New-Item version.txt
	Set-Content version.txt "newfile"
}
if(((Get-Content version.txt) -eq $NULL)) {
	Set-Content version.txt "newfile"
}
$current = Get-Content version.txt

#Compare latest and local versions, then download jar and update local version.
if((Compare-Object $latest $current) -Or !(Test-Path server.jar)) {
	$link =((Invoke-WebRequest https://www.minecraft.net/en-us/download/server/).Links | Where outerText -like "minecraft_server*").href
	Invoke-WebRequest $link -OutFile server.jar	
	Set-Content version.txt "$latest"
}