FROM httpd
RUN mkdir /davidperez-2503285
RUN chmod 777 /davidperez-2503285
COPY recursos/img2.jpg /davidperez-2503285
COPY main.sh /davidperez-2503285
RUN chmod +x /davidperez-2503285/main.sh
RUN /davidperez-2503285/main.sh
COPY /8/* /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]