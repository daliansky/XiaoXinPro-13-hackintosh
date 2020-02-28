# EFI-OC-PRO13-AOAC

## 适用

- 联想小新PRO13

## OpenCore版本

- OpenCore0.5.6  **2020年2月28日** 
- OC源代码地址：
  - OpenCore：https://github.com/acidanthera/OpenCorePkg
  - AppleSupport：https://github.com/acidanthera/AppleSupportPkg
- @Bat.bat 8小时自动更新编译版本：
  - OpenCore：https://github.com/williambj1/OpenCore-Factory/releases
  - AppleSupport：https://github.com/athlonreg/AppleSupportPkg-Factory/releases

## BIOS一些设置

- **BIOS** 版本：`CLCN32WW` 

- **一些设置** ：参考《BIOS设置图示》


## 使用方法

- 配置config文件

  - 如果已经解锁BIOS的 `DVMT`，删除以下内容
  
    - `DeviceProperties\Add\PciRoot(0x0)/Pci(0x2,0x0)\framebuffer-fbmem` 
    - `DeviceProperties\Add\PciRoot(0x0)/Pci(0x2,0x0)\framebuffer-stolenmem` 
    - `Kernel\Patch\DVMTpatch` 
  
  - 如果已经解锁BIOS的 `CFG Lock` ，改变以下设置
  
    - `Kernel\Quirks\AppleXcpmCfgLock` = `false`  
    - `UEFI\Quirks\IgnoreInvalidFlexRatio` = `false`  
  
  - i5机器删除以下内容
  
    - `Kernel\Emulate\Cpuid1Data` 
    - `Kernel\Emulate\Cpuid1Mask` 
    - `Kernel\Patch\DVMTpatch` 
  
  - 本 EFI 包含了 DW1820A 相关驱动，如不需要请修改驱动列表，禁止或者删除以下项目
  
    - `Kernel\Add\` 下的 `10` 、`11`、`12`、`13` 
  
    **注：** 解锁 `DVMT`、 `CFG Lock` 的方法请参考@PS@Donald 的《修改DVMT Pre-Allocated数值方法》
- 使用 EFI 的方法
  - 引导界面显示MAC、Windows引导部分，其它内容被隐藏。按下空格键可弹出其它菜单。
  - 第一次使用本 EFI 时，按下空格键后选定 `Reset NVRAM` 、 `CleanNvram.efi` 并执行。
  - 进入系统后重建缓存，然后重启。

## 关闭触摸板方法

​	`FN+F6` 

## 唤醒方法

- **电源键** 唤醒；如果 **电源键** 无法唤醒，继续按下组合键：**Fn+Q** 

## 已知问题

- 内置MIC不工作

## 参考内容

- Kexts：https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Kexts.md
- OC-little：https://github.com/daliansky/OC-little ，特别是其中的《关于AOAC》部分
