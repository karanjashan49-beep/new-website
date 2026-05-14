FROM amazonlinux:latest

RUN yum install -y httpd zip unzip && yum clean all

WORKDIR /var/www/html
EXPOSE 85

COPY urban/* /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
