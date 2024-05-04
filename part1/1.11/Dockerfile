FROM amazoncorretto:8

RUN yum update -y && yum install -y git

RUN git clone https://github.com/docker-hy/material-applications.git

EXPOSE 8080

WORKDIR /usr/src/app

COPY material-applications/spring-example-project .

RUN ./mvnw package

CMD [ "java", "-jar", "./target/docker-example-1.1.3.jar" ]

# for some reason i had to change mvnw from CLRF to LF if I just cloned the repo to my machine.
# but I figured out you can pull the repo here!
# run the code with docker build . -t ma && docker run -p 8080:8080 ma