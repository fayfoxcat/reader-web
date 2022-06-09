FROM node:lts-alpine3.14 AS build-web
ADD . /app
WORKDIR /app/web
# Build web
RUN yarn && yarn build

WORKDIR /app
COPY --from=build-web /app/web/dist /app/src/main/resources/web
EXPOSE 8080