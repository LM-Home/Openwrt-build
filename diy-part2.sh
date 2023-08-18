#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#Lienol-APP
#git clone https://github.com/Lienol/openwrt-package.git package/lienol

#zzz-default-settings
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/services/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/\/etc\/shadow/d' package/lean/default-settings/files/zzz-default-settings
echo 'sed -i "/if nixio\.fs\.access(\"\/etc\/config\/dhcp\") then/,/end/d" /usr/lib/lua/luci/controller/admin/network.lua' >>package/lean/default-settings/files/zzz-default-settings
#TODO后续要修改
echo "sed -i 's/eth0/ethlan/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/eth1/ethwan/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/ethlan/wlan0/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/ethwan/eth0/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
cat << 'EOF' >> package/lean/default-settings/files/zzz-default-settings
sed -i 's#config interface '\''wan'\''.*#config interface '\''wan'\''\
\toption ifname '\''eth0'\''\
\toption _orig_ifname '\''eth0'\''\
\toption _orig_bridge '\''false'\''\
\toption proto '\''pppoe'\''\
\toption username '\''75451890@ip.hinet.net'\''\
\toption password '\''ajyrirdj'\''\
\toption ipv6 '\''auto'\''\
\toption keepalive '\''0'\''#' /etc/config/network
EOF
echo 
cat << 'EOF' >> package/lean/default-settings/files/zzz-default-settings
echo '' >> /etc/config/network
echo "config interface 'wan'
	option proto 'pppoe'
	option ifname 'eth0'
	option username '75451890@ip.hinet.net'
	option password 'ajyrirdj'
	option ipv6 'auto'
	option keepalive '0'" >> /etc/config/network
EOF
echo "sed -i \"/option proto 'dhcp'/d\" /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
#TODO结束
echo "sed -i 's/192\.168\.1\.1/192.168.254.1/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/22/5423/g' /etc/config/dropbear" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i '/option Interface/d' /etc/config/dropbear" >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/docker-init >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/docker-web >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /www/DockerReadme.pdf >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/aria2 >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/meshwizard >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /etc/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /usr/lib/lua/luci/controller/gfwlist.lua >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/config/p910nd >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/aria2 >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -f /etc/init.d/p910nd >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /tmp/log/ddns >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /tmp/log/samba >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /usr/bin/meshwizard >>package/lean/default-settings/files/zzz-default-settings
echo exit 0 >>package/lean/default-settings/files/zzz-default-settings

#luci-app-vsftpd
sed -i '/NAS/d' feeds/luci/applications/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/model/cbi/vsftpd/item.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/model/cbi/vsftpd/users.lua
sed -i 's/msgid "NAS"//g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "网络存储"//g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "FTP 服务器"/msgstr "FTP设置"/g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po

#启用WIFI
#sed -i 's/set wireless.radio${devidx}.disabled=0/set wireless.radio${devidx}.disabled=1/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#luci-app-vlmcsd
sed -i 's/KMS 服务器/微软激活/g' feeds/luci/applications/luci-app-vlmcsd/po/zh-cn/vlmcsd.po

#luci-app-dockerman
sed -i 's/存储卷/存储/g' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i 's/msgstr "Docker"/msgstr "容器"/g' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Container (%s)/{n;s/""/"Docker-容器"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Container/{n;s/""/"Docker-容器"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Images/{n;s/""/"Docker-镜像"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Network/{n;s/""/"Docker-网络"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Networks/{n;s/""/"Docker-网络"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Overview/{n;s/""/"Docker-概览"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Volumes/{n;s/""/"Docker-存储"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po

#luci-theme-argon 
rm -rf feeds/luci/themes/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon 

#kernel-graphics
ver=$(cat target/linux/x86/Makefile | grep KERNEL_PATCHVER | cut -d '=' -f2)
echo CONFIG_DRM=y >>target/linux/x86/config-${ver}
echo CONFIG_DRM_I915=y >>target/linux/x86/config-${ver}
echo CONFIG_DRM_I915_ALPHA_SUPPORT=y >>target/linux/x86/config-${ver}
echo CONFIG_DRM_I915_CAPTURE_ERROR=y >>target/linux/x86/config-${ver}
echo CONFIG_DRM_I915_COMPRESS_ERROR=y >>target/linux/x86/config-${ver}
echo CONFIG_DRM_I915_USERPTR=y >>target/linux/x86/config-${ver}
echo '# CONFIG_DRM_I915_ALPHA_SUPPORT is not set' >>target/linux/x86/config-${ver}
echo '# CONFIG_DRM_I915_GVT is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_WERROR is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_DEBUG is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_SW_FENCE_CHECK_DAG is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_DEBUG_GUC is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_LOW_LEVEL_TRACEPOINTS is not set' >>target/linux/x86/config-${ver}
echo '# DRM_I915_DEBUG_VBLANK_EVADE is not set' >>target/linux/x86/config-${ver}

#更新feeds
#./scripts/feeds update -a
#./scripts/feeds install -a
