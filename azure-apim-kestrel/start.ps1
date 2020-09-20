# remove existing docker image
docker rm -f local-apim-demo

# get current ip address that has internet
$ip = (Test-Connection -ComputerName $env:computername -count 1).IPV4Address.IPAddressToString

# key changes here are --add-host which will add a host entry into the docker container's /etc/host file
docker run -d -p 80:8080 -p 443:8081 --name local-apim-demo --add-host=localhostdev:${ip} --env-file env.conf mcr.microsoft.com/azure-api-management/gateway:latest