# Utilisation d'une image stable d'Amazon Corretto (Java 8)
FROM amazoncorretto:8-alpine-jre

# Argument pour le fichier JAR généré
ARG JAR_FILE=target/*.jar

# Copie du fichier JAR
COPY ${JAR_FILE} app.jar

# Exposition du port identifié (8082)
EXPOSE 8082

# Commande de démarrage
ENTRYPOINT ["java","-jar","/app.jar"]
