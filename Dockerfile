FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g serve

EXPOSE 3001

# CMD ["serve","-s","build","--listen", "3001", "--ssl-cert", ".cert/server.crt", "--ssl-key", ".cert/server.key" ]
CMD ["serve","-s","build","--listen", "3001" ]