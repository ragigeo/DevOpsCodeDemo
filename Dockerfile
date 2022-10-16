from tomcat:9
copy target/*.war /opt/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8090
