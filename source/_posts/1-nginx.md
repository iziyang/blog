---
title: Nginx 入门及命令行操作
date: 2020-03-10 07:42:20
tags: Nginx
categories: SRE
---

# Nginx 介绍

Nginx 是一个高性能的 Web 服务器，从 2001 年发展至今，由于 Nginx 对硬件和操作系统内核特性的深度挖掘，使得在保持高并发的同时还能够保持高吞吐量。Nginx 还采用了模块设计，有大量的第三方模块可以扩展 Nginx 的功能，因此 Nginx 的场景非常丰富，同时 Nginx 采用的是 BSD 许可证，赋予了 Nginx 最大的灵活性。简单来说，Nginx 具有以下几个优点：

- 高并发，高性能
- 可扩展性好
- 高可靠，一年之中停机时间可能只有几秒
- 热部署，可以不重启升级
- 灵活性高，采用BSD 许可证

<!-- more -->

> BSD开源协议是一个给予使用者者很大自由的协议。基本上使用者可以“为所欲为”,可以自由的使用，修改源代码，也可以将修改后的代码作为开源或者专有软件再发布。

截止 2019 年 9 月份，Nginx 的市场份额已经达到了 33%，且还在持续增长，稳居市场头把交椅。

![](https://s3plus.sankuai.com/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20200322090553)

## 背景

Nginx 出现的背景是由于互联网的快速普及导致数据量的快速增长，同时催生出了海量的连接。传统的 Apache 等服务器采用的是单进程模型，这意味着，每处理一个请求就会创建一个进程，这不但存在进程创建的开销，而且进程之间相互切换产生的上下文开销也非常耗费 CPU 资源，导致这种传统的服务器在面对成千上万的并发连接时，性能非常低下，而这是快速发展的互联网所不能够忍受的。

在这种背景下，Nginx 采用的是进程池和 epoll 处理模型，这二者加起来使得 Nginx 的性能非常优异，一台 32 核的机器上可以支撑数千万的并发连接。

Nginx 有一个 master 进程和若干个 worker 进程，master 进程是用来管理 worker 进程的，worker 进程负责处理具体的请求，worker 进程是 master 进程的子进程。

## Nginx 的版本

介绍完 Nginx 的背景，我们就该说说 Nginx 的版本了。目前 Nginx 有三个主要的产品：

- 官方 Nginx。包含开源版（nginx.org）和商业版（nginx.com）
- 阿里巴巴的 Tengine。Tengine 是由淘宝网发起的 Web 服务器项目，目前已经开源
- OpenResty。OpenResty 通过 Lua 对 Nginx 进行扩展，使得扩展 Nginx 模块变得异常轻松

针对我们日常学习来说，选择官方开源版的 Nginx 以及 OpenResty 就可以了。

## 编译 Nginx 和 OpenResty

在 Linux 上，当然可以使用 yum、apt-get 等软件包管理工具来下载 Nginx，但是 Nginx 的很多模块并不是默认开启的，第三方模块很多也并不包含，所以，如果想要开启内置的模块或编译第三方模块，还是需要编译 Nginx。

### 下载 Nginx 源代码

在 http://nginx.org/en/download.html 里面可以直接下载 Nginx 源代码。包含以下目录：

```shell
nginx-1.17.8
├── CHANGES # 每个版本提供的特性和 bugfix
├── CHANGES.ru # 俄罗斯版本的 CHANGES 文件
├── LICENSE
├── Makefile
├── README
├── auto # 自动检测系统环境以及编译相关的脚本，辅助 config 脚本执行的时候去判定 nginx 支持哪些模块，当前操作系统有什么样的特性可以供给 nginx 使用
├── conf # 示例文件，方便运维配置，会把 conf 示例文件拷贝到安装目录
├── configure # 命令脚本，用来生成中间文件，执行编译前的一个必备动作
├── contrib # 提供了两个 pl 脚本和 vim 工具
├── html # 一个 500 错误的默认页面，另一个是默认的 index 页面
├── man # nginx 对 Linux 的帮助文件，man ./nginx.8
└── src # nginx 源代码
```

**配置 Vim**

如果 Vim 没有开启语法高亮的话，最好开启一下

```shell
cp -r contrib/vim/* ~/.vim
# mac 下需要在家目录下新建 .vimrc 文件并配置
syntax on
```

### 编译 Nginx

```shell
./configure --help # --help 命令可以查看配置脚本支持哪些参数
```

#### 第一类配置参数

```shell
--prefix=PATH                      set installation prefix # 指定这个路径就可以了，其他文件会在 prefix 目录下建立相应的文件夹
--sbin-path=PATH                   set nginx binary pathname
--modules-path=PATH                set modules path
--conf-path=PATH                   set nginx.conf pathname
--error-log-path=PATH              set error log pathname
--pid-path=PATH                    set nginx.pid pathname
--lock-path=PATH                   set nginx.lock pathname
```

#### 第二类配置参数

可以配置使用或不使用哪些模块，前缀通常是 with 和 with out，需要加 with 参数的通常是不会被 Nginx 默认编译的，without 则是会移出编译。

```
--with-http_ssl_module             enable ngx_http_ssl_module
--with-http_v2_module              enable ngx_http_v2_module
--with-http_realip_module          enable ngx_http_realip_module
...

--without-http_charset_module      disable ngx_http_charset_module
--without-http_gzip_module         disable ngx_http_gzip_module
--without-http_ssi_module          disable ngx_http_ssi_module
...
```

#### 开始编译

```shell
# 1. 使用默认参数，指定编译安装目录
./configure --prefix=/Users/mtdp/myproject/nginx/nginx
# 编译完成后生成 objs 文件夹中间文件
➜  objs ll
total 176
-rw-r--r--  1 mtdp  staff    40K  3  3 07:23 Makefile
-rw-r--r--  1 mtdp  staff    25K  3  3 07:23 autoconf.err
-rw-r--r--  1 mtdp  staff   5.4K  3  3 07:23 ngx_auto_config.h
-rw-r--r--  1 mtdp  staff   531B  3  3 07:23 ngx_auto_headers.h
-rw-r--r--  1 mtdp  staff   5.7K  3  3 07:23 ngx_modules.c # ngx_modules.c 决定了接下来的编译会生成哪些模块
drwxr-xr-x  9 mtdp  staff   288B  3  3 07:23 src
2. # 编译
make # 生成了大量的中间文件。如果是版本升级，就不能直接 makeinstall，需要将 obj 拷贝到安装目录。如果生成了动态模块，编译后也会放在 objs 目录下
3. # 安装
make install
➜  nginx ll # 安装完成后生成以下文件夹
total 0
drwxr-xr-x  17 mtdp  staff   544B  3  3 07:29 conf # 从 Nginx 源码目录拷贝的
drwxr-xr-x@  4 mtdp  staff   128B  3  3 07:29 html # 从 Nginx 源码目录拷贝的
drwxr-xr-x   2 mtdp  staff    64B  3  3 07:29 logs # 日志文件目录，包括 access log 和 error log
drwxr-xr-x   3 mtdp  staff    96B  3  3 07:29 sbin # Nginx 二进制文件目录
```

### 编译 OpenResty

OpenResty 的编译安装步骤与 Nginx 基本一致

在 https://openresty.org/en/download.html 中下载 OpenResty 的源代码，然后按照 Nginx 的编译步骤执行即可。

# Nginx 配置文件

## 配置规则

```
events {
    worker_connections 1024;
}

http {
    #incloud mime.types;
    #default_type application/octet-stream;
    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';
    #access_log logs/geek.access.log main;
    sendfile on;
    #tcp_nopush on;
    #keepalive_timeout 0;
    keepalive_timeout 65;

    gzip on;
    gzip_min_length 1;
    gzip_comp_level 2;
    gzip_types text/plain application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gif image/png multipart/form-data;
    server {
        listen 8080;
        server_name 127.0.0.1;
        #charset koi8-r;
        access_log logs/geek.access.log main;
        location /lua {
            default_type text/html;
            content_by_lua '
ngx.say("User-Agent: ", ngx.req.get_headers()["User-Agent"])
';
}
        }
        #error_page 404 /404.html;

    }
```

如上所示，是一个非典型的 Nginx 配置文件，Nginx 的配置文件语法遵循以下规则：

- 配置文件由指令与指令块构成
- 每条指令以 ; 结尾，指令与指令的参数之间以空格符号分割
- 指令块以 {} 将多条指令组织在一起

```
events { # 指令块
    worker_connections 1024; # 指令
}
```

- include 语句允许组合多个配置文件，以提升可维护性
- 使用 # 添加注释
- 使用 $ 符号添加变量
- 部分指令的参数支持正则表达式

## 配置参数

### 时间单位

- ms：毫秒
- s：秒
- m：分钟
- h：小时
- d：天
- M：月 = 30 天
- y：年 = 365 天

### 空间单位

- bytes
- k/K：kilobytes
- m/M：megabytes
- g/G：gigabytes

## HTTP 配置的指令块

- http：表示由 http 模块来处理请求
- upstream：表示上游服务器地址
- server：表示站点地址
- location：表示 URL

这些指令块在接下来都会遇到。

# Nginx 命令行

在刚刚编译完成的 Nginx 目录下，有一个 sbin 目录，就是用来存放 Nginx 的二进制文件的

```shell
➜  sbin ll
total 1712
-rwxr-xr-x  1 mtdp  staff   854K  3  3 07:29 nginx
```

Nginx 启动时，有一系列的命令行参数可以指定，下面分别介绍一下。

```shell
./nginx
-h/-? # 打开帮助
-c # 使用指定的配置文件，而不是默认的 conf 文件夹下的配置文件
-g # 指定配置命令，覆盖掉配置文件中的指令
-p # 指定运行目录
-s # 发送信号 stop 立刻停止服务；quit 优雅的停止服务；reload 重载配置文件；reopen 重新开始记录日志文件
-t/-T # 测试配置文件是否有语法错误
-v/-V # 打印 nginx 的版本信息、编译信息等
```

## 热部署

当配置文件发生变更时，需要重载配置文件：

```shell
nginx -s reload
```

但想要更换 nginx 版本时，就需要采用热部署的方式：

1. 查看现有 master 进程的 pid。可以看出来，worker 进程是 master 进程的子进程

![](https://tva1.sinaimg.cn/large/00831rSTly1gd2jsxbyefj32la06q40n.jpg)

2. 编译 Nginx

```shell
./configure --prefix=/Users/mtdp/myproject/nginx/test_nginx --with-http_sub_module --with-http_addition_module --with-http_realip_module
make
```

3. 拷贝新的二进制文件到安装目录

```shell
cp /Users/mtdp/myproject/nginx/nginx-1.17.8/objs /Users/mtdp/myproject/nginx/test_nginx/sbin
```

4. 然后 kill 发送信号给现有的 master 进程

```shell
# master 进程 pid 为 83308
kill -USR2 61333
```

查看 Nginx 进程。可以发现，新的 master 进程也是基于老的 master 进程 fork 出来的

![](https://tva1.sinaimg.cn/large/00831rSTly1gd2jwbysxuj31eg06wabx.jpg)

5. 关闭老的 master 进程下的 worker 进程。这个时候会发现，基于 61333 这个 master 的 worker 进程已经退出了

```shell
# 优雅的关闭老的 master 所有的 worker 进程，执行后，老的 master 并不会退出但是 worker 已经没了，防止新进程有问题，还可以通过 reload 来回滚
kill -WINCH 61333
```

![](https://tva1.sinaimg.cn/large/00831rSTly1gd2jzwcbekj31ey05eta3.jpg)

6. 如果没有问题，那么就执行退出老的 master 进程，这个时候再查看，老的 master 进程已经不存在了

```shell
# 优雅的退出 master
kill -quit 61333
```

![](https://tva1.sinaimg.cn/large/00831rSTly1gd2k34g3wpj31dk042t9k.jpg)

## 日志切割

一条命令即可实现日志切割：

```shell
nginx -s reopen  # 会重新生成日志文件
```