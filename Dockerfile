# Pull base image
FROM node:alpine

# set the working directory
WORKDIR /app

# add to path
ENV Path /app/node_modules/.bin:$PATH

#install app dependencies
COPY package*.json ./

COPY package-lock.json ./

RUN npm install

# add app
COPY ./src .

# start app
CMD ["npm", "start"]