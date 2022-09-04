FROM openjdk:8-alpine
# #Required for starting application up.
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/spring-boot-docker-1.0.jar $PROJECT_HOME/spring-boot-docker.jar
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar","./spring-boot-docker.jar"]
