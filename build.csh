sudo dockerd
docker build -t precisioninno/echo-demo .
docker images | grep -i echo
docker run -p 50007:50007 -it precisioninno/echo-demo EchoServer.py
python3 ./EchoClient.py
docker login
docker logindocker push precisioninno/echo-demo:latest
#https://hub.docker.com/repository/docker/precisioninno/echo-demo
