Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = "C:\Program Files\ZOLOFT\ZOLOFT\socat-windows-master" 
objShell.Run("powershell.exe .\PhanLog\PhanLog.exe")
