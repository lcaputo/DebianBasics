FROM openjdk:8
ADD target/spring-backend.jar springBack.jar
EXPOSE 5000
ENTRYPOINT ["java","-jar","springBack.jar"]
