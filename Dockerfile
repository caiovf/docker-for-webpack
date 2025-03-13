FROM node:20.18.1

WORKDIR /

COPY package.json webpack.config.js .

RUN npm install

CMD ["npm", "run", "webpack:prod"]
