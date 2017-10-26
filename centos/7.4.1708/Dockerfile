FROM centos:7.4.1708

RUN yum install -y keepalived && yum clean all && rm -rf /var/cache/yum

ENTRYPOINT ["/usr/sbin/keepalived"]