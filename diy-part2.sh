#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#Lienol-APP
#git clone https://github.com/Lienol/openwrt-package.git package/lienol

#luci-app-vssr
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/xiaorouji/openwrt-passwall.git
mv openwrt-passwall/shadowsocksr-libev package/lean/shadowsocksr-libev
mv openwrt-passwall/simple-obfs package/lean/simple-obfs
mv openwrt-passwall/xray-core package/lean/xray-core
mv openwrt-passwall/trojan package/lean/trojan
mv openwrt-passwall/ipt2socks package/lean/ipt2socks
mv openwrt-passwall/xray-plugin package/lean/xray-plugin
mv openwrt-passwall/hysteria package/lean/hysteria
rm openwrt-passwall.git
sed -i 's/Hello World/翻墙工具/g' package/lean/luci-app-vssr/luasrc/controller/vssr.lua
sed -i 's/Hello World/翻墙工具/g' package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "AlterId"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "额外ID"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "VmessId (UUID)"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "UUID"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Camouflage Type"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "伪装方式"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Uplink Capacity"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "上传速率"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Downlink Capacity"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "下载速率"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Read Buffer Size"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "读出缓存"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Write Buffer Size"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "写入缓存"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Congestion"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "拥塞控制"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo "" >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgid "Shadowsocks New Version"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
echo 'msgstr "Shadowsocks"' >> package/lean/luci-app-vssr/po/zh-cn/vssr.po
#echo src-git helloworld https://github.com/fw876/helloworld >>feeds.conf.default
#echo src-git passwall https://github.com/xiaorouji/openwrt-passwall >>feeds.conf.default

#luci-app-mwan3
cat feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po | sed ':label;N;s/\n/123456/;b label' >feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Detail"123456msgstr ""/"Detail"123456msgstr "细节"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Execute"123456msgstr ""/"Execute"123456msgstr "执行"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"INFO: MWAN not running"123456msgstr ""/"INFO: MWAN not running"123456msgstr "通知：MWAN未运行"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Globals"123456msgstr ""/"MWAN - Globals"123456msgstr "全局"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Interfaces"123456msgstr ""/"MWAN - Interfaces"123456msgstr "接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Members"123456msgstr ""/"MWAN - Members"123456msgstr "成员"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Notification"123456msgstr ""/"MWAN - Notification"123456msgstr "通知"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Policies"123456msgstr ""/"MWAN - Policies"123456msgstr "策略"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN - Rules"123456msgstr ""/"MWAN - Rules"123456msgstr "规则"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Interfaces"123456msgstr ""/"MWAN Interfaces"123456msgstr "MWAN 接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Detail"123456msgstr ""/"MWAN Status - Detail"123456msgstr "细节"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Diagnostics"123456msgstr ""/"MWAN Status - Diagnostics"123456msgstr "诊断"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"MWAN Status - Troubleshooting"123456msgstr ""/"MWAN Status - Troubleshooting"123456msgstr "故障排除"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Notification"123456msgstr ""/"Notification"123456msgstr "通知"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"interfaces, members or policies"123456msgstr ""123456123456/"interfaces, members or policies"123456msgstr ""123456"“规则”基于 IP 地址、协议、端口把流量划分到指定的“策略”中。<br \/>"123456"规则按照从上到下的顺序进行匹配。若第一条能够匹配通信的规则，其它规则将被忽略。不匹配规则的通信将会由系统默认路由表进行。<br \/>"123456"来自已知的网络的转发流量由系统默认路由表接手，然后 MWAN 从中匹配出相应的流量并转移到 MWAN 的路由表。但是所有被划分到一个无法使用的策略的流量将会无法正常进行路由。<br \/>"123456"名称允许包括A-Z、a-z、0-9、_ 但是不能有空格。<br \/>"123456"规则不能与接口、成员、策略中的任意一个设置项名称相同。<br \/>"123456123456/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Task"123456msgstr ""/"Task"123456msgstr "任务"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/)<br \/><br \/>"123456msgstr ""123456123456/)<br \/><br \/>"123456msgstr ""123456"这里允许您修改“\/etc\/mwan3.user”的内容。<br \/>该文件在 sysupgrade 期间也会保"123456"留。<br \/><br \/>注意：<br \/>该文件会作为 shell 脚本解释。<br \/>脚本的第一行必"123456"须是#!\/bin\/sh。<br \/>以#开头的行是注释，不会执行。<br \/>"123456"将您的自定义 mwan3 动作放在这里，他们将在 mwan3 的接口上启用。<br \/>在 "123456"netifd hotplug 接口事件时执行。<br \/><br \/>有三个主要的环境变量传递给这个脚"123456"本。<br \/><br \/>$ACTION “ifup”或“ifdown”<br \/>$INTERFACE 启动或停止的接口名"123456"（例如“wan”或“wwan”）<br \/>$DEVICE 启动或停止接口的物理设备名（例"123456"如“eth0”或“wwan0”）<br \/><br \/>"123456123456/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"View the content of \/etc\/protocols for protocol description"123456msgstr ""/"View the content of \/etc\/protocols for protocol description"123456msgstr "浏览 \/etc\/protocols 中的协议描述"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s are not found in \/etc\/config\/network"123456msgstr ""/"WARNING: Interface %s are not found in \/etc\/config\/network"123456msgstr "警告：\/etc\/config\/network 中未发现 %s 接口"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s has a duplicate metric %s configured"123456msgstr ""/"WARNING: Interface %s has a duplicate metric %s configured"123456msgstr "警告：接口 %s 与 %s 配置了相同的跃点数"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"hosts (%d)"123456msgstr ""/"hosts (%d)"123456msgstr "警告：接口 %s 的跟踪可靠性要求大于了跟踪主机(%d)"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Interface %s has no default route in the main routing table"123456msgstr ""/"WARNING: Interface %s has no default route in the main routing table"123456msgstr "警告：接口 %s 在主路由表中没有默认路由"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"WARNING: Policy %s has exceeding the maximum name of 15 characters"123456msgstr ""/"WARNING: Policy %s has exceeding the maximum name of 15 characters"123456msgstr "警告：策略 %s 的名称超过了 15 个字符"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"specified!"123456msgstr ""/"specified!"123456msgstr "警告：规则 %s 指定了端口却没有配置或配置了不正确的协议，请重新指定协议"/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/"Waiting for command to complete..."123456msgstr ""/"Waiting for command to complete..."123456msgstr "等待命令完成..."/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
sed -i 's/123456/\n/g' feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp
mv feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po.tmp feeds/luci/applications/luci-app-mwan3/po/zh-cn/mwan3.po

#luci-app-upnp
cat feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po |sed ':label;N;s/\n/123456/;b label' >feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/msgstr "UPnP"/msgstr "端口转发"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/IGDv2"123456msgstr ""/IGDv2"123456msgstr "用IGDv1代替IGDv2设备广播"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/IGDv1 mode"123456msgstr ""/IGDv1 mode"123456msgstr "启用IGDv1模式"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
sed -i 's/123456/\n/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp
mv feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po.tmp feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po

#zzz-default-settings
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/services/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/\/etc\/shadow/d' package/lean/default-settings/files/zzz-default-settings
echo "sed -i '/helloworld/d' /etc/opkg/distfeeds.conf" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/eth0/eth2 eth3 eth4 eth5/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/eth1/eth0/g' /etc/config/network" >>package/lean/default-settings/files/zzz-default-settings
echo "sed -i 's/22/5423/g' /etc/config/dropbear" >>package/lean/default-settings/files/zzz-default-settings
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
echo "echo '这个cake列队规则使用HTB作为过滤器，使用fq_codel作为叶列队规则。 这个cake规则将不同的文件分为不同的“层次”优先级。 该脚本需要将该cake选为列队规则。 请参阅：http://www.bufferbloat.net/projects/codel/wiki/Cake获取更多信息。' >/usr/lib/sqm/layer_cake.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '这个cake列队规则使用HTB作为过滤器，使用fq_codel作为叶列队规则。 它不会比这更简单，换句话说，它真的是“小菜一碟”。 该脚本需要将cake选为列队规则。 请参阅：http://www.bufferbloat.net/projects/codel/wiki/Cake获取更多信息' >/usr/lib/sqm/piece_of_cake.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '使用fq_codel列队规则在每个列队上进行三层优先级的带宽控制。（默认）' >/usr/lib/sqm/simple.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '最简单的配置：使用带有HTB过滤器的列队规则来进行速率限制。' >/usr/lib/sqm/simplest.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo "echo '最简单的配置（TBF）：使用带有TBF过滤器的列队规则来进行速率限制。在某些架构上，TBF可能会比HTB提供更好的性能。' >/usr/lib/sqm/simplest_tbf.qos.help" >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /opt/docker/overlay2/2a0733a9b5557ab8d1672e91cb70dca7c8a70bcc2132eb77d3404a891e070a9f/diff/root/.ssh/known_hosts >>package/lean/default-settings/files/zzz-default-settings
echo rm -rf /opt/docker/overlay2/2a0733a9b5557ab8d1672e91cb70dca7c8a70bcc2132eb77d3404a891e070a9f/merged/root/.ssh/known_hosts >>package/lean/default-settings/files/zzz-default-settings
echo exit 0 >>package/lean/default-settings/files/zzz-default-settings

#luci-app-vsftpd
sed -i '/NAS/d' feeds/luci/applications/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/model/cbi/vsftpd/item.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-vsftpd/luasrc/model/cbi/vsftpd/users.lua
sed -i 's/msgid "NAS"//g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "网络存储"//g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/msgstr "FTP 服务器"/msgstr "FTP设置"/g' feeds/luci/applications/luci-app-vsftpd/po/zh-cn/vsftpd.po

#luci-app-Turboacc
sed -i 's/Turbo ACC 网络加速/网络加速/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

#luci-app-vlmcsd
sed -i 's/KMS 服务器/微软激活/g' feeds/luci/applications/luci-app-vlmcsd/po/zh-cn/vlmcsd.po

#luci-app-nft
sed -i 's/NFS 管理/NFS管理/g' feeds/luci/applications/luci-app-nfs/po/zh-cn/nfs.po
sed -i '/NAS/d' feeds/luci/applications/luci-app-nfs/luasrc/controller/nfs.lua
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-nfs/luasrc/controller/nfs.lua

#luci-app-SQM QOS
sed -i '/创建日志文件/d' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po
sed -i 's/sqm.log."/sqm.log."\nmsgstr "创建日志"/g' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po
sed -i 's/日志等级。/日志等级/g' feeds/luci/applications/luci-app-sqm/po/zh-cn/sqm.po

#rc.local
sed -i '$i\mkdir \/tmp\/sdb1\nmount --bind \/mnt\/sdb1 \/tmp/sdb1\nhdparm -S 60 /dev/sdb\nifconfig eth0 192.168.0.2 netmask 255.255.255.0 broadcast 192.168.0.255\niptables -I forwarding_rule -d 192.168.0.1 -j ACCEPT\niptables -t nat -I postrouting_rule -d 192.168.0.1 -j MASQUERADE\n' package/base-files/files/etc/rc.local

#luci-app-unblockmusic
sed -i 's/解锁网易云灰色歌曲/网易解锁/g' feeds/luci/applications/luci-app-unblockmusic/po/zh-cn/unblockmusic.po

#luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git 
mv luci-app-dockerman/applications/luci-app-dockerman feeds/luci/applications/luci-app-dockerman
rm -rf luci-app-dockerman
sed -i 's/+docker \\/#+docker \\/g' feeds/luci/applications/luci-app-dockerman/Makefile
sed -i 's/+dockerd \\/#+dockerd \\/g' feeds/luci/applications/luci-app-dockerman/Makefile
sed -i 's/存储卷/存储/g' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i 's/msgstr "Docker"/msgstr "容器"/g' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
echo '' >>feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
echo 'msgid "This page displays all containers that have been created on the connected docker host."' >>feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
echo 'msgstr "Docker容器页面"' >>feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
echo '' >>feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/docker client is connected./{n;s/""/"Docker客户端连接数据概述"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/image can be downloaded from the configured registry./{n;s/""/"从Registry下载镜像."/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Container (%s)/{n;s/""/"Docker-容器"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Container/{n;s/""/"Docker-容器"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Images/{n;s/""/"Docker-镜像"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Network/{n;s/""/"Docker-网络"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Networks/{n;s/""/"Docker-网络"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Overview/{n;s/""/"Docker-概览"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Docker - Volumes/{n;s/""/"Docker-存储"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/DockerMan is a simple docker manager client for LuCI/{n;s/""/"DockerMan的简易Docker管理器"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/"Error"/{n;s/""/"错误"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/"Fatal"/{n;s/""/"严重错误"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Images overview/{n;s/""/"镜像概览"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Import Image/{n;s/""/"导入镜像"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/It replaces the daemon registry mirrors with a new set of registry mirrors/{n;s/""/"更换仓库地址"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Networks overview/{n;s/""/"网络概览"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/with which a container can be created/{n;s/""/"镜像管理页面."/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/On this page, the selected container can be managed./{n;s/""/"容器管理页面."/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/connected docker host/{n;s/""/"网络管理页面."/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Volumes overview/{n;s/""/"存储概览"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po
sed -i '/Warning/{n;s/""/"警告"/g}' feeds/luci/applications/luci-app-dockerman/po/zh-cn/dockerman.po


#luci-app-udpxy
sed -i 's/udpxy"))/组播转发"))/g' feeds/luci/applications/luci-app-udpxy/luasrc/controller/udpxy.lua
sed -i 's/udpxy is a UDP-to-HTTP multicast traffic relay daemon, here you can configure the settings./UDPXY是UDP到HTTP的组播流量中继守护程序，您可以在此处配置设置。/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Respawn/刷新/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Bind IP\/Interface/绑定IP\/接口/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Source IP\/Interface/源IP\/接口/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer size/缓冲区大小/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer messages/缓冲区消息/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Buffer time/缓冲时间/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Nice increment/优先级增量/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua
sed -i 's/Multicast subscription renew/组播订阅续订/g' feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi/udpxy.lua

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
