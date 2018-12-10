# ADD go
FROM golang:1.11 as golang

FROM google/cloud-sdk:latest

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV GOROOT=/usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin/

# ADD make
RUN apt-get install -y make

RUN go version
