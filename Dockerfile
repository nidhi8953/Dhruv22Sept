FROM node:latest AS ang
WORKDIR /usr/local/app
COPY ./  /usr/local/app
RUN npm install -g npm@10.8.1 
RUN node_modules/.bin/ng build


FROM nginx:latest
COPY --from=ang /usr/local/app/dist/JenkinsProject/ /usr/share/nginx/html
EXPOSE 80
