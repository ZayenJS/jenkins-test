FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
# RUN chown -R node:node /app
RUN chown -R 950:950 "/root/.npm"
# USER node

CMD ["npm", "start"]
