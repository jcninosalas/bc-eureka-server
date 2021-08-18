#FROM maven:3.6.3-openjdk-14-slim AS build
#
#RUN mkdir -p /workspace
#WORKDIR /workspace
#COPY pom.xml /workspace
#COPY src /workspace/src
#RUN mvn -B package --file pom.xml -DskipTests
#
#FROM adoptopenjdk/openjdk11
#
#RUN adduser --system --group spring
#USER spring:spring
##ARG JAR_FILE=target/*.jar
#ARG JAR_FILE=/workspace/target/*.jar
#COPY --from=build ${JAR_FILE} app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "app.jar"]

FROM adoptopenjdk/openjdk11

ARG JAR_FILE=${GITHUB_WORKSPACE}/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]


