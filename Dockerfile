# Use the official Maven image with JDK 11
FROM maven:3.8.6-openjdk-11-slim AS build

# Set the working directory
WORKDIR /app

# Copy the pom.xml and the Java source file
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests -X


# Use a smaller image to run the application
FROM openjdk:11-jre-slim
COPY --from=build /app/target/simple-java-app-1.0-SNAPSHOT.jar /usr/local/lib/simple-java-app.jar

# Command to run the application
CMD ["java", "-jar", "/usr/local/lib/simple-java-app.jar"]

















