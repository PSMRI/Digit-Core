# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/egov-url-shortening-2.9.0-SNAPSHOT.jar egov-url-shortening-2.9.0-SNAPSHOT.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8091

# Command to run the application
ENTRYPOINT ["java", "-jar", "egov-url-shortening-2.9.0-SNAPSHOT.jar"]
