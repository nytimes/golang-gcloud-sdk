FROM golang:1.21.0 as golang

FROM gcr.io/google.com/cloudsdktool/cloud-sdk:443.0.0-slim

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin

# Verify that Go is installed
RUN go version

# ADD make and java
RUN apt-get install -y make default-jre

# ADD App Engine, Datastore emulator, and Firestore emulator
RUN apt-get install -y google-cloud-cli-app-engine-go google-cloud-cli-datastore-emulator google-cloud-cli-firestore-emulator
