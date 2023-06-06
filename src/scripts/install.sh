TOKEN=$(circleci env subst "${PARAM_TOKEN}")

python rhino-setup/py/install-rhino.py \
        -l CORE \
        -tk "${TOKEN}"
