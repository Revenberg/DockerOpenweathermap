# openweathermap

sudo apt install gnupg2 pass
docker image build -t openweathermap .
docker login -u revenberg
docker image push revenberg/openweathermap:latest

docker run revenberg/openweathermap


docker exec -it ??? /bin/sh

docker push revenberg/openweathermap: