FROM python:3
WORKDIR /usr/src/app
COPY . .
CMD ["EchoServer.py"]
ENTRYPOINT ["python3"]
EXPOSE 50007
