FROM centos:centos7.9.2009
RUN yum update -y
RUN yum install -y httpd \
	git \
	zip \
	unzip
WORKDIR /var/www/html
RUN git clone https://github.com/aditya-y/cricketus.git
RUN cp -rv cricketus/* .
RUN rm -rf cricketus
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

