from tomcat:9
ADD ./target/*.war /opt/tomcat/webapps/
EXPOSE 8090
CMD ["catalina.sh", "run"]

