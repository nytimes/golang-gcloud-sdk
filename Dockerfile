# ADD go
FROM golang:1.11 as golang

FROM google/cloud-sdk:slim

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV GOROOT=/usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin/

# ADD make
RUN apt-get install -y make

# ADD java + emulator
RUN apt-get install -y default-jre
RUN apt-get install -y google-cloud-sdk-datastore-emulator

RUN go version
