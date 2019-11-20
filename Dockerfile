FROM node:10

# Create app directory
RUN mkdir -p /var/www
WORKDIR /var/www

# Install app dependencies
COPY package.json /var/www/

RUN npm install
RUN npm install nodemon -g

# Bundle app source
COPY . /var/www

CMD [ "npm", "run", "start" ]
