FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/spring-petclinic-4.0.0-SNAPSHOT.jar app.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "app.jar", "--server.address=0.0.0.0", "--server.port=8082"]
