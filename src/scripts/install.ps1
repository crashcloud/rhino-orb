#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

$core_token = [System.Environment]::GetEnvironmentVariable('RHINO_CORE_TOKEN')
$token = [System.Environment]::GetEnvironmentVariable('RHINO_TOKEN')

Write-Host "CORE-TOKEN : " + $core_token
Write-Host "TOKEN : " + $token

[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $core_token, 'Machine')

# Report the length 0 = not set
Write-Host = ([System.Environment]::GetEnvironmentVariable('RHINO_TOKEN')).Length
Write-Host = $core_token.Length

python rhino-setup/py/install-rhino.py -l CORE -tk $core_token
