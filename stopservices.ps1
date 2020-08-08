$data = Get-Service | Where-Object -Property Status -eq "Stopped" | Select-Object Name, Status
$data | Export-Csv stopservices.csv
Get-Content .\stopservices.csv