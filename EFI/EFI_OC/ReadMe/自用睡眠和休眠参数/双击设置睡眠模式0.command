#!/bin/sh
#
function start()
{
#
echo "";
cat << XXX
(一) 恢复默认的电源参数
(二) 交流电源和电池电源：【禁止休眠】
 (1) 设置hibernatemode=0 
 (2) 设置standby=0
 (3) 设置autopoweroff=0
 (4) 设置womp=0（禁用【网络远程唤醒】）
 (5) 设置proximitywake=0（禁用【同一网络下的相同 iCloud 设备唤醒】）
 (6) 设置powernap=0（禁止【电能小憩】）
 (7) 设置ttyskeepawake=0（禁用【远程用户正在活动时防止Mac进入睡眠】）
 (8) 设置tcpkeepalive=0（禁用【合盖时保持网络连接】）
 (9) 删除休眠文件:/private/var/vm/sleepimage；创建休眠文件夹，防止再次自动生成休眠文件

XXX
read -p "按回车键执行" logo
case $logo in
#
*)
##恢复默认的电源参数
sudo pmset restoredefaults
##交流电源和电池电源
sudo pmset -a hibernatemode 0
sudo pmset -a standby 0  
sudo pmset -a autopoweroff 0
sudo pmset -a womp 0
sudo pmset -a proximitywake 0
sudo pmset -a powernap 0
sudo pmset -a ttyskeepawake 0
sudo pmset -a tcpkeepalive 0
##删除休眠文件
sudo rm -rf /private/var/vm/sleepimage
sudo mkdir -p /private/var/vm/sleepimage
echo "执行完毕......";
exit 0
;;
esac
}
#
start
#
