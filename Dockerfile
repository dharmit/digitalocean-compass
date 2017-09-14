FROM registry.centos.org/dharmit/base

MAINTAINER Dharmit Shah <dshah@redhat.com>

RUN sudo yum -y update && \
    sudo yum -y install httpd && \
    sudo yum clean all

ADD run-httpd.sh /run-httpd.sh

RUN sudo chmod -v +x /run-httpd.sh

EXPOSE 80
COPY index.html /var/www/html/

CMD ["/run-httpd.sh"]
