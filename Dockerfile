#creating the base image
FROM openjdk:8

#adding jar to the docker
ADD /target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar

#exposing the container on the port 8090
EXPOSE 8090

#giving information how to run application
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]

#this will be seen only from the command "docker inspect"
LABEL maintainer="cyberVBh00k@gmail.com"