FROM rockylinux:9

RUN yum -y install httpd

ADD webserver.tar.gz /var/www/html/

CMD ["-D", "FOREGROUND"]

ENTRYPOINT [ "/usr/sbin/httpd" ]

EXPOSE 80