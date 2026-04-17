FROM amazonlinux:latest

RUN yum install -y httpd zip unzip && yum clean all

WORKDIR /var/www/html

EXPOSE 83

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
