#!/bin/bash
cd /home/ubuntu/python-app
source venv/bin/activate
nohup python app.py > app.log 2>&1 &

