$tempPath = "C:\Windows\Temp\*"
$spoolerService = "Spooler"

Get-PSDrive 

Restart-Service -Name $spoolerService

Remove-Item -Path $tempPath -Recurse 
