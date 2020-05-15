FROM node:latest

MAINTAINER Jeff Dickey

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install -y jq && apt clean

CMD heroku
