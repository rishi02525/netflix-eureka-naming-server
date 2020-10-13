FROM java:8-jre
VOLUME /tmp
COPY /target/netflix-eureka-naming-server-0.0.1-SNAPSHOT.jar /app/main.jar
ADD /target/application.properties /app/application.properties
ENTRYPOINT ["java" ,"--spring.profiles.active=staging --spring.config.location=/app/application-properties","-jar","/app/main.jar"]