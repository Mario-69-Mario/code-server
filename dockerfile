#FROM python:3.8

RUN curl -fsSL https://code-server.dev/install.sh | sh


#ENV TZ=America/Los_Angeles
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/ti>

#COPY ./requirements.txt /app

#RUN sudo apt update
#RUN sudo apt -y upgrade
#RUN apt install python
#RUN sudo apt -y install python3-pip

#RUN pip install --no-cache-dir --upgrade -r requirements.txt --target=/a>
#ENV PYTHONPATH=/app/appRequirements

#RUN useradd -m admin && echo "admin:admin" | chpasswd && usermod -aG whe>

VOLUME $HOME/.config:/home/coder/.config
VOLUME $PWD:/home/coder/project

USER 1000:$1000

ENV DOCKER_USER=$USER

EXPOSE 0.0.0.0:8099:8080
