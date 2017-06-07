FROM node:7.1.0

WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app
