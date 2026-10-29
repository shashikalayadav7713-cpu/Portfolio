
# Stage 1: Build the application using Java + Maven
FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /app

# Copy the Maven configuration
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline -B

# Copy the source code
COPY src ./src

# Build the JAR file
RUN mvn clean package -DskipTests -B


# Stage 2: Run the application using Java only
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy the generated JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
