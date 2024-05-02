$tempPath = "C:\Windows\Temp\*"
$spoolerService = "Spooler"

# Checking disk space
Get-PSDrive 

# Restarting theprint spooler service
Restart-Service -Name $spoolerService

# Clearing temporary files
Remove-Item -Path $tempPath -Recurse 
