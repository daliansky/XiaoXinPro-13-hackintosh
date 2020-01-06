## XiaoXinPro-13-2019-hackintosh EFI Changelog
- 01-06-2020  
  #### CLOVER
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