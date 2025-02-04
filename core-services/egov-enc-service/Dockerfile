# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/egov-enc-service-2.9.0-SNAPSHOT.jar egov-enc-service-2.9.0-SNAPSHOT.jar

# Expose the port your Spring Boot app runs on
EXPOSE 1234

# Command to run the application
ENTRYPOINT ["java", "-jar", "egov-enc-service-2.9.0-SNAPSHOT.jar"]
