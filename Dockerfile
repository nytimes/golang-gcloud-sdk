# ADD go
FROM golang:1.18 as golang

FROM gcr.io/google.com/cloudsdktool/cloud-sdk:slim

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV GOROOT=/usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin/

# ADD make
RUN apt-get install -y make

# ADD java + emulator + appengine
RUN apt-get install -y default-jre
RUN apt-get install -y google-cloud-sdk-datastore-emulator google-cloud-sdk-app-engine-go

RUN go version
