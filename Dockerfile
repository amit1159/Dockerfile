FROM redhat/ubi8
RUN yum install httpd -y
RUN yum intall unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/global.zip /var/www/html
WORKDIR /var/www/html
RUN unzip global.zip  
RUN rm -rf global.zip &&\
    mv global-master/* . &&\
EXPOSE 80
CMD httpd -DFORGROUND
