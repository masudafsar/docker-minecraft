docker container rm -f mc
docker image rm minecraft:latest

docker build -t minecraft .
docker run -d --name mc -p 25565:25565 minecraft