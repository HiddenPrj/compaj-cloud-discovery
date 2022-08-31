FROM openjdk:11-jdk

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

RUN ./mvnw dependency:go-offline


CMD ["./mvnw", "spring-boot:run"]