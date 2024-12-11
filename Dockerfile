# Use the official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target folder to the container
COPY target/springboot_AWS_fargate-0.0.1-SNAPSHOT.jar app.jar


# Expose the port the app runs on (8089)
EXPOSE 8089

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
