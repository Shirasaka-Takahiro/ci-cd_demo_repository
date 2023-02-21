FROM httpd:latest
RUN mkdir -p /usr/local/apache2/sites-enabled/onya-lab.site
COPY ./apache/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./apache/onya-lab.site.conf /usr/local/apache2/conf/extra/onya-lab.site.conf
COPY ./apache/index.html /usr/local/apache2/sites-enabled/onya-lab.site/index.html
EXPOSE 80