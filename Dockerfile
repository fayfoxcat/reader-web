FROM node:lts-alpine3.14 AS build-web
ADD . /app
WORKDIR /app/web
# Build web
RUN yarn && yarn build