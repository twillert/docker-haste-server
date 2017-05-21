FROM centos:latest
MAINTAINER Thomas Willert <thomas@willert.dk>

USER root
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y npm
ADD haste-server /haste-server
WORKDIR /haste-server
EXPOSE 7777
RUN npm install
CMD npm start

