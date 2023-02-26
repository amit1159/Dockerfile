FROM redhat/ubi8
RUN yum install httpd-y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/global.zip /var/www/html
WORKDIR /var/www/html
RUN unzip global.zip
RUN rm -rf global.zip &&\
    cp -rf global/* . &&\
    rm -rf global &&\
EXPOSE 80
CMD httpd -DFORGROUND
