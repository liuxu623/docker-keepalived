FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends keepalived && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/keepalived","-f /etc/keepalived/keepalived.conf --vrrp --log-console --log-detail --release-vips --dont-fork --dump-conf"]