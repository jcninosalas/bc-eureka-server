FROM openjdk:11.0.7-jre-slim-buster

VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/bc-eureka-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} eureka-server.jar
ENTRYPOINT ["java", "-jar", "/eureka-servgit er.jar"]
ENTRYPOINT ["java", "-jar", "/eureka-servgit er.jar"]