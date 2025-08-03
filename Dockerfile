FROM alpine:latest

RUN apk add --no-cache curl tar

# تحميل Teldrive
RUN curl -sSL https://github.com/tgdrive/teldrive/releases/download/1.6.19/teldrive-1.6.19-linux-amd64.tar.gz \
    | tar -xz -C /usr/local/bin

RUN chmod +x /usr/local/bin/teldrive

COPY config.toml /config.toml

EXPOSE 8080

CMD ["teldrive", "run"]