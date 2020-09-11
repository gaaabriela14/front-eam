FROM node:14-alpine

RUN mkdir /react

WORKDIR /react

COPY package.json /react/package.json

RUN npm install -g serve

RUN npm install

COPY . /react

EXPOSE  3000

CMD [ "npm", "start" ]