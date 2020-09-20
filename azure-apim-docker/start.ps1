
# create bridge network
docker network create --driver bridge apim-demo

# remove existing docker container
docker rm -f local-apim-demo2

# run container on apim-demo network
docker run -d -p 80:8080 -p 443:8081 --name local-apim-demo2 --network apim-demo --env-file env.conf mcr.microsoft.com/azure-api-management/gateway:latest
