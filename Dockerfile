FROM alpine:3.13
RUN apk add nfs-utils
COPY nfsd.sh /usr/bin/nfsd.sh
RUN chmod +x /usr/bin/nfsd.sh
CMD /usr/bin/nfsd.sh
