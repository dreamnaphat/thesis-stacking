FROM node:16.17.1

# Create app directory
WORKDIR /usr/src/app

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Install app dependencies
RUN npm install

# Build for production
RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "start" ]