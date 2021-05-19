FROM alpine:latest

ENV NGINX_VERSION 1.19.9
ENV NGINX_PUSH_MODULE 0.5.4

RUN apk add --no-cache --virtual .build-deps \
        build-base \
        gcc \
        curl \
        git \
        zlib-dev \
        openssl-dev \
        pcre-dev \
    && mkdir -p /usr/src \
    && curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz \
	&& tar -zxC /usr/src -f nginx.tar.gz \
	&& rm nginx.tar.gz \
    && curl -fSL https://github.com/wandenberg/nginx-push-stream-module/archive/$NGINX_PUSH_MODULE.tar.gz -o push.tar.gz \
	&& tar -zxC /usr/src -f push.tar.gz \
	&& rm push.tar.gz \
    && cd /usr/src/nginx-$NGINX_VERSION \
    && ./configure --add-module=/usr/src/nginx-push-stream-module-$NGINX_PUSH_MODULE --with-http_ssl_module --with-http_v2_module \
    && make \
    && make install \
    && apk del .build-deps \
    && rm -rf /usr/src \
	&& apk add --no-cache tzdata pcre

COPY nginx.conf /etc/nginx/nginx.conf 

EXPOSE 80
CMD ["/usr/local/nginx/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
