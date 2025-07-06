FROM openjdk:24

COPY . /myapp

WORKDIR /myapp

EXPOSE 25565

CMD ["java", "-jar", "server.jar"]