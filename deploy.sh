cp .gitignore .dockerignore
docker-compose -p "JoyCraft" -f "docker-compose.yml" up  --build --detach