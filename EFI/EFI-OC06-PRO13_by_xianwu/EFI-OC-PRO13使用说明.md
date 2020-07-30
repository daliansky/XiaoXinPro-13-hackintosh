# EFI-OC-PRO13-AOAC

## 适用

- 联想小新 `2019 PRO13` 、 `2019 PRO13S` 、 `2020 PRO13` 

## OpenCore版本

- OpenCore **0.6.0**  **2020年7月28日** 
- OC源代码：https://github.com/acidanthera/OpenCorePkg

## OC及常用kexts下载地址

- @Bat.bat OC自动编译：https://github.com/williambj1/OpenCore-Factory/releases
- @Canvas综合下载：https://blog.tlhub.cn/categories/Kext/
- 常用Kexts：https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Kexts.md

## 参考内容

- OpenCore官方文档
- OC-little：https://github.com/daliansky/OC-little ，特别是其中的《关于AOAC》部分
- @Donald 的《修改DVMT Pre-Allocated数值方法》
- @OC-xlivans的《OC-引导多系统@OC-xlivans》
- @Dreamn的《睡眠自动关闭蓝牙WIFI》

## 使用说明

#### 设置BIOS

- **解锁**  `DVMT` 、`CFG` 【或***参考@Donald 《修改DVMT Pre-Allocated数值方法》***】
  - `DVMT` =64M；位置：Advanced -> System Agent -> Graphics Configura -> DVMT Pre-Allocated
  - `CFG` =disable；位置：Advanced -> Power Performanc -> CPU Power  Manage -> CPU Lock Configura
- **Security** 【**重要**】
  - `Intel Platform Trust Technology` = `Disable` 
  - `Intel SGX Control` = `Disable` 【**建议**】
  - `Secure Boot` = `Disable` 
- **其他** 【**根据需求**】

#### 配置config

- `PlatformInfo` 
  - 参考OC官方文件 `Sample.plist` 或者 `SampleCustom.plist` 配置机型数据
- `DeviceProperties` 
  - 根据自己的情况调整 `AAPL,ig-platform-id` 、`device-id` 
- `NVRAM\Add\7C436110-AB2A-4BBB-A880-FE41995C9F82\boot-args` 
  - 根据自己的情况调整 `alcid` ，如： `alcid=11` 、`alcid=18` 、`alcid=86` 、`alcid=99` 、 `alcid=100` 

#### 配置kexts

- `OC\Kexts` 不包括任何无线网卡、蓝牙驱动
  - 如果网卡是1820A的自行添加驱动和驱动列表。参考《config-3-BCM无线和蓝牙驱动列表》
  - 如果网卡是Intel系列，参阅：
    - 蓝牙：https://github.com/OpenIntelWireless/IntelBluetoothFirmware/releases
    - Wi-Fi：https://github.com/OpenIntelWireless/itlwm

#### 使用 EFI

- 引导界面会显示MAC、Windows引导和 Shutdown，其它内容被隐藏。按下空格键弹出其它菜单。
- 第一次使用本 EFI 时，按下空格键后执行 `CleanNvram` 、`NvramReset` 。待进入系统后重建缓存。

## 其他

- 关闭触摸板快捷键
  - 组合键： `FN+F6` 
- 唤醒方法
  - **电源键** 
- 已知问题
  - 内置MIC不工作

## 注意事项

- 请使用 ***Xcode***、***Propertree***、***PlistEdit Pro*** 等工具编辑config.plist。
- 如果你不了解 **OpenCore Configurator.app** 和 OC 版本之间的关系时，请不要使用它。不正确的操作方法会破坏 config 文件数据结构。但可以通过它获取机型数据。