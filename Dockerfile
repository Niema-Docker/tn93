# Minimal Docker image for tn93 using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install tn93
RUN apk update && \
    apk add bash cmake gcc g++ make && \
    wget -qO- "https://github.com/veg/tn93/archive/refs/tags/v1.0.11.tar.gz" | tar -zx && \
    cd tn93-* && \
    cmake . && \
    make install && \
    cd .. && \
    rm -rf tn93-*
