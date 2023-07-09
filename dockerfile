FROM codercom/code-server:latest

#ENV TZ=America/Los_Angeles
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/ti>

#RUN apt inatall python
#COPY ./requirements.txt /app

#RUN /usr/local/bin/python -m pip install --upgrade pip
#RUN pip install --no-cache-dir --upgrade -r requirements.txt --target=/a>
#ENV PYTHONPATH=/app/appRequirements

#RUN useradd -m admin && echo "admin:admin" | chpasswd && usermod -aG whe>

VOLUME $HOME/.config:/home/coder/.config
VOLUME $PWD:/home/coder/project

USER 1000:$1000

ENV DOCKER_USER=$USER

EXPOSE 0.0.0.0:8099:8080
