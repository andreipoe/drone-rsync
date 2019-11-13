FROM alpine:3.8
LABEL maintainer "Andrei Poenaru <docker@simd.stream>"

RUN apk add --no-cache ca-certificates bash openssh-client rsync
COPY upload.sh /usr/local/

ENTRYPOINT ["/usr/local/upload.sh"]
