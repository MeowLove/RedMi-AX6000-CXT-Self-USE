## CXT自用RedMi-AX6000固件

#### 你可以使用，但不要反馈问题。感谢~~

### 固件说明

#### 1、CXT自用固件，有公网。为提高安全性，默认端口为12096，允许Wan口访问。即：

```bash
公网访问地址为：http://wan-ip:12096/
内网访问地址为：http;//10.188.8.1:12096/
```

### 预览图

#### 1、待补充

### 使用的源码

#### 1、待确定

##### 计划分别试试各位大佬的源码，还在选型，暂未确定。

#### 2、先试试LEDE作为底包

```bash
git clone https://github.com/coolsnowwolf/lede
```

#### 3、再试试immortalwrt-mt798x作为底包

```bash
git clone https://github.com/hanwckf/immortalwrt-mt798x.git
```

### 添加的插件

#### 1、列表如下：

##### 系统级

```bash
autocore base-files bash block-mount btop busybox ca-bundle coremark curl dnsmasq-full dropbear ds-lite firewall fitblk fstools htop kmod-crypto-hw-safexcel kmod-gpio-button-hotplug kmod-ipt-nat kmod-ipt-nat6 kmod-leds-gpio kmod-leds-ws2812b kmod-lib-zstd kmod-mt7915e kmod-mt7986-firmware kmod-mtd-rw kmod-phy-aquantia kmod-tcp-bbr libc libgcc libustream-mbedtls logd
```

##### 软件级

```bash
luci-app-acl luci-app-adguardhome luci-app-advancedplus luci-app-argon-config luci-app-arpbind luci-app-autoreboot luci-app-autotimeset luci-app-cifs-mount luci-app-ddns luci-app-ddns-go luci-app-easymesh luci-app-eqosplus luci-app-fan luci-app-fileassistant luci-app-firewall luci-app-frps luci-app-ksmbd luci-app-mwan3 luci-app-netspeedtest luci-app-nginx-manager luci-app-nlbwmon luci-app-ocserv luci-app-opkg luci-app-ramfree luci-app-socat luci-app-softethervpn luci-app-sqm luci-app-store luci-app-syncdial luci-app-tailscale luci-app-ttyd luci-app-turboacc luci-app-upnp luci-app-vlmcsd luci-app-vsftpd luci-app-wechatpush luci-app-wireguard luci-app-wizard luci-app-wolplus luci-app-wrtbwmon luci-app-zerotier luci-base luci-compat luci-lib-fs luci-lib-ipkg 
```

#### 2、优选kiddin9的openwrt-packages作为第三方扩展库

```bash
sed -i '$a src-git k9_package https://github.com/kiddin9/openwrt-packages' feeds.conf.default
```

#### 3、备选kenzok8的small-package作为第三方扩展库

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
