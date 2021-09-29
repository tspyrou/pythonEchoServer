sudo dockerd
sudo docker build -t precisioninno/echo-demo .
sudo docker images | grep -i echo
sudo docker run -p 50007:50007 -it precisioninno/echo-demo EchoServer.py
sudo python3 ./EchoClient.py
sudo docker login
sudo docker push precisioninno/echo-demo:latest
#https://hub.docker.com/repository/docker/precisioninno/echo-demo
