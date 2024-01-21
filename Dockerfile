# Dockerfile
FROM alpine:latest

RUN apk --update --no-cache add bash curl jq

# Install RKE
RUN curl -LO https://github.com/rancher/rke/releases/download/v2.6.3/rke_linux-amd64 && \
    chmod +x rke_linux-amd64 && \
    mv rke_linux-amd64 /usr/local/bin/rke

ENTRYPOINT ["bash", "/entrypoint.sh"]
