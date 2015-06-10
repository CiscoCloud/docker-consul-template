FROM gliderlabs/alpine:3.2

MAINTAINER Chris Aubuchon <Chris.Aubuchon@gmail.com>

ENV CONSUL_TEMPLATE_VERSION 0.10.0

ADD https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz /

RUN tar zxvf consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz && \
    mv consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64/consul-template /usr/local/bin/consul-template &&\
    rm -rf /consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz && \
    rm -rf /consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64 && \
    mkdir -p /consul-template /consul-template/config.d /consul-template/templates

CMD [ "/usr/local/bin/consul-template"]
