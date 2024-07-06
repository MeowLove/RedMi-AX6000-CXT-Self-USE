#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git sm_package https://github.com/kenzok8/small-package' feeds.conf.default
sed -i '$a src-git k9_package https://github.com/kiddin9/openwrt-packages' feeds.conf.default