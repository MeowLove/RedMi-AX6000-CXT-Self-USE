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
sed -i "s/ImmortalWrt-2.4G/CXT-WLAN-HIDE-2.4G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "s/ImmortalWrt-5G/CXT-WLAN-HIDE-5G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "s/MT7986_AX6000_2.4G/CXT-WLAN-HIDE-2.4G/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
sed -i "s/MT7986_AX6000_5G/CXT-WLAN-HIDE-5G/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat

# 修改 时区
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Hong_Kong'/g" package/base-files/files/bin/config_generate

# 修改 Uhttpd端口为12096，并允许Wan口访问（未放行防火墙）
sed -i 's/:80/:12096/g' package/network/services/uhttpd/files/uhttpd.config
sed -i 's/rfc1918_filter 1/rfc1918_filter 0/g' package/network/services/uhttpd/files/uhttpd.config

# 防火墙 Wan口放行uhttpd端口12096进入
echo "
config rule
        option name 'uhttpd-12096-in'
        option target 'ACCEPT'
        option src 'wan'
        option proto 'tcp udp'
        option dest_port '12096'
" >> package/network/config/firewall/files/firewall.config