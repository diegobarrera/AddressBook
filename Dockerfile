FROM node:10.13-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]