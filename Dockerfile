FROM node:latest

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
RUN npm cache clean --force
RUN chown -R node:node /app
USER node

CMD ["npm", "start"]
