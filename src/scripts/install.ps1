#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

$token = [System.Environment]::GetEnvironmentVariable('RHINO_CORE_TOKEN')
[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $token, 'Machine')

# Report the length 0 = not set
[System.Environment]::GetEnvironmentVariable('RHINO_CORE_TOKEN').Length

python rhino-setup/py/install-rhino.py -l CORE -tk $token
