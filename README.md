# shadowsocks

## Pull image:
```
docker pull registry.cn-hangzhou.aliyuncs.com/shaseng/shadowsocks:latest
```

## Start docker:

```
docker run -d --name shadowsocks -p 63333:63333 registry.cn-hangzhou.aliyuncs.com/shaseng/shadowsocks -k 123456 -m aes-256-cfb -p 63333
```


## Help on flags:
```
-k: 指定密码
-m: 指定加密算法
-p: 指定监控端口
-s: 指定监听地址

```