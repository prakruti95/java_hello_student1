FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN apk add --no-cache maven
RUN mvn clean package

EXPOSE 8080

CMD ["java", "-cp", "target/java_hello_student1-1.0-SNAPSHOT.jar", "Main"]