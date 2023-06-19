#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

$core_token = [System.Environment]::GetEnvironmentVariable('RHINO_CORE_TOKEN')
$token = [System.Environment]::GetEnvironmentVariable('RHINO_TOKEN')

Write-Host "CORE-TOKEN : " + $core_token
Write-Host "TOKEN : " + $token

[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $token, 'Machine')

# Report the length 0 = not set
$len = [System.Environment]::GetEnvironmentVariable('RHINO_TOKEN').Length
Write-Host $len
if ($len == 0)
{
  [System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $token)
}

python rhino-setup/py/install-rhino.py -l CORE -tk $token
