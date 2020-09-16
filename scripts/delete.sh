docker ps -aq | xargs docker stop
docker ps -aq | xargs docker rm
docker images -aq | xargs docker rmif
docker volume ls -qf dangling=true | xargs -r docker volume rm
