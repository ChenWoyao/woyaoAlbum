FROM node:15-alpine

COPY . /code
WORKDIR /code

RUN npm install

CMD ["node", "app.js"]
