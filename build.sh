#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

python3 manage.py collectstatic --no-input
python3 manage.py migrate
python3 manage.py createsuperuser
