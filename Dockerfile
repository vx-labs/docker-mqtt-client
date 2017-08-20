FROM jbonachera/alpine
ENV IOT_CLIENT_VERSION=v1.2.4
ADD https://github.com/vx-labs/iot-userapi/releases/download/${IOT_CLIENT_VERSION}/wrapper /usr/local/bin/pki-wrap
RUN chmod +x /usr/local/bin/pki-wrap
RUN apk -U add mosquitto-clients ca-certificates && \
    rm -rf /var/cache/apk/*
COPY entrypoint /sbin/entrypoint
ENTRYPOINT ["/usr/local/bin/pki-wrap", "/sbin/entrypoint"]
