FROM eclipse-temurin:17-jdk-jammy AS build

WORKDIR /src

COPY "Simple java - calci" /src/Calculator.java

RUN mkdir -p /app/classes && javac -d /app/classes /src/Calculator.java

FROM eclipse-temurin:17-jre-jammy AS runtime

WORKDIR /app

COPY --from=build /app/classes /app/classes

ENV CALCULATOR_NUM1="" \
    CALCULATOR_NUM2="" \
    CALCULATOR_OPERATOR=""

ENTRYPOINT ["java", "-cp", "/app/classes", "Calculator"]
