# Prompt the user for their username and password using the built-in credential GUI
$cred = Get-Credential -Message "Enter your credentials for Account 'laptop-tngrnl6h\rs' Verification"

# Display the username entered by the user
Write-Host "Username: $($cred.UserName)"

# Display the password entered by the user (Note: This will display as "*" characters for security)
Write-Host "Password: $($cred.GetNetworkCredential().Password)"
