FROM tomcat:7
ADD ./target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]

