# PowerShell + HTML5 prototype. Needs audio. Run: iex (New-Object Net.WebClient).DownloadString("http://bit.ly/e0Mw9w")
function Invoke-RickRoll
{

$data = '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'

## Decompress the frames, which declare an array of strings
$binaryData = [System.Convert]::FromBase64String($data)
$ms = New-Object System.IO.MemoryStream
$ms.Write($binaryData, 0, $binaryData.Length)
$ms.Seek(0,0) | Out-Null
$cs = New-Object System.IO.Compression.GZipStream($ms, [System.IO.Compression.CompressionMode]"Decompress")
$sr = New-Object System.IO.StreamReader($cs)
$structure = $sr.ReadToEnd()
iex $structure

## Go through the frames, and re-scale them so that they have the
## proper aspect ratio in the console
for($counter = 0; $counter -lt $frames.Count; $counter++)
{
    $frame = $frames[$counter]
    $expansion = (@('$1') + (('$2','$3','$2','$3') | Get-Random -Count 4 | Sort)) -join ''
    $frame = (($frame -split "`t") -replace '(.)(.)(.)',$expansion) -join "`t"
    $frames[$counter] = $frame
}
    
## Prepare the screen
$counter = 0
$maxCounter = $frames.Count - 1
$host.UI.RawUI.BackgroundColor = "White"
$host.UI.RawUI.ForegroundColor = "Black"
try
{
    $host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size 83,45
}
catch {}

try
{
    $host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size 83,45
} catch {}

try
{
    $host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size 83,45
} catch {}

try
{
    $host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size 83,45
} catch {}

## Open the background song
$script = ''

## ... in a background MTA-threaded PowerShell because
## the MediaPlayer COM object doesn't like STA
$runspace = [RunspaceFactory]::CreateRunspace()
$runspace.ApartmentState = "MTA"
$bgPowerShell = [PowerShell]::Create()
$bgPowerShell.Runspace = $runspace
$runspace.Open()
$player = @($bgPowerShell)[0]

try
{
    ## Wait for it to buffer (or error out)
    
    
    Start-Sleep -m 1600
    Clear-Host
    
    $host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates `
        0,([Console]::WindowHeight - 1)
    Write-Host -NoNewLine 'Q or ESC to Quit'
    
    ## Loop through the frames and display them
    [Console]::TreatControlCAsInput = $true
    while($true)
    {
        if([Console]::KeyAvailable)
        {
            $key = [Console]::ReadKey()
            if(($key.Key -eq 'Escape') -or
                ($key.Key -eq 'Q') -or
                ($key.Key -eq 'C'))
            {
                break
            }
        }
        
        if((-not $player.HasError) -and ($player.PlayState -eq 0)) { break }
        $host.UI.RawUI.CursorPosition = New-Object System.Management.Automation.Host.Coordinates 0,0
        Write-Host (($frames[$counter] -split "`t") -join "`r`n")
        
        Start-Sleep -m 100
        $counter = ($counter + 1) % $maxCounter
    }
}
finally
{
    ## Clean up, display exit screen
    Clear-Host
    $frames[-1] -split "`t"
    "`n"
    "                        Happy Scripting from PowerShell..."
    "                                 and Rick ASCII!"
    "`n`n`n"
    $player.Stop()
    $bgPowerShell.Dispose()
}
}

function main{
	Invoke-RickRoll
}

main
