FROM node:13.12.0-alpine

RUN apk update
RUN apk add bash && apk add yarn
RUN yarn global add @vue/cli vue vuex 
COPY ./frontend /usr/src/app
WORKDIR /usr/src/app
RUN yarn