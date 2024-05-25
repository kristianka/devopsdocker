# outdated version, needed for the code. uses node 16
FROM node:16.20.2-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

# create new user, no password (-D)
RUN adduser -D appuser && \
    # change the owner of current dir to appuser. R-flag so subdirectories are also changed
    chown -R appuser .

# now we can change the user
USER appuser

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    npm install serve && \
    rm -rf /var/lib/apt/lists/*

# needs to change this since unable to run as root, can't install serve globally
CMD ["npx", "serve", "-s", "-l", "5000", "build"]

# commands
# docker build -t ex-fe .
# docker run -p 5000:5000 ex-fe