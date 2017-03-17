mvn package && java -jar target/gs-spring-boot-0.1.0.jar
docker build -t devigned/test-spring .
export PORT=5678
docker run -e "SPRING_PROFILES_ACTIVE=prod" -e "PORT=$PORT" -p 8030:$PORT -t devigned/test-spring
sleep 10
curl localhost:8030