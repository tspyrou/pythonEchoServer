sudo docker build -t echo-demo ./docker/
sudo docker images | grep -i echo
sudo docker run -p 50007:50007 -it echo-demo EchoServer.py
