#!/bin/sh
#
function start()
{
#
echo "";
cat << XXX
AC交流电源和电池电源：【禁止休眠】
(1) 设置hibernatemode=0 
(2) 设置autopoweroff=0
(3) 设置standby=0
(4) 设置powernap=0（禁止电能小憩）
(5) 设置proximitywake=0（关闭被同一网络下的相同 iCloud 设备唤醒。如:iPhone）
(6) 设置tcpkeepalive=0 (禁用合盖时保持网络连接)
(7) 删除休眠文件:/private/var/vm/sleepimage
(8) 创建休眠文件夹，防止再次自动生成休眠文件
XXX
read -p "按回车键键执行" logo
case $logo in
#
*)  sudo pmset -a hibernatemode 0
    sudo pmset -a autopoweroff 0
    sudo pmset -a standby 0
    sudo pmset -a powernap 0 
    sudo pmset -a proximitywake 0    
    sudo pmset -a tcpkeepalive 0
    sudo rm -rf /private/var/vm/sleepimage
    sudo mkdir -p /var/vm/sleepimage
    echo "执行完毕......";
    exit 0
;;
esac
}
#
start
#
