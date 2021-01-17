FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
#ARG DEPENDENCY=target/dependency
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY target/dependency/BOOT-INF/lib /app/lib
COPY  /var/lib/jenkins/workspace/git-job/target/DevToolpro-0.0.1-SNAPSHOT.jar /app/lib
ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.demo.DemoApplication"]
