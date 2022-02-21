FROM node:1.4  
WORKDIR /user/src/app
COPY package.json ./
RUN npm install
COPY . ./package
EXPOSE 3000
CMD ["node", "index.js"]