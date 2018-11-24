FROM alpine:3.6

MAINTAINER shaseng<shaseng@dtstack.com>

RUN echo "http://mirrors.aliyun.com/alpine/v3.6/main" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.6/community" >> /etc/apk/repositories \
    && apk upgrade --update

RUN apk add -U bash tzdata wget grep bc coreutils python py-pip libc6-compat ca-certificates su-exec libsodium-dev python-pip \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && ln -sf /bin/bash /bin/ash \
    
RUN pip install shadowsocks
    
ENTRYPOINT ["/usr/local/bin/ssserver","-s","0.0.0.0"]
    