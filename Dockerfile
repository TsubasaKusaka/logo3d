FROM node:7.1.0

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@4.2.0

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/chat/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/chat
RUN git clone https://github.com/aframevr/aframe-boilerplate.git
RUN cd aframe-boilerplate && rm -rf .git && npm install
