#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#openClash_url='https://github.com/vernesong/OpenClash.git'       # OpenClash包地址
#lienol_url='https://github.com/Lienol/openwrt-package.git'       # Lienol 包地址


#echo '添加OpenClash'
git clone $openClash_url package/lean/luci-app-openclash

#  OpenClash
#echo 'CONFIG_PACKAGE_luci-app-openclash=y' >> .config
#echo 'CONFIG_PACKAGE_luci-i18n-openclash-zh-cn=y'  >> .config

#echo '添加Lienol包'
#git clone $lienol_url package/Lienol

#echo '添加Passwall'
#echo 'CONFIG_PACKAGE_luci-app-passwall=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_simple-obfs=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-plugin=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=y' >> .config
#echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_kcptun=y' >> .config
#echo 'CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y'  >> .config

sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
