FROM alpine
MAINTAINER Ghostry (ghostry@ghostry.cn)

RUN cd / && \
    wget -O pcs.zip https://github.com/liuzhuoling2011/baidupcs-web/releases/download/3.6.8/BaiduPCS-Go-3.6.8-linux-amd64.zip && \
    unzip pcs.zip && \
    mv BaiduPCS-Go-3.6.8-linux-amd64/BaiduPCS-Go / && \
    rmdir BaiduPCS-Go-3.6.8-linux-amd64/ && \
    rm pcs.zip

RUN adduser -D -s /bin/sh -u 1000 user

WORKDIR /home/user

VOLUME ["/home/user/.config/BaiduPCS-Go","/home/user/Downloads"]

CMD ["/BaiduPCS-Go"]
