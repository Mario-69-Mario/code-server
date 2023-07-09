docker stop code-server2
docker rm code-server2
mkdir -p ~/.config
docker run -dt --name code-server2 -p 0>
  -v "$HOME/.config:/home/coder/.config>
  -v "$PWD:/home/coder/project" \
  -v "/shared:/shared" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  codercom/code-server:latest
