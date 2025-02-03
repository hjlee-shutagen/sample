# Base image: Use JDK 21
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy Gradle Wrapper and project files
COPY . .

# 파일이 잘 복사되었는지 확인
RUN ls -al

# Add execute permission to the Gradle Wrapper
RUN chmod +x gradlew

# Build the application
RUN ./gradlew clean build -x test

# Expose the application port
EXPOSE 8090

# Run the application
CMD ["java", "-jar", "build/libs/sample-0.0.1-SNAPSHOT.jar"]
