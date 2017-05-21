FROM centos:7
MAINTAINER Thomas Willert <thomas@willert.dk>

USER root
RUN yum clean all
RUN rpm --rebuilddb
RUN yum update -y
RUN yum install -y yum-plugin-ovl
RUN yum install -y epel-release
RUN yum install -y npm

