FROM node:8

WORKDIR /usr/src/app

COPY /app/package*.json ./

RUN npm install

COPY /app/. .

EXPOSE 80

CMD [ "npm", "start" ]