FROM alpine
MAINTAINER Ghostry (ghostry@ghostry.cn)

RUN cd / && \
    wget -O pcs.zip https://github.com/liuzhuoling2011/baidupcs-web/releases/download/3.7.0/BaiduPCS-Go-3.7.0-linux-amd64.zip && \
    unzip pcs.zip && \
    mv BaiduPCS-Go-*/BaiduPCS-Go / && \
    rmdir BaiduPCS-Go-*/ && \
    rm pcs.zip

VOLUME ["/root/.config/BaiduPCS-Go","/root/Downloads"]

CMD ["/BaiduPCS-Go"]
