$count = (ls *.exe).Count
Write-Host $count

$ENV:DOWNLOAD = $count -le 0

exit $count