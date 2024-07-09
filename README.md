## CXT自用RedMi-AX6000固件

#### 你可以使用，但不要反馈问题。感谢~~

### 固件说明

#### 1、CXT自用固件，有公网。为提高安全性，默认端口为12096，允许Wan口访问。即：

```bash
公网访问地址为：http://wan-ip:12096/
内网访问地址为：http://10.188.8.1:12096/
*管理员账号：root
*管理员密码：cxthhhhh.com
```

#### 2、WLAN的SSID，2.4G接入智能物联设备,5G接入手机电脑。即：

```bash
CXT-WLAN-HIDE-2.4G
CXT-WLAN-HIDE-5G
*WLAN的初始密码为空，请尽快设置
```
##### 建议修改2.4G-WLAN后，隐藏SSID，供智能物联设备使用（摄像头、空调、门禁等）。
##### Only保留5G-WLAN，可选隐藏SSID，供自己家人使用（手机、电脑、平板等）。
##### 访客WIFI，我还在研究（博主写了一个OpenWRT系统下的脚本，但是没研究如何在编译时生效）。

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
luci-app-acl luci-app-adguardhome luci-app-advancedplus luci-app-arpbind luci-app-autoreboot luci-app-autotimeset luci-app-cifs-mount luci-app-ddns luci-app-ddns-go luci-app-diskman luci-app-easymesh luci-app-eqos-mtk luci-app-fileassistant luci-app-filetransfer luci-app-firewall luci-app-frps luci-app-ksmbd luci-app-mtwifi-cfg luci-app-netspeedtest luci-app-nlbwmon luci-app-openclash luci-app-opkg luci-app-ramfree luci-app-socat luci-app-sqm luci-app-store luci-app-tailscale luci-app-ttyd luci-app-turboacc-mtk luci-app-upnp luci-app-vlmcsd luci-app-vsftpd luci-app-wechatpush luci-app-wolplus luci-app-zerotier
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
