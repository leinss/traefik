FROM node:alpine as builder

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

RUN npm run build


FROM nginx

RUN rm -rf /etc/nginx/conf.d

EXPOSE 80

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/build /usr/share/nginx/html