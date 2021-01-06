## XiaoXinPro-13-hackintosh EFI Changelog

- # 01-06-2021
  - ## 基于 EFI-OC062-PRO13-1820A
  - ### 更新：
    - OpenCore([releases 0.6.5](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.5))
    - 新增 [NVMeFix.kext](https://github.com/acidanthera/NVMeFix)
    - 新增 [RestrictEvents.kext](https://github.com/acidanthera/RestrictEvents)
    - 其他常用 kexts 更新
    - 默认为 `-v` 模式，OC 默认 `GUI` 设置
    - 设置 自定义SMBIOS(如 Windows下 不会被注入BIOS 信息，对某个软件激活有用)
    - 三码为空，需要自行填写，默认机型为 MacBookPro15,4，修改机型必须改 USBMap.kext 下的机型
    - 无网卡驱动，白果网卡可以直接使用; Intel网卡 需要自行下载放置并在 config.plist 中设置启用
    - 声卡ID：11
    - AAPL,ig-platform-id： `0500A63E`
    - device-id： `A63E0000` 
    - 删除 VoodooInput.kext
   - ### 注意：改变机型，OC / kexts 文件夹下的 USBMap.kext / Contents/Info.plist 也要改对应的机型

- # 12-13-2020
  - ## 基于 EFI-OC062-PRO13-1820A
  - ### 更新：
    - OpenCore([releases 0.6.4](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.4))
    - 新增 [RestrictEvents.kext](https://github.com/acidanthera/RestrictEvents)
    - 其他常用 kexts 更新最新 releases 版本
    - 设置引导 GUI 界面
    - 声卡ID：11
    - 无内置网卡驱动
    - AAPL,ig-platform-id： 0500A63E 
    - device-id： A63E0000 
   - ### 注意：改变机型，`OC / kexts` 文件夹下的 `USBMap.kext / Contents/Info.plist` 也要改对应的机型


- # 11-20-2020
  - ## 基于 EFI-OC062-PRO13-1820A
    - 更新：`SSDT-PCI0.LPCB-Wake-AOAC.aml` by 宪武
    - 作用：简化电源按键唤醒方法  
    - 详情：[OC-little / AOAC 唤醒方法更新](https://github.com/daliansky/OC-little/commit/5cc76943338e8014ffc6c1c40465ee13ea5a84a0)  

- # 11-04-2020
  - ## 基于 EFI-OC062-PRO13-1820A
    - 更新 OpenCore([releases 0.6.3](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.3))
    - 更新 **kexts** 为当前最新 **releases** 版本

- # 10-06-2020
  - ## EFI-OC062-PRO13-1820A
    - 更新 OpenCore([releases 0.6.2](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.2))
    - 更新 [BrightnessKeys.kext](https://github.com/acidanthera/BrightnessKeys)：由 [VoodooPS2Controller.kext](https://github.com/acidanthera/VoodooPS2) 将亮度快捷键部分分离出独立驱动BrightnessKeys.kext并由它提供方法`Notify（^^^GFX0. ***，0x86`） 和`Notify （^^^GFX0. ***，0x87）`， 传统的亮度快捷键补丁不再需要。如果新的驱动无效请参考本章内容指定2个按键映射到F14， F15，以实现快捷键调节亮度功能。
    - `SSDT-PNLF-ACPI.aml` 改名为 `SSDT-PNLF-CFL.aml`: 更新亮度调节热补丁
    - `ResetHwSig` 设置 `false`
    - `SecureBootModel` 设置 `Default`
    - 更新 `触摸板驱动`： `VoodooI2C.kext`、`VoodooI2CHID.kext`
    - 删除 `SMCSuperIO.kext`
    - 删除 `SSDT-CB-01_XHC.aml`、`SSDT-HPET-disable.aml`
    - 删除 `Intel网卡驱动` 更新为 `DW1820A驱动` 以及 `pci-aspm-default`
    - 删除 `Block`：`com.apple.driver.AppleIntelLpssI2C`、`com.apple.driver.AppleIntelLpssI2CController`
    
  - ## 注意
    - 默认 `OC/config.plist` 中 `SystemProductName` 是`MacBookAir9,1`, 如果改变 `OC/config.plist` 中 `SystemProductName`，对应的也需要修改 `OC/Kexts/USBMap.kext` 的 `Root/IOKitPersonalities/XHCI-XHCI/model`，这两个地方需要一致。By 宪武

- # 09-17-2020
  - ## EFI-OC061-PRO13-Intel
      ### 更新 Intel网卡驱动：
    - IntelBluetoothFirmware.kext ([ 1.1.2 releases 版](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/releases/tag/1.1.2))
    - itlwm.kext(***AirportItlwm.kext***) ([ v1.1.0 版](https://github.com/OpenIntelWireless/itlwm/releases/tag/v1.1.0))

- # 09-15-2020
  - ## EFI-OC061-PRO13-Intel
    - 更新 OC ([ 0.6.1 releases 版](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.1))
    - Lilu.kext ([ 1.4.7 releases 版](https://github.com/acidanthera/Lilu/releases/tag/1.4.7))
    - WhateverGreen.kext ([ 1.4.2 releases 版](https://github.com/acidanthera/WhateverGreen/releases/tag/1.4.2))
    - VirtualSMC.kext、SMC * .kext ([ 1.1.6 releases 版](https://github.com/acidanthera/VirtualSMC/releases/tag/1.1.6))
    - AppleALC.kext ([ 1.5.2 releases 版](https://github.com/acidanthera/AppleALC/releases/tag/1.5.2))
    - itlwm.kext ([ v1.1.0-alpha 版](https://github.com/OpenIntelWireless/itlwm/releases/tag/v1.1.0-alpha))
    - VoodooPS2.kext ([ 2.1.7 自编译版](https://github.com/acidanthera/VoodooPS2/commit/d5f05415ac087ed4411b51ce73ac19c021bbaf48))
    - `itlwx.kext` 合并为 `itlwm.kext`
    - 删除 `SSDT-BKeyQ38Q39-LenovoPRO13.aml` 以及 `config.plist` 中对应的重命名: 由 VoodooPS2.kext 识别 亮度 `➕`、`➖`

- # 09-04-2020
  - ## 此OC 来自 宪武的 EFI-OC061-PRO13-Intel
    - `SSDT-PNLF-CFL.aml` 改名为  `SSDT-PNLF-ACPI.aml`： 不再推荐使用ACPI的方式实现亮度调节，而是使用VoodooPS2进行映射，新版voodoops2不再需要任何处理就可以调节核显亮度，原生亮度调节，详情看[@acidanthera/VoodooPS2/pull/22](https://github.com/acidanthera/VoodooPS2/pull/22)
    - 删除(屏蔽)macOS内置触摸板驱动：`AppleIntelLpssI2C` 、`AppleIntelLpssI2CController`
    - 对 macOS内置网络(以太网)驱动做处理：`IONetworkingFamily`
    - `FuzzyMatch` 设置 `true`
    - `JumpstartHotPlug` 设置 `false`
    - OC 日常更新(编译版)
    - kexts 日常更新

- # 08-26-2020
  - ## 此OC 来自 宪武的 EFI-OC061-PRO13-Intel
    - 更新 [编译版 OC 2020-08-26](https://github.com/williambj1/OpenCore-Factory/releases/tag/2020-08-26)
    - 添加 `SSDT-HPET-disable.aml`: 禁止HPET( 6代以后不需要HPET，对声音时而好时而坏有作用 )
    - 设置 [ResetHwSig](https://github.com/acidanthera/OpenCorePkg/blob/ad2f37be12ee9e2c26dddf5320baa7f183ec40ee/Docs/Differences/Differences.tex#L1198-L1206) 为 true
    - 设置 [ReleaseUsbOwnership](https://github.com/acidanthera/OpenCorePkg/blob/ad2f37be12ee9e2c26dddf5320baa7f183ec40ee/Docs/Differences/Differences.tex#L5834-L5841) 为 true（该设置 在之前 EFI 似乎会导致 `引导崩溃` by 宪武）
      

- # 08-24-2020
  - ## 此OC 来自 宪武的 EFI-OC061-PRO13-Intel
      - ~~此版本OC 可能会在睡眠后无法连接热点：是RTC唤醒才重新启用了Wi-Fi，这个补丁把RTC唤醒禁用了~~
    ### 故修改如下：
      - ~~把 `RTC补丁` 设置 禁用 即：`config.plist` 中 `923行` 设置 `false`~~
    ### 下面正式描述 此OC 更新
    - 更新 `自编译 OC`
    - 更新 `自编译 kexts`
    - 更新 `10代触摸板驱动`
    - 更新优化 `SSDT-BATS-PRO13.aml`
    - 添加 `_DSM to XDSM` 补丁来实现屏蔽独显：带独显的机器多个 `ACPI`：`SSDT-9-NvdTable`(可能是其他 `SSDT-*-NvdTable`)，这个文件和DSDT都存在独显路径的 `DSM`，2个 `DSM` 有冲突，可能导致屏蔽独显失败，简单的方法是禁止 `SSDT-9-NvdTable` 的 `DSM`
    - 去除 `FakePCIID.kext` 、`FakePCIID_Intel_HDMI_Audio.kext`
    - 内置 [Intel网卡驱动](https://github.com/OpenIntelWireless)，并 [设置ASPM工作模式](https://github.com/daliansky/OC-little/tree/master/01-%E5%85%B3%E4%BA%8EAOAC/01-5-%E8%AE%BE%E7%BD%AEASPM%E5%B7%A5%E4%BD%9C%E6%A8%A1%E5%BC%8F)（`PciRoot(0x0)/Pci(0x1C,0x0)` 和 `PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)` 两处）

- # 08-23-2020
  - ## 此OC 基于宪武的OC(`EFI-OC06-PRO13-1820A_by_xianwu(08-14-2020)`)
  - ### 修改如下：

    - 去除 `-v`
    - 添加 `通用型 Windows 引导配置`
    - 去除 `DW系列网卡驱动`
    - 添加 `AX201/AX200 驱动`，包括[蓝牙驱动](https://github.com/OpenIntelWireless/IntelBluetoothFirmware/releases/tag/1.1.2)、[Wi-Fi驱动](https://github.com/OpenIntelWireless/itlwm/releases/tag/v1.0.0)，此OC 使用的是 OpenIntelWireless 开源驱动
    - 请自行下载 OpenIntelWireless 驱动Wi-Fi 对应的客户端 [HeliPort](https://github.com/OpenIntelWireless/HeliPort/releases)
    - 更加详细的使用请移步 [这里](https://github.com/daliansky/XiaoXinPro-13-hackintosh/wiki/AX201-and-AX200)


- # 08-14-2020
  - ## EFI-OC06-PRO13-1820A_by_xianwu(`@宪武`)
    
    - 更新(`10代`)触摸板驱动: (`08-13-2020自编译版本` [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C))
    - 更新 `VirtualSMC` 以及对应的 `SSDT-BATS.aml`：[@Fix and improvement for supplement info #35](https://github.com/acidanthera/VirtualSMC/pull/35)
    - **注意** `config.plist`：1、不含`DVMT补丁`；2、`AppleCpuPmCfgLock`、`AppleXcpmCfgLock` 为 `false`
  
  - ## 删除 `低版本EFI`： 
    - `EFI-OC-PRO13(end-of-15.6)`
    - `EFI-OC-PRO13-MOD(end-of-15.6)`

- # 08-04-2020
  - ## EFI-OC06-PRO13-1820A_by_xianwu(`@宪武`)

    - 更新 [0.6.0 OC正式版 08-03-2020](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.0)
    - 驱动 `kexts` 日常更新(`08-03-2020 releases`)
    - 添加 `DW1820A` 驱动 以及设置对应的地区 `brcmfx-country=#a`
    - 新加 `SSDT-BATS.aml`：修正电源显示：电池 `型号信息`部分为 `0`（ `VirtualSMC.kext和它的其他kext增加了电池信息驱动，，需要SSDT-BATS.aml补丁支持` )
    - `SSDT-OCBAT1-lenovoPRO13.aml`中 `ACDT` 改为 `OCLT`，统一命名@[OC-little/08-电池补丁](https://github.com/daliansky/OC-little/tree/master/08-%E7%94%B5%E6%B1%A0%E8%A1%A5%E4%B8%81)
    - `config.plist`：1、不含`DVMT补丁`；2、`AppleCpuPmCfgLock`、`AppleXcpmCfgLock` 为 `false`

- # 07-30-2020
  - ## EFI-OC06-PRO13_by_xianwu(@宪武29号OC版本)

    - 把 `SSDT-EC.aml` 从 `SSDT-OCPublic-Merge.aml` 分离出来
    - 驱动 `kexts` 日常更新
    - `OpenCore 0.60` 相关更新
    - 删除 `RTCMemoryFixup.kext`
    - 新加 `SMCDellSensors.kext`
    - 声卡ID 从 `DeviceProperties / Add / PciRoot(0x0)/Pci(0x1f,0x3)` 中 删除
    - 声卡ID 在 `NVRAM / Add / 7C436110-AB2A-4BBB-A880-FE41995C9F82 / boot-args` 中设置：`alcid=100`
    - 放行 `仿冒Emulate`: `Cpuid1Data、Cpuid1Mask`
    - `config.plist`：不含`DVMT补丁`，`AppleCpuPmCfgLock`、`AppleXcpmCfgLock` 为 `false`
    - 该版本 `OC` 解决 `i7` 或 `部分特殊i5` 在使用 `docker` 中 遇到 `filesystem layer verification failed for digest` 问题，涉及 `仿冒CPUID` : CPUID feature may not be reported to macOS release kernels when emulating the CPUID
  causing crashes of select programs relying on Hypervisor.framework like Docker，详情看 [@/acidanthera/bugtracker/issues/1035](https://github.com/acidanthera/bugtracker/issues/1035)

- # 07-29-2020
  - ## EFI_OC_0.6.0_for_xiaoxinPro13_by_daliansky(黑果小兵自用版)
     OC更新_By_ @daliansky

    - 直装`bs beta3`
    - 带`gui`
    - 内置`DW1820A`驱动，
    - 适用于`10.15、11.0`
    - `config.plist`：不含`DVMT补丁`，`AppleCpuPmCfgLock`、`AppleXcpmCfgLock`设置为`true`

   - ## EFI-OC06-PRO13_by_xianwu(@宪武)
     - 更新 `DVMT 补丁`到 `10.15.6`；
     - 修复部分新机未设置`CFG` 相关设置导致无法安装
     - 添加启动参数：`vsmcgen=1`

   - ## EFI-OC-PRO13(end-of-15.6)(@宪武)
     - 更新 `DVMT 补丁`到 `10.15.6`；
     - 修复部分新机未设置`CFG` 相关设置导致无法安装

   - ## EFI-CLOVER-PRO13(end-of-15.6)(@daliansky)
     - 基于@daliansky自用(EFI-CLOVER-PRO13)
     - 更新 `DVMT 补丁`到 `10.15.6`；
     - 新加`config-installer-recovery.plist`

   - ## EFI-OC-PRO13-MOD(end-of-15.6)
     - 更新 `DVMT 补丁`到 `10.15.6`；
     - 修复部分新机未设置`CFG` 相关设置导致无法安装

- # 07-27-2020
  - ## OC
    - 更新 DVMT 补丁到10.15.6
    - 修复部分新机未设置CFG 相关设置导致无法安装

- # 07-26-2020
  - ## OC
  - ## OC更新_By_ @daliansky
    - 直装`bs beta3`
    - 带`gui`
    - 内置`DW1820A`驱动，
    - 适用于`10.15、11.0`
    - `config.plist`：不含`DVMT补丁`，`AppleCpuPmCfgLock`、`AppleXcpmCfgLock`设置为`true`

  - ## Clover
    - 基于@daliansky自用(EFI-CLOVER-PRO13)
    - 更新 DVMT 补丁到10.15.6
    - 新加config-installer-recovery.plist

- # 07-17-2020
  - ### CLOVER_7-17-2020小兵自用版，支持BS.zip(@daliansky):
    - 更新`DVMT补丁`至`10.15.6`等

  - ### EFI-OC06-PRO13(@宪武):
    - 更新 `SMC*.kext` 感应器驱动支持 11 (`Big Sur`)
    - 更新 `RTCMemoryFixup.kext`

  - ###  附加 `EFI-OC06-PRO13`更新：
    - AX200
    - DW1820A
    - i7或部分i5 (内置DVMT补丁支持到15.6+仿冒CPUID+DW1820A+声卡id11)

- # 07-13-2020

  - `OC` 和 `BOOT` 这两个文件夹 来自 `宪武`发群里的 `EFI-OC06-PRO13for11.zip`

  - `AX200` 文件夹：集成 AX200 网卡驱动，包括 Wi-Fi和 蓝牙 驱动，手动开启【`以太网`】才行使用；

  - `DW1820A` 文件夹：基成 DW1820A 网卡驱动，具体细节看文件夹里面的说明

  - ### EFI-OC06-PRO13for11.zip(`@宪武`):
    - 支持 [Big Sur(11) 安装](https://blog.daliansky.net/WeChat-First-macOS-Big-Sur-Beta-2-Installer-for-OpenCore-and-PE-dual-EFI-partition-original-image.html)
    - `SMCBatteryManager.kext`现在无法驱动 `MAC11`，暂时改为 `ACPIBatteryManager.kext`
    - `SSDT-OCPublic-Merge.aml`去掉了`RTC部分`，而小新PRO仍然用`SSDT-RTC_Y-AWAC_N.aml`为`RTC`打补丁(`RTC很特殊，依赖于机器本身，可能不同的机器RTC形式不同`)

    - 强烈建议把11安装到新分区
    - 老的MAC系统下载APP，安装时选择新分区，安装过程重启4-5次
    - 先用磁盘工具给MAC11分区，然后安装下载的APP，安装过程提示安装位置，选择刚才的MAC11

    -  ### BIOS 设置：EFI-OC-PRO13使用说明.pdf

- # 06-03-2020
  - ## CLover
  - 添加 引导参数: `rtcfx_exclude=80-AB,B0-B4`, 以及其驱动 `RTCMemoryFixup.kext` 详情看[CMOS相关](https://github.com/daliansky/OC-little/tree/master/15-CMOS%E7%9B%B8%E5%85%B3)
  - 删除 `SSDT-XSPI.aml`
  - 删除 `NVMeFix.kext`
  - 删除 `VoodooInput.kext`
  - 更新 `kexts` 到最新版本
  - 更新 `DVMT` 补丁匹配系统说明 for (@daliansky)
  - ## 注意
  - 以上部分同步 `OC`  for (@宪武)，但保留 `DVMT`补丁 和 `DW1820A` 网卡相关驱动

 - # 06-02-2020
    - ## OC(`@宪武`):
    - 添加 `boot-args`: `rtcfx_exclude=80-AB,B0-B4`, 以及对应的驱动 `RTCMemoryFixup.kext`
    - 屏蔽仿冒 `Emulate`，即屏蔽 `Cpuid1Data`、`Cpuid1Mask`
    - 删除 `SSDT-XSPI.aml`
    - 删除 `NVMeFix.kext`
    - 删除 `DVMT` 补丁: 1. `Kernel -> Patch` 的两个 `DVMT` 补丁, 2. `DeviceProperties` 下的 `framebuffer-fbmem`、`framebuffer-stolenmem`
    - 删除 `DW1820A` 相关驱动：`AirportBrcmFixup.kext、BrcmBluetoothInjector.kext、BrcmFirmwareData.kext、BrcmPatchRAM3.kext`
    - 更新：`OC 0.5.9`， `kexts` 日常更新(`PS：触摸板驱动自行更新`) 

    - ### 注意：
    - 1.因删除了 `DVMT` 相关补丁，可能需要 `CLCN32WW.DPC10.rar` 或使用 `解锁DVMT工具` 解除`DVMT`限制，刷`BIOS`有风险，后果自负
    - 2.`i7或部分i5机型`需要去除屏蔽仿冒 `Emulate`，即 `Cpuid1Data`、`Cpuid1Mask`

    - 更多细节请看 《EFI-OC-PRO13使用说明.pdf》或 《[OC-little](https://github.com/daliansky/OC-little)》

 - # 05-04-2020: 
   ### OC(`@宪武`)
    - `SSDT-OCPublic-Merge.aml` 合并 `SSDT-EC.aml`、`SSDT-RTC0.aml`、`SSDT-USBX.aml`、`SSDT-ALS0.aml`、`SSDT-MCHC.aml`
    - `AllowNvramReset` 设置 `true`，允许 `reset Nvram`
    - 外置引用 `VoodooInput` 改为内置 `VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext`
    - 添加 `NVMeFix.kext`
    - 日常更新 `kexts`
    - 更新 [OC releases v0.5.8](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.5.8)

   ### MOD OC(`基于OC`)
    - 去除 `-v`
    - 禁用`Entries`, 改为通用设置，双系统引导(引导Windows)：`\EFI\Microsoft\Boot\bootmgfw.efi`
    - 此版本比原版多了 `ACPI-> Quirks-> EnableForAll,Booter-> Quirks-> EnableForAll,Misc->boot->SkipCustomEntryCheck` 三个选项
    - 安装系统或进Recovery模式可以选：`config-安装系统或进Recovery模式.plist`
    - 更新 [OC releases N-d-k-0.5.8](https://github.com/n-d-k/OpenCorePkg/releases/tag/N-d-k-0.5.8)
    - 更多请看： [n-d-k / OpenCorePkg](https://github.com/n-d-k/OpenCorePkg) 或 [教程](http://bbs.pcbeta.com/viewthread-1838814-1-1.html)

   ### CLOVER(`移植OC更新`)
    - 去除 `-v`
    - 日常更新 `kexts`
    - 添加 `NVMeFix.kext`
    - 设置机型为 `MacBookAir9,1`
    - 去除`CPU，Type`: `0x0705`,已自动识别 `i7`
    - 移除 `config_Install.plist`,下面说明 `CLOVER 安装(12-4-2019) 或 Recovery 模式`
    - `SSDT-OCPublic-Merge.aml` 合并 `SSDT-EC.aml`、`SSDT-RTC0.aml`、`SSDT-USBX.aml`、`SSDT-ALS0.aml`、`SSDT-MCHC.aml`
    - 更新 [Clover_r5115](https://github.com/CloverHackyColor/CloverBootloader/releases/tag/5115)

   ### CLOVER 安装(`12-4-2019`) 或 Recovery 模式
   安装请使用：`Pro13_I7_Installer_DW1820A_and_UMIS_12-4-2019_by_黑果小兵.zip`
   - `安装系统` 或 `进Reocery模式` 请使用Clover下的：`config_Installer.plist`，[安装教程](https://blog.daliansky.net/Lenovo-Xiaoxin-PRO-13-2019-and-macOS-Catalina-Installation-Tutorial.html)
   - 安装系统后进系统请`一定要执行` `重建缓存`：软件或 命令： `sudo kextcache -i /`


- # 04-26-2020:  
  ### OC / Clover
  - 加回 `SSDT-GPRW.aml`
  - 禁用 `SSDT-USBX.aml`
  - `SSDT-PCI.LPCB-Wake-AOAC.aml` 重命名为 `SSDT-PCI0.LPCB-Wake-AOAC.aml`
  - 默认内置 `DW1820A` 网卡驱动，根据网卡类型去或留
  - 默认声卡 `layout-id` 为 `100`，根据需要可设置 `11`, `99`
  - 去除 `CPUFriend.kext`、`CPUFriendDataProvider.kext`
  - 机型由 `MacBookPro15,4` 更新为 `MacBookAir9,1`，需要重新设置三码，不然关于本机还是显示 `MacBook Pro`
  - `kexts` 日常驱动更新
  - `OC`更新为`0.5.8`
  - `Clover` 版本无更新

- # 04-18-2020:  
  ### OC / Clover 关于声卡ID 使用情况
  - `layout-id` 暂时改为 `11` 正常；
  - 目前使用 `99` `可能` 出现耳机无人声;
  - 有特殊用途( `mic 暂不可用，使用外接麦克风，但又想设置内置扬声器`)：`100`; 
  - - 使用 `100` 下默认:
  - - 输出：1.内置扬声器，2.耳机(即使没接入耳机)；
  - - 输入：1.内置麦克风，2.线路输入(即使没接入外接设备)；



- # 04-08-2020-OC(@宪武):
  - `AppleXcpmCfgLock`、`AppleXcpmExtraMsrs`设置`false`
  - 添加`VoodooInput.kext`驱动
  - 移除`disable-external-gpu`属性
  - 更新并重命名`SSDT-PCIWake-AOAC.aml`为`SSDT-PCI.LPCB-Wake-AOAC.aml`
  - `SSDT-RMCF-Fn-disable.aml`重命名为`SSDT-RMCF-PS2Map-LenovoPRO13.aml`
  - 更新`SSDT-RTC_Y-AWAC_N.aml`
  - 更新：`OC(0.5.8)`、`kexts`驱动日常更新

- # 03-24-2020  
  Clover/OC （@宪武）
  - 优化触控板驱动增加延迟、减少误触。使用`AOAC-PRW`全局更名（[详见OC-little](https://github.com/daliansky/OC-little/tree/master/01-关于AOAC/01-5-AOAC-PRW全局更名)）
  - ### ACPI-Add下
  - 更新`SSDT-OCI2C-TPXX-lenovoPRO13.aml`补丁
  - 删除`SSDT-GPRW.aml`补丁

  - ### ACPI-Patch下
  - 删除`GPRW to XPRW` 替换成`_PRW to XPRW`: 
  - `Find: 5F505257`
  - `Replace: 58505257`

- # 03-18-2020  
  - Clover/OC:
  - 触摸板：优化三指和四肢

- # 03-11-2020(@宪武)

  - OC 分支更新
  - 更新OC版本；
  - 更新DVMT支持15.4;
  - 屏蔽*S键，Fn+C/P亮度调节，开机键亮屏

- # 03-08-2020(@daliansky)

  - CLOVER 分支更新
  - 声卡：新增`layout-id:100`，手动切换输入与输出节点，以解决无法驱动`Intel SST` DMIC内麦所带来的一系列问题
  - 新增：`DVMT` for 10.15.4 patch

  

- # 02-28-2020
  
  #### OC(@宪武大佬)
   - 更新OC，为下次更新OC声音(指OC的一个功能)准备；
   - 修复掉声卡问题；
   - 只显示引导菜单，其它菜单内容隐藏；
   - i5/i7合二为一；
   - USB供电(快充？需要手机设备支持)
   - Fn+Q 唤醒
  - [具体详情](/EFI/EFI-OC-PRO13-AOAC/EFI-OC.md)
  
- # 02-18-2020
  #### OC(@宪武大佬)
    - 触摸板驱动(`02-17`)；
    - 关闭触摸板方法 `FN+F6` 
    - 唤醒方法:`电源键唤醒`
    - 优化：`SSDT-I2CxConf.aml`做了较大修改，添加了保护，适用于所有机器

- # 02-17-2020
  #### Clover(@小兵大佬)
    - 添加触摸板驱动及相关信息；

- # 01-29-2020
  #### OC
    - 更新OC；
    - ALC声卡；
  
- # 01-16-2020
  #### Clover
    - 去除-v；
    - 修改因删除主题后开机显示白色背景+logo：改为开机显示为黑色+白色logo；
    - 修改开机第一阶段logo大小；
    - 显示【关于本机 - 内存 】

- # 01-08-2020
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

- # 01-06-2020  
  #### CLOVER(@daliansky)
  - 添加对 `DW1820A` 注入 `pci-aspm-default`(请根据 `DW1820A` 的 `PCI`地址不同更改，请勿直接套搬，参考 [教程](https://blog.daliansky.net/DW1820A_BCM94350ZAE-driver-inserts-the-correct-posture.html) )
  - `去掉`启动参数 `-alcbeta` (与 `AppleALC` 有关)
  - 暂时`注释`声卡 `PCI` 注入(暂时使用万能声卡 `VoodooHDA` 驱动)

- # 01-01-2020  
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