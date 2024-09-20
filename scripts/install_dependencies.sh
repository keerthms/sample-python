#!/bin/bash
code_path="${/home/ubuntu/python-app}"
cd ${code_path}

# Install pip if not installed
if ! command -v pip3 &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y python3-pip
fi

python3 -m venv venv
source venv/bin/activate
cd "${code_path}/venv/bin/"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install -r "${code_path}/requirements.txt"
