FROM openjdk:16-jdk-alpine
VOLUME /tmp
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]