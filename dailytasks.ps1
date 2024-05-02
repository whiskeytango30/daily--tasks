$tempPath = "C:\Windows\Temp\*"
$spoolerService = "Spooler"

# Checking disk space
$diskSpace = Get-PSDrive 

# Restarting theprint spooler service
Restart-Service -Name $spoolerService
$spoolerStatus = Get-service -Name $SpoolerService | Select-Object Status

# Clearing temporary files
Remove-Item -Path $tempPath -Recurse 
 
[PSCustomObject]@{
    DiskSpace = $diskSpace
    SpoolerServiceStatus = $spoolerStatus.Status
    tempFilesCleared = $tempFilesRemaining.Count -eq 0
}