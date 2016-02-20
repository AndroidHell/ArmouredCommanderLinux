#!/bin/sh

if [ $# -eq 0 ]; then
    PYVER=$(python --version)
fi
if [ PYVER =~ *2* ]; then
    python armcom.py
fi
if [ $# -eq 1 && $1 -eq 2 ]; then
    python2 armcom.py
else
    echo "Armoured Commander requires Python 2."
    echo "Please ensure it is installed and use 'armcom.sh 2' to launch"
fi
