# ssl-wiznoteserver
套娃wiznote/wizserver镜像，为wiznote/wizserver docker镜像添加https访问支持，docker expose 443端口

## 使用
1. 执行`build/gen_cert.sh`生成证书
2. 执行`docker build -t ssl-wiz-server`生成镜像
3. 执行 `docker run -name ssl-wiz --restart=always -it -d -v ~/wizdata:/wiz/storage -v /etc/localtime:/etc/localtime -p 80:80 -p 9269:9269/udp -p 443:443 ssl-wiz-server`运行容器

[为知笔记docker镜像部署与运行详情](https://wiz.cn/zh-cn/docker)
