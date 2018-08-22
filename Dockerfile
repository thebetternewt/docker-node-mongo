FROM node:10

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN npm install -g yarn
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
