## CXT自用RedMi-AX6000固件

#### 你可以使用，但不要反馈问题。感谢~~

### 固件说明

#### 1、CXT自用固件，有公网。为提高安全性，默认端口为12096，允许Wan口访问。即：

```bash
公网访问地址为：http://wan-ip:12096/
内网访问地址为：http://10.188.8.1:12096/
*Web管理员密码：cxthhhhh.com
```

#### 2、WLAN的SSID，2.4G接入智能物联设备,5G接入手机电脑。即：

```bash
CXT-WLAN-HIDE-2.4G
CXT-WLAN-HIDE-5G
*WLAN的初始密码为空，请尽快设置
```


### 预览图

#### 1、待补充

### 使用的源码

##### 闭源驱动ImmortalWrt固件，已成功开机，但还有点小问题，在修。
##### 开源驱动LEDE固件，还没开始尝试编译，新建文件夹 5%。

#### 1、先试试ImmortalWrt-mt798x作为底包（闭源驱动）

```bash
git clone https://github.com/hanwckf/immortalwrt-mt798x.git
```

#### 2、再试试LEDE作为底包（开源驱动，有区别吗？麻烦大家告诉我）

```bash
git clone https://github.com/coolsnowwolf/lede
```



### 添加的插件

#### 1、列表如下：

##### 闭源固件插件

```bash
待修好编译Bug后，进行整理
```

##### 开源固件插件

```bash
还没开始
```

#### 2、优选kiddin9的openwrt-packages作为第三方扩展库（K9是什么）

```bash
sed -i '$a src-git k9_package https://github.com/kiddin9/openwrt-packages' feeds.conf.default
```

#### 3、备选kenzok8的small-package作为第三方扩展库（SM又是什么？）

```bash
sed -i '$a src-git sm_package https://github.com/kenzok8/small-package' feeds.conf.default
```

### 其他说明

#### 1、设置为LF文件末尾，因为在Linux下编译

###### This diff contains a change in line endings from 'LF' to 'CRLF'.

##### ①安装GitHub Desktop和Git工具，使用Git打开源码目录

###### ~/Documents/GitHub/RedMi-AX6000-CXT-Self-USE

##### ②设置'CRLF' to 'LF'

###### git config core.autocrlf input

<!-- ###### 要将行尾格式设置为“LF”，可以执行以下命令：
###### git config --global core.autocrlf input
###### Windows想要保留“CRLF”，则可以使用：
###### git config --global core.autocrlf true -->
