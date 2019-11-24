FROM alpine
MAINTAINER Ghostry (ghostry@ghostry.cn)

RUN cd / && \
    wget -O pcs.zip https://github.com/liuzhuoling2011/baidupcs-web/releases/download/3.6.8/BaiduPCS-Go-3.6.8-linux-amd64.zip && \
    unzip pcs.zip && \
    mv BaiduPCS-Go-3.6.8-linux-amd64/BaiduPCS-Go / && \
    rmdir BaiduPCS-Go-3.6.8-linux-amd64/ && \
    rm pcs.zip

RUN adduser -D -h /home -s /bin/sh -u 1000 user && \
    chmod 777 /home && \
    chmod 777 /root

WORKDIR /home

VOLUME ["/home/.config/BaiduPCS-Go","/home/Downloads"]

CMD ["/BaiduPCS-Go"]
