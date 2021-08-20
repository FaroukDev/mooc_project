FROM node:15

WORKDIR /app

COPY package*.json ./

RUN npm install && npm install pg -g && npm install nodemon -g

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

COPY . .

EXPOSE 8080


CMD [ "npm", "start" ]
