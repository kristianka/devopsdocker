FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

# create the appuser
RUN useradd -m appuser && \
    # change the owner of current dir to appuser
    chown appuser .

# now we can change the user
USER appuser

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && \
    rm -rf /var/lib/apt/lists/*

CMD ["./server"]

# commands
# docker build -t ex-be .
# docker run -p 8080:8080 ex-be