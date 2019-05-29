FROM williamyeh/ansible:alpine3

RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories \
	&& apk add --update alpine-sdk python-dev git docker \ 
    && pip install apache-libcloud pycrypto ovh \
    && apk del alpine-sdk python-dev
