FROM node:lts

WORKDIR /app

COPY ./package*.json ./

RUN npm i
# RUN npm ci

COPY . .

# RUN chown -R node:node /app

EXPOSE 3000

CMD ["npm", "start"]