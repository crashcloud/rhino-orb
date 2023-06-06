#!/bin/sh

VERSION=$(circleci env subst "${PARAM_VERSION}")
FULLVERSION=$(circleci env subst "${PARAM_FULLVERSION}")
CULTURE=$(circleci env subst "${PARAM_CULTURE}")
TOKEN=$(circleci env subst "${PARAM_TOKEN}")

python rhino-setup/py/download-rhino.py \
        -v "${VERSION}" \
        -fv "${FULLVERSION}" \
        -c "${CULTURE}"