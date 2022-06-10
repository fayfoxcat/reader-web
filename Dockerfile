FROM node:lts-alpine3.14 AS build-web
ADD . /app
WORKDIR /app/web
COPY ./web ./
# Build web
RUN yarn && yarn build

FROM nginx:stable-alpine

COPY --from=build-web /app/web/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]