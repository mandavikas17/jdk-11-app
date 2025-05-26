FROM tomcat:10.1-jdk17

# Remove all default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into Tomcat and rename to ROOT.war
COPY target/*.jar /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080
