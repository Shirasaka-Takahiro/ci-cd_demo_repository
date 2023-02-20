FROM httpd:2.4
RUN mkdir -p /usr/local/apache2/sites-enabled/onya-lab.site
COPY ./apache/httpd.conf /usr/local/apache2/conf/httpd.conf \
     && ./apache/onya-lab.site.conf /usr/local/apache2/conf/extra/onya-lab.site.conf \
     && ./apache/index.html /usr/local/apache2/conf/extra/onya-lab.site/
EXPOSE 80