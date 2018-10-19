function stopenv()
{
	Stop-Process -Name "python"
	Stop-Process -Name "dotnet"
}
stopenv
write-host("Die Applikationen wurden gestoppt")