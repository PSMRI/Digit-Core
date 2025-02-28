ARG JDK_IMAGE

# Use a base image with JDK
FROM ${JDK_IMAGE} AS builder

# Set the working directory inside the container
WORKDIR /app

# Install Maven and clean up
# RUN dnf install -y maven

# Copy only the Maven configuration files first (for caching)
COPY pom.xml ./

# Download dependencies (cache this layer for faster builds)
RUN mvn dependency:go-offline -B

# Copy the rest of the application source code
COPY ./ ./

# Build the application (skip tests for faster builds if needed)
RUN mvn clean package

# Final stage
FROM ${JDK_IMAGE}

# Define an argument that can be passed at build time
ARG APP_PORT

# Set a default value for the argument if it's not provided
ENV PORT=${APP_PORT:-8094}

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE $PORT

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]