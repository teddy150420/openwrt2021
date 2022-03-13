#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
#echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
echo 'src-git cloudflarespeedtest https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest' >>feeds.conf.default
echo 'src-git cdnspeedtest https://github.com/immortalwrt-collections/openwrt-cdnspeedtest' >>feeds.conf.default
echo 'src-git reset --hard 1d3cbf50c916be5f74d188be0288996703a2f295 small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
