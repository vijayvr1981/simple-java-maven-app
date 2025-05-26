# Use OpenJDK 11 as the base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target*.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "myapp.jar"]
