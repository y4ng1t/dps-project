# Step 1: Specify the base image
FROM openjdk:17

# Step 2: Define a build argument for the JAR file path
ARG JAR_FILE=target/*.jar

# Step 3: Set the working directory
WORKDIR /app

# Step 4: Copy the JAR file into the container
COPY ${JAR_FILE} /app/app.jar

# Step 5: Specify the entry point
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
