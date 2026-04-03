#!/bin/bash
if [ $# -eq 0 ]; then
    PYTHON_VERSION="3.12"
else
    PYTHON_VERSION=$1
fi

source script/installDocker.sh
source script/installUvPython.sh $PYTHON_VERSION
