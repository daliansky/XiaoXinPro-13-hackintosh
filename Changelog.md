## XiaoXinPro-13-2019-hackintosh EFI Changelog

- 02-28-2020
  #### OC(@宪武大佬)
   - 更新OC，为下次更新OC声音(指OC的一个功能)准备；
   - 修复掉声卡问题；
   - 只显示引导菜单，其它菜单内容隐藏；
   - i5/i7合二为一；
   - USB供电(快充？需要手机设备支持)
   - Fn+Q 唤醒
   - [具体详情](/EFI/EFI-OC-PRO13-AOAC/EFI-OC.md)

- 02-18-2020
  #### OC(@宪武大佬)
    - 触摸板驱动(`02-17`)；
    - 关闭触摸板方法 `FN+F6` 
    - 唤醒方法:`电源键唤醒`
    - 优化：`SSDT-I2CxConf.aml`做了较大修改，添加了保护，适用于所有机器

- 02-17-2020
  #### Clover(@小兵大佬)
    - 添加触摸板驱动及相关信息；

- 01-29-2020
  #### OC
    - 更新OC；
    - ALC声卡；
- 01-16-2020
  #### Clover
    - 去除-v；
    - 修改因删除主题后开机显示白色背景+logo：改为开机显示为黑色+白色logo；
    - 修改开机第一阶段logo大小；
    - 显示【关于本机 - 内存 】

- 01-08-2020
  #### OC （宪武大佬更新）
    - 删除VirtualSmc.efi以及config中列表;
    - config新增-OSInfo;
    - config新增-SignalAppleOS;
    - config新增-SupportsCsm;
    - config新增-WriteFlash;
    - config新增2-AppleSmcIo;
    - config新增2-AuthRestart;
    - 更新DW1820A蓝牙、Wi-Fi驱动;
    - 删除SSDT-Q0CQ0D-Energy.aml;
    - SSDT-S1-S3-disable.aml撤回SSDT-S3-disable.aml;
    - 删除CPUFriend.kext、CPUFriendDataProvider.kext;
    - 添加NVMeFix.kext;
    - 更新版本OpenCore.efi版本(https://github.com/n-d-k/OpenCorePkg);
    - 删除RU.efi;
    - 添加grubwithsetup_var.efi;
    - 日常更新Lilu.kext、VirtualSMC.kext等驱动
    - 删除modGRUBShell.efi
    - config-i5.plist为i5机型使用;
    - config-i7.plist为i7机型使用，与i5区别在于DVMT;
    - config-识别i7.plist为i7机型使用，在config-i7.plist基础上补充完整信息，取消自动补充参数，识别i7（关于本机）

- 01-06-2020  
  #### CLOVER（小兵大佬更新）
  - 添加对 `DW1820A` 注入 `pci-aspm-default`(请根据 `DW1820A` 的 `PCI`地址不同更改，请勿直接套搬，参考 [教程](https://blog.daliansky.net/DW1820A_BCM94350ZAE-driver-inserts-the-correct-posture.html) )
  - `去掉`启动参数 `-alcbeta` (与 `AppleALC` 有关)
  - 暂时`注释`声卡 `PCI` 注入(暂时使用万能声卡 `VoodooHDA` 驱动)

- 01-01-2020  
  - `OC` 暂时不支持引导安装，只驱动集显；
  - `CLOVER` 可以安装引导 和 驱动集显；
  - `CLOVER`、`OC` 内置 `DW1820A` 蓝牙、Wi-Fi 驱动;
  - `Clover`、`OC` 理论上通用 `i5`、`i7` (`i7-10710U` 仿冒 `i5 - 10210U` 的 `CPUID`: `0x0806EC`);
  - `Clover`、`OC` 都内置 `DW1820A` `Wi-Fi`、`蓝牙`驱动；
  - `Clover`、`OC` 仅添加 `10.15.* `的 `DVMT` 补丁；
  - `Clover` 已支持外接显示设备；
  - `App Store`、视频软件(`腾讯视频`)出现`鼠标卡断问题`的暂时解决方法：
   App Store 左上角，`偏好设置`，`视频自动播放`，去除打勾☑️。
  #### 未解决：
  - 0、某个机型不能驱动集显，未找到原因；
  - 1、如果使用 `10.15.x` 以下版本系统，可能出现进不了系统，自行添加对应的DVMT；
  - 2、触摸板、睡眠、声卡(`暂时用万能驱动，手动切换Speaker，不支持内置麦克风`)；
  - 3、`OC`  `i7-10710U` 目前 识别为 `i5`，不影响使用；
  - 4、`OC` 不支持外接显示设备；
  - 5、`OC` 不支持引导安装。