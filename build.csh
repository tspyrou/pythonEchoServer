sudo docker build -t echo-demo ./docker/
sudo docker images | grep -i echo
sudo docker run -it echo-demo test.py
