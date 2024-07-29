# Use a base image that has Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file from the host to the container
COPY ./build/libs/testServer-0.0.1-SNAPSHOT.jar /app/testServer-0.0.1-SNAPSHOT.jar

# Specify the command to run the jar file
ENTRYPOINT ["java", "-jar", "testServer-0.0.1-SNAPSHOT.jar"]

# Expose the port the app runs on
EXPOSE 8111