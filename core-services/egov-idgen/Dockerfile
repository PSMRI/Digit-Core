# Use a base image with JDK
FROM openjdk:17-jdk-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Install Maven and clean up
RUN apk add --no-cache maven

# Copy only the Maven configuration files first (for caching)
COPY pom.xml ./

# Download dependencies (cache this layer for faster builds)
RUN mvn dependency:go-offline -B

# Copy the rest of the application source code
COPY ./ ./

# Build the application (skip tests for faster builds if needed)
RUN mvn clean package

# Final stage
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8088

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]