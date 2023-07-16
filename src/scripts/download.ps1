#!powershell.exe -ExecutionPolicy Bypass

Write-Host "This is powershell!"

Write-Host $ENV:PARAM_VERSION
Write-Host $ENV:PARAM_FULLVERSION
Write-Host $ENV:PARAM_CULTURE

$version_file = "rhino_$ENV:PARAM_VERSION`_$ENV:PARAM_FULLVERSION"
try
{
    $no_rhino = (Get-ChildItem $version_file).Length -eq 0
    if ($no_rhino)
    {
        Write-Host "Cache for $version_file.exe was found, skipping download."
        exit 0
    }
} catch {}

Write-Host "No Cache found, Downloading!"

## https://github.com/mcneel/compute.rhino3d/blob/7.x/script/update-rhino.ps1
python rhino-setup/py/download-rhino.py -v $ENV:PARAM_VERSION -fv $ENV:PARAM_FULLVERSION -c $ENV:PARAM_CULTURE