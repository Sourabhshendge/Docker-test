# Use Java 21 base image
FROM eclipse-temurin:21-jdk

# Copy jar file into container
COPY target/docker-app.jar /usr/app/

# Set working directory
WORKDIR /usr/app

# Expose port
EXPOSE 9090

# Use ENTRYPOINT to execute jar
ENTRYPOINT ["java", "-jar", "docker-app.jar"]
