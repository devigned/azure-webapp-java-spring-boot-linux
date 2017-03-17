FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/gs-spring-boot-0.1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dserver.port=$PORT -jar /app.jar" ]