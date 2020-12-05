FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g serve

EXPOSE 3000

CMD ["serve","-s","build","--listen", "3000", "--ssl-cert", ".cert/server.crt", "--ssl-key", ".cert/server.key" ]
