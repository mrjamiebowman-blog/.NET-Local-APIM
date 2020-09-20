# run docker
docker run -d -p 80:8080 -p 443:8081 --name local-apim-demo --env-file env.conf mcr.microsoft.com/azure-api-management/gateway:latest