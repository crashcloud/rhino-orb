#!powershell.exe -ExecutionPolicy Bypass

$rhino_exe = "C:\Program Files\Rhino 7\System\Rhino.exe"


$timeout = 60000
$counter = 0

$proc = Start-Process -FilePath $rhino_exe -ArgumentList "/nosplash /runscript=`"-Exit`"" -PassThru
while($counter -le $timeout)
{
    # https://developer.rhino3d.com/guides/cpp/running-rhino-from-command-line/
    if ($proc.HasExited)
    {
        Write-Host "Rhino exited naturally"
        exit 0
    }

    Start-Sleep -Milliseconds 500
    
    Write-Host "Timeout $counter/$timeout"
    $counter += 500;
}

