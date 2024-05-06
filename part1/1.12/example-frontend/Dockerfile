# outdated version, needed for the code. uses node 16
FROM node:16.20.2-alpine3.18

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install

RUN npm run build

RUN npm install -g serve


CMD ["serve", "-s", "-l", "5000", "build"]

# commands
# docker build -t ex-fe .
# docker run -p 5000:5000 ex-fe