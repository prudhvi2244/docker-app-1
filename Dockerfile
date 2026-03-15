FROM eclipse-temurin:21-jammy

WORKDIR /app

EXPOSE 9999

COPY target/*.jar demo.jar

ENTRYPOINT ["java","-jar","demo.jar"]