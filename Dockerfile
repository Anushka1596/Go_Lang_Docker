FROM golang:latest

WORKDIR /app

# Copy go mod and sum files
COPY  . ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Build the Go app
#RUN go install github.com/Anushka1596/Go_Lang_Docker
RUN go install gaurav

EXPOSE 8000


#ENTRYPOINT ["/go/bin/Go_Lang_Docker"]
ENTRYPOINT ["/go/bin/gaurav"]
