#!/bin/bash

pushd /home/toconnell/kdm-manager-downtime
source venv/bin/activate
export FLASK_ENV=production
venv/bin/gunicorn -b localhost:8020 -w 4 app:downtime
