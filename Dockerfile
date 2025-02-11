# 第一阶段（构建阶段）
FROM node:12-alpine

ARG MYSQL_DATABASE
ARG DB_HOST
ARG DB_PORT
ARG DB_USER
ARG MYSQL_ROOT_PASSWORD
ARG QN_ACCESSKEY
ARG QN_SECRETKEY

ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV DB_HOST=${DB_HOST}
ENV DB_PORT=${DB_PORT}
ENV DB_USER=${DB_USER}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV QN_ACCESSKEY=${QN_ACCESSKEY}
ENV QN_SECRETKEY=${QN_SECRETKEY}

WORKDIR /app

COPY . /app

RUN npm i

EXPOSE 3000
CMD ["npm", "run", "start:prod"]