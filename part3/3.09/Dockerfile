# Build stage
FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN CGO_ENABLED=0 go build

# Run stage
FROM scratch

WORKDIR /usr/src/app

# Copy the built application from the build stage
COPY --from=build-stage /usr/src/app/server .

# no need to create user since using scratch

EXPOSE 8080

CMD ["./server"]

# commands
# docker build -t ex-be .
# docker run -p 8080:8080 ex-be