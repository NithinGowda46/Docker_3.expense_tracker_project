FROM maven:3.8.3-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests=true

FROM openjdk:27-ea-jdk-oracle
WORKDIR /app
COPY --from=builder /app/target/*.jar expense-tracker.jar
CMD ["java", "-jar", "expense-tracker.jar"]