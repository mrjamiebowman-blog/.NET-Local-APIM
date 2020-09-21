
# create bridge network
docker network create --driver bridge --subnet=172.20.0.0/16 --gateway=172.20.0.1 apim-demo

# remove existing docker container
docker rm -f local-apim-demo

# run container on apim-demo network
docker run -d -p 80:8080 -p 443:8081 --name local-apim-demo --network apim-demo --env-file env.conf mcr.microsoft.com/azure-api-management/gateway:latest
