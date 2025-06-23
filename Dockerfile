#FROM openjdk:8-jre-alpine
#
#EXPOSE 8080
#
#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
#WORKDIR /usr/app
#
#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]


FROM openjdk:8-jre-alpine

WORKDIR /usr/app

COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
