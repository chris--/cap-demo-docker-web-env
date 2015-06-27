FROM ubuntu:14.10
MAINTAINER Christian Vogt <hi@chris.ac>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g nodemon
EXPOSE 8080

CMD ["nodemon", "--watch", "/src/", "/src/index.js"]
