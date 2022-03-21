# Use the offical Golang image to create a build artifact.
# This is based on Debian and sets the GOPATH to /go.
# https://hub.docker.com/_/golang
FROM golang:1.13 as builder 

# Copy local code to the container image.
WORKDIR /go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop
COPY . .

# Fetching dependencies
RUN ["bash", "gogetall.sh"]

# Build the command inside the container.
RUN CGO_ENABLED=0 GOOS=linux go build -v -o main 

# Use a Docker multi-stage build to create a lean production image.
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM alpine
RUN apk add --no-cache ca-certificates

# Copy the files from the builder stage to deployable image
#COPY --from=builder /go/src/acn/ULAPPH-Cloud-Desktop/main /main
COPY --from=builder /go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop/ /

# Remove go source codes
RUN rm /*.go*

#Expose port
EXPOSE 8080 

# Run the web service on container startup.
CMD ["/main","--port","8080","--host","0.0.0.0"]
