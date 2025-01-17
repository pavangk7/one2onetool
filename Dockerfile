FROM node:16

#ARG ENVDATA = "prod"
ENV ENVTYPE="prod"
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app/

# If you are building your code for production
RUN npm  install 

# Bundle app source
COPY . .
EXPOSE 3000
ENTRYPOINT ["bash","/usr/src/app/startup.sh"]
