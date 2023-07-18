#!powershell.exe -ExecutionPolicy Bypass

Write-Host "VERS: $ENV:PARAM_VERSION"
Write-Host "FULL: $ENV:PARAM_FULLVERSION"
Write-Host "CULT: $ENV:PARAM_CULTURE"

$base_dir = (Get-Item(Get-Item $PSScriptRoot).Parent).Parent.FullName
$version_file = "rhino_$ENV:PARAM_VERSION`_$ENV:PARAM_FULLVERSION.exe"
$version_filepath = "$base_dir\rhino-setup\py\$version_file"

try
{
    if (Test-Path $version_filepath)
    {
        Write-Host "Cache for $version_file was found, skipping download."
        exit 0
    }
} catch {}

Write-Host "No Cache found, Downloading!"

## https://github.com/mcneel/compute.rhino3d/blob/7.x/script/update-rhino.ps1
python rhino-setup/py/download-rhino.py -v $ENV:PARAM_VERSION -fv $ENV:PARAM_FULLVERSION -c $ENV:PARAM_CULTURE