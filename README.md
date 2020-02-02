# XiaoXinPro-13-2019-hackintosh
Lenovo XiaoXin Pro 13 2019 Hackintosh
## 电脑配置
|规格 | 详细信息|
|:-: | :-:|
|电脑型号|联想小新pro13 笔记本电脑|
|操作系统|macOS Catalina 10.15.x / ~~macOS Mojave 10.14~~|
|处理器|英特尔 酷睿 i5 - 10210U / i7-10710U|
|内存|16GB板载无法更换|
|硬盘| 混搭,以下有说明 |
|显卡|Intel HD Graphics CFL CRB|（UHD620）
|显示器|13.3 英寸 IPS 2560x1600|
|声卡| Realtek ALC257|
|网卡| 建议更换为 [DW1820A](https://blog.daliansky.net/DW1820A_BCM94350ZAE-driver-inserts-the-correct-posture.html)|

## 已知问题
- `部分机型无法驱动，具体原因不明`
- CPU为`i7-10710U`的需要仿冒cpuid ：`0x0806EC`、`0x0806EB` 或其他），才能正常安装并驱动集显, [已仿冒CPUID的EFI](https://github.com/daliansky/XiaoXinPro-13-2019-hackintosh/releases);
- 目前 `声卡MIC`、`触摸板`、~~`睡眠`~~ 这些比较棘手的问题需要解决，正常使用已经没有问题。

## 安装部分
混搭硬盘
- SAMSUNG开头的是三星（三星PM981a：`SAMSUNG MZVLB512HBJQ-000L2`)
- UMIS开头的是忆联（忆联AH530）
- INTEL开头的是因特尔（INTEL 760P)
- Hynix开头的是西数（Hynix PC601)

如果你的机子硬盘是三星固态硬盘(`三星PM981a`)，  
为了更好使用 `macOS` ，强烈建议替换其他的，切勿在群里讨论，具体请百度 

- ### 安装教程

    - `Fn+F2`进入`BIOS`,
    - 1.先查看 `Information`：`Secure Boot` 是否为 `Disabled`;
    - 2.如果 `Secure Boot` 是 `Enabled`，选择左边到 `Security`： 设置 `Secure Boot` 为 `Disabled`;
    - 5.`Fn+F10` 保存设置

- ### 安装后操作

    - 安装好系统，先用 `安装的EFI` 进入系统
    - 然后找到`终端`执行一下：
    - `sudo spctl --master-disable`
    - 再执行`重建缓存`: 
    - `sudo kextcache -i /`
    - 替换 `EFI` 或 `config.plist`
    - 重启

- OC 与 Clover之间切换：
   - 例如Clover 转 OC
   - 先设置OC启动
   - 第一次重启，选择`reset nvram`，这时之前的启动设置会清除了
   - 再次设置对应的`EFI`启动即可

    - <del>可以暂时参考小兵博客上小新air13的安装教程：[[**黑果小兵的部落阁**] : 联想小新Air 13安装黑苹果兼macOS Mojave安装教程](https://blog.daliansky.net/Lenovo-Xiaoxin-Air-13-macOS-Mojave-installation-tutorial.html)</del>
- 镜像下载
    - [[**黑果小兵的部落阁**] :【黑果小兵】原版镜像](https://blog.daliansky.net/categories/下载/镜像/)
- EFI下载
  - [Releases](https://github.com/daliansky/XiaoXinPro-13-2019-hackintosh/releases)
- 更新日志  
  - [Changelog](Changelog.md)
## 注意
     
- 安装注意：`小新由于触摸板暂时不能驱动，使用U盘安装osx 会占用仅仅一个USB接口`,
  建议安装之前先买个usb拓展,用于插入鼠标,来进行安装步骤选项设定
- 该EFI目录中有CLOVER引导方式，也有OC的引导方式，
  目前两种方法都可以使用，但是OC引导方式，需要自己添加win系统的引导，
  具体方法：[添加引导](EFI/Document/OC-引导多系统@OC-xlivans.md)
## 正常工作
- 显卡
- 电源
- 蓝牙
- 显示器亮度调节
- 无线（原网卡在macOS 下只能使用蓝牙，建议更换为 `DW1820A`)
- USB定制（采用 `ACPI` 方式，为使用 `OC` 做准备）
- 声卡
- 其它 `ACPI` 补丁修复采用 `hotpatch` 方式，文件位于 `/CLOVER/ACPI/patched`

## 不正常工作
- ~~睡眠~~
- 触摸板
- 声卡MIC

## 哪些可以工作更好
- 开启 [HIDPI](https://github.com/xzhih/one-key-hidpi) 来提升系统UI质量, `可能会出现花(黑)屏现象`

## QQ群
- 小新pro黑苹果    946132482

### 为了更好地理解你遇到的问题，强烈建议：
- 贴`小新pro13的硬件信息`(如鲁大师截图)
- `详细描述操作过程`
- 提供`日志`或`完整截图`
