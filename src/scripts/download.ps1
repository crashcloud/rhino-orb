#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

Write-Host $ENV:VERSION
Write-Host $ENV:FULLVERSION
Write-Host $ENV:CULTURE

python rhino-setup/py/download-rhino.py -v $ENV:PARAM_VERSION -fv $ENV:FULLVERSION -c $ENV:CULTURE