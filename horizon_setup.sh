#!/bin/bash

GLINT_URL="localhost"

#check and yum or apt install libxml2-devel and libxslt-devel and python paste is installed

#set SETUP_METHOD to either "V_ENV" or "GLOBAL"
#V_VENV will create a virtual environment and install requirement in the .venv directory which can easily be
#deleted from the system. GLOBAL will install in the site-packages directory
SETUP_METHOD="V_ENV"

#runsetup or create venv for horizon according to config file
if [ "$SETUP_METHOD" = "V_ENV" ]; then
    echo "Setup for Python Virtual Environment"
	echo "using: python tools/install_venv.py"
	python tools/install_venv.py
else
	echo "Setup for Global install"
	echo "python setup.py install"
fi
ps -ef |


