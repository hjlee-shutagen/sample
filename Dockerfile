# Base image with JDK 21
FROM eclipse-temurin:21-jdk-slim

# Maintainer
LABEL maintainer="hjlee@shutagen.com"

# Set working directory
WORKDIR /app

# Copy application JAR file
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8090

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
