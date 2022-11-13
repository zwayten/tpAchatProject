FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/*.jar
COPY ${JAR_FILE} tpAchatProject.jar
ENTRYPOINT ["java","-jar","/achat.jar"]
EXPOSE 8089


