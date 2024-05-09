FROM node:latest

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
RUN npm cache clean --force

CMD ["npm", "start"]
