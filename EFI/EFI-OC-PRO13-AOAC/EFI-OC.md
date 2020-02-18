# EFI-OC-PRO13-AOAC

## 适用

- 联想小新PRO13

## OpenCore版本

- OpenCore0.5.6  2020年2月17日
- OC源代码地址：
  - OpenCore：https://github.com/acidanthera/OpenCorePkg
  - AppleSupport：https://github.com/acidanthera/AppleSupportPkg
- @Bat.bat 8小时自动更新编译版本：
  - OpenCore：https://github.com/williambj1/OpenCore-Factory/releases
  - AppleSupport：https://github.com/athlonreg/AppleSupportPkg-Factory/releases

## BIOS一些设置

- **BIOS** 版本：`CLCN32WW` 

- **Configuration** 

  - **Inter（R）Hyper -Threading Technology**	=	`Enabled` 【要求 `AppleXcpmExtraMsrs` =  `true` 】
  
  - **HotKey Mode**	=	`Disabled` 【建议】
  - **Always On USB**	=	`Disabled` 【建议】
  - **OneKeyBattery**	=	`Disabled` 【建议】
  - **Ultra Quiet Mode（UQM）**	=	`Disabled` 【建议】
  - **Human Presence Detection（HPD）**	=	`Disabled` 【建议】
  
- **Security** 
  
  - 所有子项目 `Disabled` 
  
- **Windows10** 下修正下列高级【隐藏】选项
  
  - `DVMT`
    
    - 区域：`SaSetup` 
    - offset：`0x107` 
    - `01`  修改成 `02` 
    
  - `CFG Lock` 
    
    - 区域：`CpuSetup` 
    - offset：`0x3E` 
    - `01`  修改成 `00` 
    
    修正以上高级选项的方法参见 **@PS@Donald** 的教程——《修改DVMT Pre-Allocated数值方法》
    
    感谢 **@PS@Donald** 、**@qds** 
    

## 使用方法

- 第一次使用本 EFI ，菜单界面执行一次 `Reset NVRAM` 

- 进入系统后重建缓存，然后重启

  **注意1**：如果BIOS未解锁`DVMT`、`CFG Lock` ，请使用 ***config-DVMT_CFG.plist*** 

  **注意2**：EFI 包含了 DW1820A 相关驱动，如不需要请自行删除驱动、修改驱动列表

## 关闭触摸板方法

​	`FN+F6` 

## 唤醒方法

- 电源键唤醒

## 已知问题

- 内置MIC不工作

## 参考内容

- Kexts：https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Kexts.md
- OC-little：https://github.com/daliansky/OC-little 