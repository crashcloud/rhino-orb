
Write-Host $Env:PARAM_VERSION
Write-Host $Env:VERSION

VERSION=$(circleci env subst "$PARAM_VERSION")
FULLVERSION=$(circleci env subst "$PARAM_FULLVERSION")
CULTURE=$(circleci env subst "$PARAM_CULTURE")

echo "$VERSION"
echo "$FULLVERSION"
echo "$CULTURE"

python rhino-setup/py/download-rhino.py -v "$VERSION" -fv "$FULLVERSION" -c "$CULTURE"