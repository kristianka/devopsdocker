#!/bin/bash

github_repo=$1
docker_repo=$2

git clone https://github.com/$github_repo ./builder_script

cd builder_script

# Log in to Docker Hub using environment variables
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

docker build -t $docker_repo .

docker push $docker_repo


# windows users: run in WSL2
# chmod +x builder.sh
#  ./builder.sh mluukkai/express_app typescriptlover/testing
# live at https://hub.docker.com/r/typescriptlover/testing