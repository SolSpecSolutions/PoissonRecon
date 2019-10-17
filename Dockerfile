ARG ALPINE_VERSION=3.10

FROM alpine:${ALPINE_VERSION}

RUN \
    apk update && \
    apk add --no-cache \
        build-base \
        libpng-dev \
        libgomp \
        zlib \
        jpeg-dev \
        libexecinfo-dev

COPY . /code

RUN make -C /code
