FROM adoptopenjdk/openjdk11

RUN adduser --system --group spring
USER spring:spring
EXPOSE 8080
ARG JAR_FILE=target/bc-eureka-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
