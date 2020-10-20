FROM openjdk:8-jdk-alpine

VOLUME /tmp

COPY build/libs/*.jar build/libs/*.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/build/libs/*.jar"]
