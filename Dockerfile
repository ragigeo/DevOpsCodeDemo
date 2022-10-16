from tomcat:9
ADD target/*.war /opt/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8090
