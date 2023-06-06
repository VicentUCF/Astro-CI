
## STAGE 0: Pre-build ###
FROM node:16.13.1 as pre-build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install -g @angular/cli@13.1.1 --unsafe-perm && npm ci --no-progress




## STAGE 1: Build ###
