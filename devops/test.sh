#!/bin/bash -e
#
#
#

cd devops || exit
source .docker || exit

source .venv/bin/activate || virtualenv .venv
pip install -r requirements.txt &> /dev/null

./test.yml
