# Etapa 1: Construcción (Builder)
FROM maven:3.9-eclipse-temurin-17-alpine AS builder
WORKDIR /app
# Copiamos el archivo de dependencias primero para aprovechar el caché de Docker
COPY pom.xml .
RUN mvn dependency:go-offline -B
# Copiamos el código fuente y compilamos
COPY src ./src
RUN mvn clean package -DskipTests

# Etapa 2: Producción (Runtime liviano)
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Copiamos únicamente el .jar generado en la etapa anterior
COPY --from=builder /app/target/*.jar app.jar
# Exponemos el puerto estándar de Spring Boot
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]