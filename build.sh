#!/usr/bin/env bash

set -o errexit  # exit on error
python3 -m pip install --upgrade pip
pip install -r requirements.txt

python3 manage.py collectstatic --no-input
#python3 manage.py createsuperuser
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py createsuperuser
#python3 manage.py runserver
python3 requester.py
