# Imagen base de OpenJDK oficial
FROM eclipse-temurin:17-jdk

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar todos los archivos del proyecto
COPY . .

# Instalar Maven, compilar y limpiar caché
RUN apt-get update && apt-get install -y maven && mvn package && apt-get clean

# Comando por defecto al iniciar el contenedor
CMD ["java", "-cp", "target/classes", "com.example.HelloWorld"]
