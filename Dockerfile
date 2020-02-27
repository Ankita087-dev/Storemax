FROM node:8

WORKDIR /usr/src/app

ADD . /usr/src/app

RUN npm install

RUN npm run build

WORKDIR /usr/src/app

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]