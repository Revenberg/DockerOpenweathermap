#!/bin/bash

if ($(git remote show origin | grep "local out of date" | wc -l) -eq 0); then
  git pull
  chmod +x build.sh

  docker image build -t revenberg/openweathermap .

  docker push revenberg/openweathermap
fi