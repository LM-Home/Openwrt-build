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
echo "sed -i 's/eth0/ethlan/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/eth1/ethwan/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/ethlan/wlan0/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/ethwan/eth0/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/192\.168\.1\.1/192.168.254.1/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
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
cat << 'EOF' >> package/lean/default-settings/files/zzz-default-settings
echo '' >> /etc/config/firewall
echo "config rule
	option target 'ACCEPT'
	option src 'wan'
	option proto 'tcp udp'
	option name 'HTTP'
	option dest_port '80'" >> /etc/config/firewall
EOF

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

echo CONFIG_APERTURE_HELPERS=y >>target/linux/x86/config-${ver}
echo CONFIG_CC_NO_ARRAY_BOUNDS=y >>target/linux/x86/config-${ver}
echo CONFIG_CGROUPS=y >>target/linux/x86/config-${ver}
echo CONFIG_CGROUP_SCHED=y >>target/linux/x86/config-${ver}
echo CONFIG_CGROUP_WRITEBACK=y >>target/linux/x86/config-${ver}
echo CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1 >>target/linux/x86/config-${ver}
echo CONFIG_CONTEXT_TRACKING=y >>target/linux/x86/config-${ver}
echo CONFIG_CONTEXT_TRACKING_IDLE=y >>target/linux/x86/config-${ver}
echo CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=y >>target/linux/x86/config-${ver}
echo CONFIG_CRYPTO_LIB_SHA1=y >>target/linux/x86/config-${ver}
echo CONFIG_CRYPTO_LIB_UTILS=y >>target/linux/x86/config-${ver}
echo CONFIG_FAIR_GROUP_SCHED=y >>target/linux/x86/config-${ver}
echo CONFIG_FRAME_WARN=1024 >>target/linux/x86/config-${ver}
echo CONFIG_GCC11_NO_ARRAY_BOUNDS=y >>target/linux/x86/config-${ver}
echo CONFIG_GPIO_ACPI=y >>target/linux/x86/config-${ver}
echo CONFIG_GPIO_CDEV=y >>target/linux/x86/config-${ver}
echo CONFIG_HZ_PERIODIC=y >>target/linux/x86/config-${ver}
echo CONFIG_MEMCG=y >>target/linux/x86/config-${ver}
echo CONFIG_MEMCG_KMEM=y >>target/linux/x86/config-${ver}
echo CONFIG_NET_PTP_CLASSIFY=y >>target/linux/x86/config-${ver}
echo CONFIG_PAGE_COUNTER=y >>target/linux/x86/config-${ver}
echo CONFIG_PARAVIRT=y >>target/linux/x86/config-${ver}
echo CONFIG_PPS=y >>target/linux/x86/config-${ver}
echo CONFIG_PTP_1588_CLOCK=y >>target/linux/x86/config-${ver}
echo CONFIG_SCHED_AUTOGROUP=y >>target/linux/x86/config-${ver}
echo CONFIG_SERIAL_MCTRL_GPIO=y >>target/linux/x86/config-${ver}
echo CONFIG_SOFTIRQ_ON_OWN_STACK=y >>target/linux/x86/config-${ver}
echo CONFIG_UCS2_STRING=y >>target/linux/x86/config-${ver}
echo CONFIG_VMAP_PFN=y >>target/linux/x86/config-${ver}
echo CONFIG_X86_HV_CALLBACK_VECTOR=y >>target/linux/x86/config-${ver}
