# Base image: Use JDK 21
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Gradle Wrapper and project files
COPY gradlew .
#COPY .gradle/ .gradle/
COPY build.gradle .
COPY settings.gradle .
COPY src/ src/

# Add execute permission to the Gradle Wrapper
RUN chmod +x gradlew

# Build the application
RUN ./gradlew clean build -x test

# Expose the application port
EXPOSE 8090

# Run the application
CMD ["java", "-jar", "build/libs/sample.jar"]
