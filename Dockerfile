# get the base node image
FROM node:18-alpine 

# set the working dir for container
WORKDIR /myapp

# copy the json file first
COPY ./package.json /myapp/

# install npm dependencies
RUN npm install

# copy other project files
COPY . .  

# expose port
EXPOSE 3000

# build the folder
CMD [ "npm", "run", "start" ]
