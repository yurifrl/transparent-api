# Use NodeJS Image
FROM node:4.0.0

RUN npm install -g gulp

# Create the app dir
RUN mkdir /app

# Set the compiled app as workdir
WORKDIR /app

# use changes to package.json to force Docker not to use the cache
# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN cp -a /tmp/node_modules /app

# Bundle app source
COPY . /app

EXPOSE 8080

CMD [ "npm", "start" ]
