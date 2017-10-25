FROM debian:stretch-slim

RUN sed -i 's|deb.debian.org|mirrors.ustc.edu.cn|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends keepalived && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/keepalived","-f /etc/keepalived/keepalived.conf --vrrp --log-console --log-detail --release-vips --dont-fork --dump-conf"]