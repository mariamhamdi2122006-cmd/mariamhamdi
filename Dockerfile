FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache g++

COPY mariam.cpp .
RUN g++ mariam.cpp -o myapp
CMD ["./myapp"]