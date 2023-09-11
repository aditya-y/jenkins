FROM centos:latest
RUN yum update -y
RUN yum install -y httpd \
	git \
	zip \
	unzip
WORKDIR /var/www/html
RUN git clone https://github.com/aditya-y/enggkitchen.git
RUN cp -rv enggkitchen/* .
RUN rm -rf enggkitchen
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
