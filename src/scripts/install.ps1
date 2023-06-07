#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $ENV:PARAM_TOKEN)
[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $ENV:PARAM_TOKEN, 'Machine')

# Report the length 0 = not set
[System.Environment]::GetEnvironmentVariable('RHINO_TOKEN').Length

python rhino-setup/py/install-rhino.py -l CORE -tk $ENV:PARAM_TOKEN
