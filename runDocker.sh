#docker stop code-server2
#docker rm code-server2
#mkdir -p ~/.config
#docker run -dt --name code-server2 -p 0>
#  -v "$HOME/.config:/home/coder/.config>
#  -v "$PWD:/home/coder/project" \
#  -v "/shared:/shared" \
#  -u "$(id -u):$(id -g)" \
#  -e "DOCKER_USER=$USER" \
#  codercom/code-server:latest


docker stop code-server-new
docker rm code-server-new
mkdir -p ~/.config
docker run -dt --name code-server-new -p 0.0.0.0:8090:8080 \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$HOME:/home/coder/project" \
  -v "/shared:/shared" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --restart unless-stopped \
  codercom/code-server:latest


docker ps
