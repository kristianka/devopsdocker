FROM docker

WORKDIR /usr/src/app
RUN apk add --no-cache git

COPY builder.sh .

RUN chmod +x builder.sh

ENTRYPOINT ["./builder.sh"]
