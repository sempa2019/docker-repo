FROM centos:latest
MAINTAINER  DevOpsTech

RUN yum -y install httpd git && git clone https://github.com/sempa2019/docker-repo.git /var/www/html/
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]