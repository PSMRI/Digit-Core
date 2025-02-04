# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/egov-idgen-2.9.0-SNAPSHOT.jar egov-idgen-2.9.0-SNAPSHOT.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8088

# Command to run the application
ENTRYPOINT ["java", "-jar", "egov-idgen-2.9.0-SNAPSHOT.jar"]
