# specifying the node version
FROM node:14.18

# creating app directory, in the container.
WORKDIR /nestify/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

# bundling the app's source code
COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main"]
