# Use Apache Tomcat as the base image
FROM eclipse-temurin:11.0.16_8-jdk-alpine

# Remove the default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY target/*.jar /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
