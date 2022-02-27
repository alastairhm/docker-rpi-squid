FROM alpine:3.15.0
RUN apk update && \
apk upgrade && \
apk add bash squid && \
rm -rf /var/cache/apk/* && \
mkdir -p /var/log/squid3
EXPOSE 3128
ENTRYPOINT ["/usr/sbin/squid"] 
CMD ["-N", "-d 1", "-D"]
