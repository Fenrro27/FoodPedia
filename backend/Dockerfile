# Usamos JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Carpeta de la app dentro del contenedor
WORKDIR /app

# Copiamos archivos de Maven Wrapper y pom.xml primero (para aprovechar cache de Docker)
COPY mvnw pom.xml ./
COPY .mvn .mvn

# Instalamos dependencias (sin compilar todo aún)
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline -B

# Copiamos todo el código
COPY src ./src

# Compilamos el proyecto y creamos jar
RUN ./mvnw package -DskipTests

# Ejecutamos el jar
ENTRYPOINT ["java","-jar","target/recetas-0.0.1-SNAPSHOT.jar"]


#Notas:
#Asegúrate de que el nombre del .jar (recetas-0.0.1-SNAPSHOT.jar) coincida con el generado por Maven.
#Para desarrollo local, también puedes usar el command: ["./mvnw", "spring-boot:run"] en docker-compose.yml para hot reload.
