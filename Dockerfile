FROM gliderlabs/alpine:3.1

MAINTAINER Chris Aubuchon <Chris.Aubuchon@gmail.com>

ENV CONSUL_TEMPLATE_VERSION 0.12.2

ADD https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip

RUN unzip consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip && \
    mv consul-template /usr/local/bin/consul-template &&\
    rm -rf /consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip && \
    mkdir -p /consul-template /consul-template/config.d /consul-template/templates

CMD [ "/usr/local/bin/consul-template"]
