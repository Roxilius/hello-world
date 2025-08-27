FROM node:20-alpine as build

WORKDIR /app

RUN npm install -g pnpm@8.12.1

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

RUN pnpm run build