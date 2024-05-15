# Step 1: Specify the base image
FROM openjdk:17

# Step 2: Define a build argument for the JAR file path
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Step 5: Specify the entry point
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
