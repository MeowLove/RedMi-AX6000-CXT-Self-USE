## CXT自用RedMi-AX6000固件
#### 你可以使用，但不要反馈问题。感谢~~

### 固件说明
#### 1、待补充，新建文件夹 5%。


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
#### 1、待确定

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