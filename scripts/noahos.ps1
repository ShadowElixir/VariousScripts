# Got code from https://github.com/lstprjct/IDM-Activation-Script, Thank You lstprjct and credits to you
# NoahOS by NoahTheTechGenius
# Enable TLSv1.2 for compatibility with older clients
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor [System.Net.SecurityProtocolType]::Tls12

$DownloadURL = 'https://raw.githubusercontent.com/ShadowElixir/VariousScripts/main/scripts/noahos.bat'

$FilePath = "$env:TEMP\noahos.bat"

try {
    Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $FilePath
} catch {
    Write-Error $_
	Return
}

if (Test-Path $FilePath) {
    Start-Process $FilePath -Wait
    $item = Get-Item -LiteralPath $FilePath
    $item.Delete()
}
