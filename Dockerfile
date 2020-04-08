FROM golang:latest

RUN apt-get update -y && apt-get upgrade -y

ADD main.go /usr/local/src/

RUN go get -u github.com/gin-gonic/gin && cd /usr/local/src/ && go build -o /usr/local/bin/http-ping

EXPOSE 8080

CMD ["/usr/local/bin/http-ping"]
