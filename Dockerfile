FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
RUN chown -R node:node /app
USER node

CMD ["npm", "start"]
