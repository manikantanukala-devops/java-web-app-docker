FROM  maven:3-eclipse-temurin-8-alpine     as maven
COPY . .
RUN mvn clean package



FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY --from=maven target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
