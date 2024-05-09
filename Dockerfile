FROM node:latest

WORKDIR /usr/app

COPY package*.json ./

RUN npm cache clean --force
RUN npm i -g typescript
RUN npm i

COPY . .
RUN tsc -p tsconfig.json

RUN chown -R node:node .

CMD ["npm", "start"]
