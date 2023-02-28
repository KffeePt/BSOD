# Check if the script is running with administrator privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

# If not running with admin privileges, prompt the user for admin credentials and restart with admin privileges
if (-not $isAdmin) {
    
    Start-Process powershell.exe -ArgumentList "-File `"$($MyInvocation.MyCommand.Path)`"" -Verb runas
    Exit
}

# Get the current user's username
$currentuser = $env:USERNAME

# Add the current user to the Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $currentuser -Verbose
