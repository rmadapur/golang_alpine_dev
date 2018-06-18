#Use the container to build the code
FROM golang:1.10.3-alpine

# Add support for gcc
RUN apk add --no-cache gcc musl-dev
# Add support for upx
RUN apk add --no-cache upx
# Add support for git
RUN apk add --no-cache git

# Add support for golint
RUN go get -u golang.org/x/lint/golint

# Add support for go-junit-report
RUN go get -u github.com/jstemmer/go-junit-report

# Add support for gocov
RUN go get github.com/axw/gocov/gocov

# Add support for gocov-html
RUN go get -u gopkg.in/matm/v1/gocov-html


