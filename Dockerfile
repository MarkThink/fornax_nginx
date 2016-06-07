FROM index.caicloud.io/nginx:1.9.0

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/* /etc/nginx/conf.d/
RUN mkdir -p /htdocs && mkdir -p /htdocs/log && mkdir -p /htdocs/log/nginx
RUN chown -R www-data.www-data /htdocs /htdocs/log

