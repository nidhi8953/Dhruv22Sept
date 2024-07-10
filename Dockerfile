FROM node:latest AS ang
WORKDIR /usr/local/app
COPY ./  /usr/local/app
RUN npm install
