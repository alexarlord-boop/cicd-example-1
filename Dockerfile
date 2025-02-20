# Official Go image as a build stage
FROM golang:latest AS build
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o /myapp ./
 
# A small image to run the application
FROM alpine:latest as run
# Copy the application executable from the build image
COPY --from=build /myapp /myapp

# Run the application
WORKDIR /app
EXPOSE 8080
CMD ["/myapp"]

