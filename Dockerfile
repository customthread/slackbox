FROM node:7

RUN mkdir /src

WORKDIR /src
ADD package.json /src/package.json
RUN npm install

ADD app.js /src/app.js
ADD app.json /src/app.json
ADD .env /src/.env

EXPOSE 5000

CMD npm start