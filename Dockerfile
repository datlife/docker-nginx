FROM node:8-alpine AS build-stage

LABEL maintainer="Dat Nguyen" email="hi@dat.works"

WORKDIR /usr/src/webapp

COPY ./webapp/package*.json ./

RUN npm install

COPY ./webapp .
RUN npm run build


# Production stage
FROM nginx:1.15.5-alpine AS production-stage

COPY --from=build-stage /usr/src/webapp/dist /usr/share/nginx/html