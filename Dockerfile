FROM williamyeh/ansible:alpine3

RUN apk install --update alpine-sdk \
    && pip install apache-libcloud pycrypto \
    && apk remove alpine-sdk
