FROM node:8.0.0

WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app
