# Build Stage
FROM golang:1.23-alpine AS builder

WORKDIR /app
COPY src/go.mod ./
RUN go mod download
COPY src/ .

RUN CGO_ENABLED=0 go build -o app .

FROM gcr.io/distroless/base-debian12
WORKDIR /root/
COPY --from=builder /app/app .
EXPOSE 8080
CMD ["/root/app"]