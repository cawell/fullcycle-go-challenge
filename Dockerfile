FROM golang:alpine AS build

WORKDIR /app

COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o challenge main.go

FROM scratch

COPY --from=build /app/challenge /challenge

ENTRYPOINT ["/challenge"]
