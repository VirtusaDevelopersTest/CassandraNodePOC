FROM node:latest
RUN mkdir -p /usr/local/bin/app
WORKDIR /usr/local/bin/
COPY package.json /usr/local/bin/
RUN npm install
COPY . /usr/local/bin/
EXPOSE 3000
CMD [ "npm" , "start" ]
