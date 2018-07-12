FROM node:latest
RUN mkdir -p /usr/local/bin/app
WORKDIR /usr/local/bin/app
COPY package.json /usr/local/bin/
RUN npm install
COPY . /usr/local/bin/app
EXPOSE 3000
CMD [ "npm" , "start" ]
