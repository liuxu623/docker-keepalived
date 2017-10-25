FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends libipset3 keepalived && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/keepalived"]