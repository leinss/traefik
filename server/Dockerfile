FROM node:lts

RUN mkdir /app
WORKDIR /app

COPY ./package.json /app/package.json

RUN npm i
# RUN npm ci

COPY . .

RUN chown -R node:node /app

USER node

EXPOSE 3000

CMD npm start