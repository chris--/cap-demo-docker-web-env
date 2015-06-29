FROM ubuntu:14.10
MAINTAINER Christian Vogt <hi@chris.ac>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g supervisor

EXPOSE 8080
EXPOSE 35729

ADD webserver /webserver
RUN chmod +x /webserver/startup.sh
CMD ["/webserver/startup.sh"]
