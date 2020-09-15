# syntax = docker/dockerfile:experimental

FROM node:12-alpine AS builder
ENV CI=true
WORKDIR /services/frontend
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --production --no-progress
COPY . .
RUN yarn build

FROM node:12-alpine
ENV CI=true
WORKDIR /services/frontend
COPY --from=builder /services/frontend/ .

CMD ["yarn", "start"]

# FROM node:12-alpine AS builder

# WORKDIR /services/frontend
# COPY package.json yarn.lock ./
# RUN --mount=type=cache,id=yarn,target=/usr/local/share/.cache/yarn/v6 \
#     yarn install --frozen-lockfile
# COPY . .
# RUN yarn build


# FROM node:12-alpine

# # RUN GRPC_HEALTH_PROBE_VERSION=v0.3.2 && \
# #     wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 && \
# #     chmod +x /bin/grpc_health_probe

# WORKDIR /services/frontend
# COPY --from=builder /services/frontend/build build
# COPY package.json yarn.lock ./
# RUN --mount=type=cache,id=yarn,target=/usr/local/share/.cache/yarn/v6 \
#     yarn install --frozen-lockfile --production true
# COPY . .
# # COPY pb pb

# USER 1000

# ENTRYPOINT ["yarn", "start"]

# 効率の悪い Dockerfile
# FROM node:12-alpine
# WORKDIR /services/frontend
# COPY package.json ./
# COPY yarn.lock ./
# ENV CI=true
# RUN yarn install --production --no-progress
# COPY . .
# CMD ["yarn", "start"]
