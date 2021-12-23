#here were callling the base image which is a tomcat server compatible with jdk 8
FROM tomcat:8.0-jre8

LABEL maintainer="marouane khabbaz"

# Copy the .war file to the tomcat webappps directory 

ADD target/FrontControllerDemo.war /usr/local/tomcat/webapps/

#the expose instruction informs docker the container listen on the specified port at runtime
EXPOSE 8080

#CMD  specifie what to run when the container is run

CMD ["catalina.sh","run"]