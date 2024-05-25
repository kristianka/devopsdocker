
# Build stage
FROM node:16.20.2-alpine AS build

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build

# Run stage
FROM nginx:1.19-alpine

# no need to create a new user, nginx runs as non-root

# Copy only the built assets from the build stage
COPY --from=build /usr/src/app/build /usr/share/nginx/html

# nginx starts automatically