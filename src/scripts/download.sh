#!/bin/sh

echo "$VERSION"
echo "$FULLVERSION"
echo "$CULTURE"

python rhino-setup/py/download-rhino.py -v "$VERSION" -fv "$FULLVERSION" -c "$CULTURE"