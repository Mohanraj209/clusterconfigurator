# Dockerfile
FROM alpine:latest

RUN apk --update --no-cache add bash curl jq

# Install RKE
RUN curl -LO https://github.com/rancher/rke/releases/download/v1.3.10/rke_linux-amd64 && \
    chmod +x rke_linux-amd64 && \
    mv rke_linux-amd64 /usr/local/bin/rke

# Copy entrypoint.sh from the build context into the image
COPY entrypoint.sh /entrypoint.sh

# Make entrypoint.sh executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
