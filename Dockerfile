FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
RUN npm cache clean --force

CMD ["npm", "start"]
