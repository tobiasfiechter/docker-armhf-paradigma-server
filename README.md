# docker-armhf-paradigma-server

docker build -t paradigma .

docker run -d -p 22460:22460 -v docker-armhf-paradigma-server:/opt/share --name paradigma-server paradigma
