FROM node:latest AS ang
WORKDIR /usr/local/app
COPY ./  /usr/local/app
RUN npm install -g @angular/cli
RUN npm run build


FROM nginx:latest
COPY --from=ang /usr/local/app/dist/JenkinsProject/ /usr/share/nginx/html
EXPOSE 80
