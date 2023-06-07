#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

python rhino-setup/py/install-rhino.py -l CORE -tk $ENV:TOKEN
