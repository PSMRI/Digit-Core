# Use a base image with JDK
FROM openjdk:8-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/egov-user-1.2.8-SNAPSHOT.jar egov-user-1.2.8-SNAPSHOT.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8081

# Command to run the application
ENTRYPOINT ["java", "-jar", "egov-user-1.2.8-SNAPSHOT.jar"]
