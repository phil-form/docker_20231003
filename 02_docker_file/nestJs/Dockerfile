FROM node:latest

VOLUME /app

RUN npm i -g @nestjs/cli

RUN nest new project --skip-git --package-manager npm

EXPOSE 3000

CMD cd project && npm install && npm start