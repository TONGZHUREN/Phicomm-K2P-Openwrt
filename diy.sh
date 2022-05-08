#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Add a feed source
echo 'src-git kenzok https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

# add luci -app-
#git clone https://github.com/MeIsReallyBa/k2p-openwrt-mt7615_5.0.2.0.git package/k2p-openwrt-mt7615_5.0.2.0
#git clone https://github.com/hanwckf/openwrt-mt7615.git package/openwrt-mt7615

# 取消默认的主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
