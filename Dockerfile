# Usa una imagen base de Java
FROM openjdk:17

# Copia el archivo de código fuente en el contenedor
COPY Main.java /app/Main.java

# Cambia el directorio de trabajo al de la app
WORKDIR /app

# Compila el código Java
RUN javac Main.java

# Define el comando para ejecutar la app
CMD ["java", "Main"]
