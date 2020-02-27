FROM node:8 as builder

WORKDIR /usr/src/app

ADD . /usr/src/app

RUN npm install

RUN npm run build

WORKDIR /usr/src/app/www

EXPOSE 3000

FROM 

