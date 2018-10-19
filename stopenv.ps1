function stopenv()
{
	Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process
	Stop-Process -Name "python"
	Stop-Process -Name "dotnet"
}
stopenv
write-host("Die Applikationen wurden gestoppt")