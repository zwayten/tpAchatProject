FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} tpAchatProject.jar
ENTRYPOINT ["java","-jar","/tpAchatProject.jar"]
EXPOSE 8089


