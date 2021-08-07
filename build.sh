#!/bin/bash

# version 2021-08-07 15:20

cd ~/dockeropenweathermap

rc=$(git remote show origin |  grep "local out of date" | wc -l)

if [ $rc -ne "0" ]; then
    git pull
    chmod +x build.sh

    docker image build -t revenberg/openweathermap .

    docker push revenberg/openweathermap

    # testing: 

    echo "==========================================================="
    echo "=                                                         ="
    echo "=          docker run revenberg/p1logger                  ="
    echo "=                                                         ="
    echo "==========================================================="
fi