#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

[System.Environment]::SetEnvironmentVariable('RHINO_TOKEN', $ENV:PARAM_TOKEN, 'Machine')

python rhino-setup/py/install-rhino.py -l CORE -tk $ENV:PARAM_TOKEN
