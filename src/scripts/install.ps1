#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

$token = [System.Environment]::GetEnvironmentVariable('RHINO_TOKEN')

Write-Host "TOKEN : " + $token

# Report the length 0 = not set
Write-Host = $token.Length

python rhino-setup/py/install-rhino.py -l CORE -tk $token

# show the install(s)
Get-ChildItem 'C:\Program Files\Rhino *\System\*.exe'

# Remove any download cache
Remove-Item *.exe