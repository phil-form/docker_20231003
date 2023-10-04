FROM node:18

WORKDIR /back
COPY ./package*.json .
RUN npm install

EXPOSE 3000

CMD npm install && npm start