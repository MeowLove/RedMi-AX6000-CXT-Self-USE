#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# Description: OpenWrt DIY script part 1 (Before Update feeds)


# 修改 网关IP
sed -i 's/192.168.1.1/10.188.8.1/g' package/base-files/files/bin/config_generate

# 修改 界面主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改 主机名
sed -i 's/ImmortalWrt/CXT-FireWall/g' package/base-files/files/bin/config_generate

# 修改 密码(cxthhhhh.com)
sed -i '1d' package/base-files/files/etc/shadow
sed -i '1i\root:$1$UIl1uSg0$tAW9qjOqoCto0CIUgUwHT1:0:0:99999:7:::' package/base-files/files/etc/shadow

# 修改 WIFI SSID 
sed -i 's/ImmortalWrt/CXT-WLAN-HIDE/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改 时区
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Hong_Kong'/g" package/base-files/files/bin/config_generate