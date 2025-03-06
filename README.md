# golang-gcloud-sdk
[![Build Status][badge]][actions]

A simple docker image containing `gcloud`, `go` and `make`. Includes the
following `gcloud` components:

- `app-engine-go`
- `cloud-datastore-emulator`

# Updating Instructions

- Bump the major version of Go in `Dockerfile` to the latest Go version i.e.
  `1.24`
- Bump the version of `cloud-sdk` in `Dockerfile`
  - Find the `latest` version [here][gcloud]
- Open a Pull Request with those changes
- Merge the Pull Request after review and tests pass
- Tag a release using the Go version as the naming convention i.e. `1.24.0`
- Verify the tag was pushed to [Docker Hub][dockerhub]

[actions]: https://github.com/nytimes/golang-gcloud-sdk/actions
[badge]: https://github.com/nytimes/golang-gcloud-sdk/actions/workflows/build.yml/badge.svg
[gcloud]: https://gcr.io/google.com/cloudsdktool/cloud-sdk
[dockerhub]: https://hub.docker.com/r/nytimes/golang-gcloud-sdk
