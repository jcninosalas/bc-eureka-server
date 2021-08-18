FROM openjdk:11.0.7-jre-slim-buster

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
EXPOSE 8080
ENV JAR_FILE=target/bc-eureka-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} eureka-server.jar
ENTRYPOINT ["java", "-jar", "/eureka-server.jar"]
