FROM openjdk:11-jre-slim #베이스 이미지
ARG JAR_FILE=./build/libs/*-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080 #컨테이너 port 노출
ENTRYPOINT ["java", "-jar", "/app.jar"] #jar파일 실행
