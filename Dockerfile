FROM alpine:latest

WORKDIR app
RUN apk update && apk add wget make

RUN wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mosh-scheme/mosh-0.2.7.tar.gz && \
    tar -xf mosh-0.2.7.tar.gz

WORKDIR mosh-0.2.7

RUN ./configure \
    make \
    make check \
    make install
