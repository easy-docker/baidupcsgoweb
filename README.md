# docker-baidupcsgoweb
即装即用的 [BaiduPCS-Web](https://github.com/liuzhuoling2011/baidupcs-web)
# 使用方法
```
docker pull ghostry/baidupcsgoweb
docker stop baidupcsgoweb
docker rm baidupcsgoweb
docker run -d \
    --name baidupcsgoweb \
    -p 5299:5299 \
    -v ~/.baidupcsgoweb:/root/.config/BaiduPCS-Go/ \
    -v ~/Downloads:/root/Downloads \
    --restart always \
    ghostry/baidupcsgoweb
```
