FROM ubuntu:14.04

ADD http://stedolan.github.io/jq/download/linux64/jq /usr/local/bin/jq

COPY out /opt/resource/out

RUN chmod +x /usr/local/bin/jq /opt/resource/out && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl
