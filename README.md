# XiaoXinPro-13-2019-hackintosh
Lenovo XiaoXin Pro 13 2019 Hackintosh
## 电脑配置
|规格 | 详细信息|
|:-: | :-:|
|电脑型号|联想小新pro13 笔记本电脑|
|操作系统|macOS Catalina 10.15 / macOS Mojave 10.14|
|处理器|英特尔 酷睿 i5 - 10210U / i7-10710U|
|内存|16GB板载无法更换|
|硬盘|已更换为 三星 970evo|
|显卡|Intel HD Graphics CFL CRB|（UHD620）
|显示器|13.3 英寸 IPS 2560x1600|
|声卡| Realtek ALC257|
|网卡|更换为 [DW1820A](https://blog.daliansky.net/DW1820A_BCM94350ZAE-driver-inserts-the-correct-posture.html)|

## 已知问题
- CPU为I7的电脑需要仿冒cpuid ：0x0806EC）即可正常安装 显卡暂无法驱动
- I5-10210U这个CPU中98%的机器可以正常安装黑苹果,而且只差声卡、触摸板、睡眠这些比较棘手的问题需要解决，正常使用已经没有问题，声音方面可以考虑使用外接蓝牙音箱暂时解决。但是有小部分机器安装好MAC系统替换该EFI会无限重启，目前这个还没找到解决办法，所以新购机的朋友可以先尝试安装，如果重启，可以考虑退换货在来尝试。

## 安装部分

- 安装教程
    - 后续补上（目前还没整理），可以暂时参考小兵博客上小新air13的安装教程：[[**黑果小兵的部落阁**] : 联想小新Air 13安装黑苹果兼macOS Mojave安装教程](https://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)
- 镜像下载
    - [[**黑果小兵的部落阁**] :【黑果小兵】原版镜像](https://blog.daliansky.net/categories/下载/镜像/)
- EFI下载
  - [Releases](https://github.com/daliansky/XiaoXinPro-13-2019-hackintosh/releases)
- 更新日志
## 注意
     
- 安装注意：小新由于触摸板暂时不能驱动，使用U盘安装osx 会占用仅仅一个USB接口,建议安装之前先买个usb拓展,用于插入鼠标,来进行安装步骤选项设定
     （原因不明）      
- 目前该电脑只有CPU为I5的配置可以正常安装，CPU为I7的电脑需要仿冒cpuid ：0x0806EC），也希望有兴趣的朋友加入我们一起研究
- 该EFI目录中有CLOVER引导方式，也有OC的引导方式，目前两种方法都可以使用，但是OC引导方式，需要自己添加win系统的引导，具体方法：[添加引导](EFI/Document/OC-引导多系统@OC-xlivans.md)
## 正常工作
- 显卡
- 电源
- 无线（已更换为DW1820A)
- 蓝牙
- 显示器亮度调节
- USB定制（采用ACPI方式，为使用OC做准备）
- 其它 ACPI 补丁修复采用 hotpatch 方式，文件位于 /CLOVER/ACPI/patched

## 不正常工作
- 声卡
- 触摸板
- 睡眠
## 哪些可以工作更好
- 开启 [HIDPI](https://github.com/xzhih/one-key-hidpi) 来提升系统UI质量

## QQ群
- 小新pro黑苹果    946132482
