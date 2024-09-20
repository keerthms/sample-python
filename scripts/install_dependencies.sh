#!/bin/bash
cd /home/ubuntu/python-app
#!/bin/bash

# Install pip if not installed
if ! command -v pip3 &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y python3-pip
fi

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

