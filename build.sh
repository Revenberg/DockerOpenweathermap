#!/bin/bash

if $(git remote show origin | grep "local out of date" | wc -l) > 0:
  git pull
  chmod +x build.sh

  docker image build -t revenberg/openweathermap .

  docker push revenberg/openweathermap
