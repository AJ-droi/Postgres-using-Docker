FROM node:16.13.1-alpine3.14

WORKDIR /usr/src/app

COPY ["package.json", "yarn.lock", "bin", ".env", "tsconfig.json", "migrations", "./"]

COPY . .

RUN yarn 

RUN yarn tsc

CMD yarn dev