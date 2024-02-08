
docker stop code-server
docker rm code-server

mkdir -p ~/.config
docker run -itd --name code-server -p 0.0.0.0:8080:8080 \
  -v "$HOME/.local:/home/coder/.local" \
  -v "$HOME/.config:/home/coder/.config" \
  -v "$HOME/shared/code:/home/coder/code" \
  -v "$PWD:/home/coder/project" \
  -u "$(id -u):$(id -g)" \
  -e "DOCKER_USER=$USER" \
  --restart unless-stopped \
  codercom/code-server:latest

docker ps

