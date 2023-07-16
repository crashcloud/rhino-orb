$no_rhino = (Get-ChildItem *.exe).Length -eq 0
$exit_code = if ($no_rhino) { 1 } else { 0 }
Write-Host $exit_code
exit $exit_code