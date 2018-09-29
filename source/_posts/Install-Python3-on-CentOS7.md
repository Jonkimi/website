---
title: CentOS 7 源代码编译安装 Python 3
date: 2018-09-22 17:10:15
tags: [CentOS, Python 3, Install, 安装]
description: 在 CentOS 7 上编译安装 Python 3
---

# CentOS 7 安装 Python 3

1. 下载源码

   在 [Python 官网][1]获取源代码地址

   ```shell
   wget https://www.python.org/ftp/python/3.5.6/Python-3.5.6.tgz
   ```

2. 编译

   ```shell
   yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel
   ./configure --prefix=/usr/local/python3 --enable-optimizations
   ```

3. 安装

   ```shell
   make
   make test
   make install
   ```

4. 更改默认版本配置

   ```shell
   update-alternatives --install /usr/bin/python python /usr/bin/python3 2
   update-alternatives --config python
   ```

5. 测试

   ```shell
   $ python3 -V
   Python 3.6.5
   ```

[1]: https://www.python.org/downloads/source/ "Python 源代码下载界面"