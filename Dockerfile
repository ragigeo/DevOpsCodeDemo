from centos
RUN yum install tomcat
ADD ./target/*.war /opt/tomcat/webapps
EXPOSE 8090
CMD ["catalina.sh", "run"]

