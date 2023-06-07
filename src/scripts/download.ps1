#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

Write-Host $ENV:PARAM_VERSION
Write-Host $ENV:PARAM_FULLVERSION
Write-Host $ENV:PARAM_CULTURE

python rhino-setup/py/download-rhino.py -v $ENV:PARAM_VERSION -fv $ENV:PARAM_FULLVERSION -c $ENV:PARAM_CULTURE