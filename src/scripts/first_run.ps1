#!powershell.exe -ExecutionPolicy Bypass

$rhino_exe = "C:\Program Files\Rhino 7\System\Rhino.exe"

# https://developer.rhino3d.com/guides/cpp/running-rhino-from-command-line/
Start-Process -FilePath $rhino_exe -ArgumentList "/nosplash /runscript=`"-Exit`"" -Wait