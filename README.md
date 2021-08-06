# DockerOpenweathermap

sudo apt install gnupg2 pass
docker image build -t DockerOpenweathermap .
docker login -u revenberg
docker image push revenberg/DockerOpenweathermap:latest

docker run revenberg/DockerOpenweathermap


docker exec -it ??? /bin/sh

docker push revenberg/DockerOpenweathermap: