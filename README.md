# XiaoXinPro-13-2019-hackintosh
Lenovo XiaoXin Pro 13 2019 Hackintosh
## 电脑配置
|规格 | 详细信息|
|:-: | :-:|
|电脑型号|联想小新pro13 笔记本电脑|
|操作系统|macOS Catalina 10.15 / macOS Mojave 10.14|
|处理器|英特尔 酷睿 i5 - 10510U / i7-10710U|
|内存|16GB板载无法更换|
|硬盘|已更换为 三星 970evo|
|显卡|Intel HD Graphics CFL CRB|
|显示器|13.3 英寸 IPS 2560x1600|
|声卡| Realtek ALC257|
|网卡|更换为 Dell DW1820A|

## 安装部分
- 安装教程
    - 后续补上（目前还没整理），可以暂时参考小兵博客上小新air13的安装教程：[[**黑果小兵的部落阁**] : 联想小新Air 13安装黑苹果兼macOS Mojave安装教程](https://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)
- 镜像下载
    - [[**黑果小兵的部落阁**] :【黑果小兵】原版镜像](https://blog.daliansky.net/categories/下载/镜像/)
- EFI下载
  - [Releases](https://github.com/daliansky/XiaoXinPro-13-2019-hackintosh/releases)
- 更新日志
## 注意
- 目前该电脑只有CPU为I5的配置可以正常安装，CPU为I7的电脑无法正常安装，也希望有兴趣的朋友加入我们一起研究
- 该EFI目录中有CLOVER引导方式，也有OC的引导方式，目前两种方法都可以使用，但是OC引导方式，需要自己添加win系统的引导，具体方法：[添加引导](EFI/Document/OC-引导多系统@OC-xlivans.md)
## 正常工作
- 显卡
- 电源
- 无线（已更换为DW1820A)
- 蓝牙
- 显示器亮度调节；亮度调节快捷键：f11/f12
- USB定制（采用ACPI方式，为使用OC做准备）
- 其它 ACPI 补丁修复采用 hotpatch 方式，文件位于 /CLOVER/ACPI/patched

## 不正常工作
- 声卡
- 触摸板
- 睡眠
## 哪些可以工作更好
- 开启 [HIDPI](HIDPI) 来提升系统UI质量

## QQ群
- 小新por 黑苹果    946132482
