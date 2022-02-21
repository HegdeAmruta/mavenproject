FROM node:latest as node
RUN mkdir -p /app

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/

RUN npm install

COPY . /app/
# If you are building your code for production
# RUN npm ci --only=production


EXPOSE 4200
CMD [ "npm","run", "start" ]