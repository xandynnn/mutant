FROM openjdk:10-jdk-slim
VOLUME /tmp
MAINTAINER brunotorrao
ADD build/libs/*.jar app.jar

ENV JAVA_OPTS=""
ENV SPRING_PROFILE="prod"

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS \
 -Djava.security.egd=file:/dev/./urandom \
 -Dspring.profiles.active=$SPRING_PROFILE \
 -jar app.jar
