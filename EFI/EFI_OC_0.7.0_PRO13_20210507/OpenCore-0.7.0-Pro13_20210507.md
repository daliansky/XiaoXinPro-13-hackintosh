OC-0.7.0-无网卡驱动-20210507
- OC 为 [0.7.0 ～@90e3cca](https://github.com/acidanthera/OpenCorePkg/commit/90e3ccadd36f2bf69f52ed6a6afab39d3972574d)
- 更新 OC 文件 `Drivers/HfsPlus.efi` ~[@95b7d4c](https://github.com/acidanthera/OcBinaryData/commit/95b7d4ccb9fea6af48641fc1f5bd4b57f747b235)
- 更新驱动有：
  - AppleALC.kext
  - Lilu.kext
  - SMCProcessor.kext
  - SMCBatteryManager.kext
  - VirtualSMC.kext
  - VoodooI2C.kext
  - VoodooI2CHID.kext
  - VoodooPS2Controller.kext
  - WhateverGreen.kext
- 尝试解决电池模式下音频无声问题 [@issues/63](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/63)
- 设置启动参数：`brcmfx-country=#a`
- 禁用Ax201[Pci(0x14,0x3)]的 `aspm`
- 三码为空 (`MacBookPro16,2`)，[该机型无法正常机型图片的说明](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/109)
- 替换出现`花屏`注意以下两个地方：花屏ID检测来自 @[/issues/102](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/102)
  - `AAPL,ig-platform-id`： `0400A53E`
  - `device-id`： `A53E0004`
  -  替换EFI，建议以上设置跟之前用的保持一致

- ### 注意：
    **若修改机型**，OC / kexts 文件夹下的 USBMap.kext / Contents/Info.plist 也要改对应的机型
