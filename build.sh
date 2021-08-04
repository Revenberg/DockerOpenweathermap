#!/bin/bash

git pull
chmod +x build.sh

docker image build -t revenberg/openweathermap .

docker push revenberg/openweathermap
