# Base image Tomcat 9 + JDK 11
FROM tomcat:9.0-jdk11

# Xóa webapps mặc định (ROOT, docs, examples,...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file vào ROOT
COPY survey.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
