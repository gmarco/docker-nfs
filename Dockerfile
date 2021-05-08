FROM alpine:3.13
RUN apk add nfs-utils
CMD /usr/sbin/rpc.mountd -F --no-nfs-version 3 --no-nfs-version 2
