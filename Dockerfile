FROM node:11.6.0-slim

WORKDIR /strauxt

COPY yarn.lock package.json ./

RUN yarn install

COPY . .

RUN yarn run build

EXPOSE 3000

RUN yarn run start