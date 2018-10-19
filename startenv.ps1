function startDjangoApplication($envpath, $managepath, $domain, $settings)
{
	invoke-expression 'cmd /c start powershell -NoExit -Command "&{ Set-Location -Path $envpath;./env/Scripts/activate.ps1; Set-Location -Path $managepath; python manage.py runserver $domain $settings} $envpath $managepath $domain $settings"'
}
function startDotnetApplication($path)
{
	invoke-expression 'cmd /c start powershell -NoExit -Command "&{ Set-Location -Path $path; dotnet run} $path"'
}
startDjangoApplication $PSScriptRoot"\resourceapi" "C:\Source\Git\Suisseedu\resourceapi\resourceapi" "localhost:3000" "" 
startDjangoApplication $PSScriptRoot"\suisseedu-login\OIDC-Provider" "C:\Source\Git\Suisseedu\suisseedu-login\OIDC-Provider" "localhost:8000" ""
startDjangoApplication $PSScriptRoot"\resourcecenter2\ResourceCenter\ResourceCenter" "C:\Source\Git\Suisseedu\resourcecenter2\ResourceCenter\ResourceCenter" "localhost:8001" "--settings=settings.development"
startDotnetApplication $PSScriptRoot"\management\AppManagement\ManagementAPI"
write-host("Die Applikationen werden gestartet")