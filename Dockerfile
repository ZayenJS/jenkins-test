FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm i -g typescript
RUN npm i

COPY . .
EXPOSE 10000
CMD [ "npm", "start" ]
