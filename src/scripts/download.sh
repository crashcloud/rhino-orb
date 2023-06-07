#!/bin/sh

ORB_EVAL_PROFILE="$(circleci env subst "${ORB_EVAL_PROFILE}")"

VERSION="$(circleci env subst "${VERSION}")"
FULLVERSION="$(circleci env subst "${FULLVERSION}")"
CULTURE="$(circleci env subst "${CULTURE}")"

echo "${VERSION}"
echo "${FULLVERSION}"
echo "${CULTURE}"

python rhino-setup/py/download-rhino.py -v "${VERSION}" -fv "${FULLVERSION}" -c "${CULTURE}"