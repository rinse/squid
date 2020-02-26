FROM alpine:3.11.2

ENV SQUID_VERSION=4.9 \
    SQUID_CACHE_DIR=/var/spool/squid \
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=root \
    proxy_pass= \
    proxy_user= \
    parent_proxy= \
    https_parent_proxy= \
    parent_port=80 \
    disk_cache_mb=500 \
    access_log_uri=/var/log/squid/access.log \
    http_proxy= \
    https_proxy=

RUN  apk add --no-cache squid=4.9-r0

EXPOSE 3128

CMD [ "squid", "-N", "-f", "/etc/squid/squid.conf" ]
