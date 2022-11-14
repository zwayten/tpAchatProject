FROM openjdk:8-jdk-alpine
COPY --from=build target/jar_name.jar tpAchatProject.jar
ENTRYPOINT ["java","-jar","/tpAchatProject.jar"]
EXPOSE 8089


