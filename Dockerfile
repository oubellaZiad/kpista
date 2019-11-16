FROM node:10

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/

RUN npm install
RUN npm install nodemon -g

# Bundle app source
COPY . /usr/src/app

# Exports
EXPOSE 5000
CMD [ "npm", "run", "start" ]
