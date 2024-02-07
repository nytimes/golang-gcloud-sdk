FROM golang:1.22.0 as golang

FROM gcr.io/google.com/cloudsdktool/cloud-sdk:463.0.0

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV PATH=$PATH:/usr/local/go/bin

# Verify that Go is installed
RUN go version

# ADD make and java
RUN apt-get update && apt-get install -y make default-jre

# ADD App Engine, Datastore emulator, and Firestore emulator.
# Leaving this here in case we figure out a way to install them in the :slim
# version of the cloud-sdk docker image, but they're all included by default
# in the full version of the image so this isn't technically necessary.
RUN apt-get install -y google-cloud-cli-app-engine-go google-cloud-cli-datastore-emulator google-cloud-cli-firestore-emulator
