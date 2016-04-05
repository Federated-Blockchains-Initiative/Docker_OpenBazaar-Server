# Docker_OpenBazaar-Server
Dockerfile for the openbazaar server

# Pull image form docker hub 

docker run --env "USERNAME=toto" --env "PASSWORD=tata" -p 18469:18469 -p 18466:18466 -p 18470:18470 -d sbres/openbazaar-server

# Build from source

1. git clone and go to repo

  git clone https://github.com/sbres/Docker_OpenBazaar-Server.git && cd Docker_OpenBazaar-Server

2. build docker image

  build -t openbazar .

3. Run Docker container

  docker run --env "USERNAME=toto" --env "PASSWORD=tata" -p 18469:18469 -p 18466:18466 -p -d 18470:18470 openbazar

4. connect the openbazaar to the client using the IP of your VPS, the USERNAME and the PASSWORD you set when lauching the container.

## !! Don't delete the container, your "account" will be lost. !!
