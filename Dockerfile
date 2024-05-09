FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm i -g typescript
RUN npm i

COPY . .
RUN rm -rf /root/.npm
RUN mkdir /root/.npm
RUN chown -R jenkins:jenkins /root/.npm
USER jenkins

CMD ["npm", "start"]
