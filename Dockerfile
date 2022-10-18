from centos:7
RUN yum install tomcat
ADD ./target/*.war /usr/local/tomcat/webapps
EXPOSE 8090
CMD ["catalina.sh", "run"]

