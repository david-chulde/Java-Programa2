﻿# Java-Programa2
Parte 1: Crear el archivo Dockerfile
En la misma carpeta, crea un archivo llamado Dockerfile con el siguiente contenido:

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

Parte 2: Construir la imagen Docker
Abre la terminal en Visual Studio Code.

Navega hasta la carpeta del proyecto y ejecuta el siguiente comando para construir la imagen Docker:

docker build -t hola-mundo-java .

Parte 3: Probar la imagen Docker
Para asegurarte de que funciona correctamente, ejecuta el contenedor con:

docker run hola-mundo-java

Parte 4: Publicar la imagen en Docker Hub
Crea una cuenta en Docker Hub si no tienes una y asegúrate de iniciar sesión desde la terminal:
docker login

Etiqueta la imagen para Docker Hub. Cambia tu-usuario al nombre de tu cuenta en Docker Hub:
docker tag hola-mundo-java tu-usuario/hola-mundo-java

Sube la imagen a Docker Hub:
docker push tu-usuario/hola-mundo-java



