# scripts are little different, now the frontend is built and copied to the nginx server

# before, 1.19 GB  in total (bruh)

# FROM node:22.1.0-alpine

# WORKDIR /usr/src/app

# COPY . .

# RUN npm install

# CMD ["npm", "run", "dev"]



# after, 24.28 MB!!! Big saves

# Build stage
FROM node:22.1.0-alpine AS build

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm run build:testing

# Run stage
FROM nginx:1.19-alpine

# no need to create a new user, nginx runs as non-root

# Copy only the built assets from the build stage
COPY --from=build /usr/src/app/dist /usr/share/nginx/html

# nginx starts automatically