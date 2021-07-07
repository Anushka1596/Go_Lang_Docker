FROM golang:latest

# RUN mkdir /app 

# COPY go.mod .
# COPY go.sum .

WORKDIR /app

# Copy go mod and sum files
COPY  . /app

#COPY . /app

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# COPY *.go .

# Build the Go app
RUN go build -o /app 

# RUN chmod +x /app

EXPOSE 8000


ENTRYPOINT ["/app"]