FROM golang:1.13-alpine as builder

WORKDIR /go/src/app

COPY . .

RUN go get -v ./...
RUN CGO_ENABLED=0 go build -o app

FROM scratch

COPY --from=builder /go/src/app/app /app

CMD [ "/app"]