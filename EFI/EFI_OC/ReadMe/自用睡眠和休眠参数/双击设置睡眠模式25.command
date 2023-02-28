#!/bin/sh
#
function start()
{
#
echo "";
cat << XXX
(一) 删除之前创建的休眠文件夹
(二) 恢复默认的电源参数
(三) 交流电源和电池电源：
 (1) 设置proximitywake=0【禁止同一网络下的相同 iCloud 设备唤醒】
 (2) 设置powernap=0【禁止电能小憩】
 (3) 设置ttyskeepawake=0【禁止远程用户正在活动时防止Mac进入睡眠】
 (4) 设置tcpkeepalive=0【禁止合盖时保持网络连接】
 (5) 设置womp=0【禁止网络远程唤醒】
(四) 电池电源：【允许休眠】
 (1) 设置hibernatemode=25
 (2) 设置standby=1
 (3) 设置autopoweroff=1
(五) 交流电源：【禁止休眠】
 (1) 设置hibernatemode=0
 (2) 设置standby=0
 (3) 设置autopoweroff=0

XXX
read -p "按回车键执行" logo
case $logo in
#
*)
##删除之前创建的休眠文件夹
sudo rm -rf /private/var/vm/sleepimage
##恢复默认的电源参数
sudo pmset restoredefaults
##交流电源和电池电源
sudo pmset -a proximitywake 0
sudo pmset -a powernap 0
sudo pmset -a ttyskeepawake 0
sudo pmset -a tcpkeepalive 0
sudo pmset -a womp 0
##电池电源
sudo pmset -b hibernatemode 25
sudo pmset -b standby 1
sudo pmset -b autopoweroff 1
##交流电源
sudo pmset -c hibernatemode 0
sudo pmset -c standby 0
sudo pmset -c autopoweroff 0
echo "执行完毕......";
exit 0
;;
esac
}
#
start
#
