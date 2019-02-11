FROM alpine


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk --no-cache add dnsmasq


EXPOSE 53/tcp 53/udp

CMD ["dnsmasq"]
