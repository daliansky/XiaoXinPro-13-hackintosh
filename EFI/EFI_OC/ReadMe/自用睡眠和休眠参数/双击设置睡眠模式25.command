#!/bin/sh
#
function start()
{
#
echo "";
cat << XXX
(一) AC交流电源和电池电源
(1) 设置powernap=0（禁止电能小憩）
(2) 设置proximitywake=0（关闭被同一网络下的相同 iCloud 设备唤醒。如:iPhone）
(3) 设置tcpkeepalive=0 (禁用合盖时保持网络连接)

(二) AC交流电源：【禁止休眠】
(1) 设置hibernatemode=0 
(2) 设置autopoweroff=0
(3) 设置standby=0

(三) 电池电源：【允许休眠】
(1) 设置hibernatemode=25 
(2) 设置autopoweroff=1
(3) 设置standby=1
(4) 设置highstandbythreshold=30 (电池电量阀值%)
(5) 设置standbydelayhigh=120 (当电池电量高于阀值时，合盖后内存保留的秒数)
(6) 设置standbydelaylow=120 (当电池电量低于阀值时，合盖后内存保留的秒数)

(四) 恢复休眠文件:/private/var/vm/sleepimage

附1:查看所有电源参数:pmset -g custom
附2:恢复电源参数初始值:sudo pmset restoredefaults

XXX
read -p "按回车键键执行" logo
case $logo in
#
*)  
##AC交流电源和电池电源
sudo pmset -a powernap 0 
sudo pmset -a proximitywake 0    
sudo pmset -a tcpkeepalive 0
##AC交流电源
sudo pmset -c hibernatemode 0   
sudo pmset -c autopoweroff 0
sudo pmset -c standby 0
##电池电源 
sudo pmset -b hibernatemode 25
sudo pmset -b autopoweroff 1
sudo pmset -b standby 1
sudo pmset -b highstandbythreshold  30
sudo pmset -b standbydelayhigh 120
sudo pmset -b standbydelaylow 120
sudo rm -rf /private/var/vm/sleepimage

echo "执行完毕......";
exit 0
;;
esac
}
#
start
#
