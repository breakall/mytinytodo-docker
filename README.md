# mytinytodo-docker
Docker build for mytinytodo 1.4.3

http://www.mytinytodo.net/




docker build . --tag=mytinytodo

docker run --name mytinytodo -p 80:80 -p 443:443 -d mytinytodo
