FROM centos:centos7.9.2009
RUN yum update -y
RUN yum install -y httpd \
	git \
	zip \
	unzip \
 	wget
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page295/edgecut.zip
RUN unzip edgecut.zip .
RUN cp -rv edgecut/* .
RUN rm -rf edgecut
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

