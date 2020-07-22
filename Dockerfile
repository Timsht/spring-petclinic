# Development build
FROM openjdk:8-jdk-alpine AS development
WORKDIR /usr/src/app
COPY . ./
RUN ./mvnw package


# Production build
FROM openjdk:8-jdk-alpine AS production
EXPOSE 8081
WORKDIR /usr/src/app
COPY --from=development /usr/src/app/target/*.jar ./petclinic.jar
CMD ["java", "-jar", "/usr/src/app/petclinic.jar", "--server.port=8081"]
