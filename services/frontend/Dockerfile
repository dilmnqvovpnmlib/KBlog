# syntax = docker/dockerfile:experimental

# 開発環境 ver
FROM node:12-alpine

ENV CI=true

WORKDIR /services/frontend

COPY package.json yarn.lock ./

RUN yarn install --production --no-progress

COPY . .

CMD ["yarn", "start"]

# 本番環境 ver
# FROM node:12-alpine AS builder
# ENV CI=true
# WORKDIR /services/frontend
# COPY package.json ./
# COPY yarn.lock ./
# RUN yarn install --production --no-progress
# COPY . .
# RUN yarn build

# FROM node:12-alpine
# ENV CI=true
# WORKDIR /services/frontend
# COPY --from=builder /services/frontend/ .

# CMD ["yarn", "start"]
