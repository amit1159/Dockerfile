FROM redhat/ubi8
RUN yum install httpd -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/foste.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip foste.zip 
RUN rm -rf foste.zip 
RUN mv foste.zip/* . 
EXPOSE 80    
CMD httpd -DFOREGROUND
