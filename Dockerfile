# get the base node image
FROM node:alpine as builder

# set the working dir for container
WORKDIR /react-app

# copy the json file first
COPY ./package.json /react-app

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

# build the folder
CMD [ "npm", "run", "start" ]

