FROM node:18

WORKDIR /front
COPY ./package*.json .
RUN npm install

EXPOSE 1980

CMD npm install && npm start