FROM openjdk:11.0.7-jre-slim-buster

VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} eureka-server.jar
ENTRYPOINT ["java", "-jar", "/eureka-server.jar"]