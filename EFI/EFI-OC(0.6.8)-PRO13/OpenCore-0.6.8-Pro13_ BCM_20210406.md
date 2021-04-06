OC-0.6.8-无网卡驱动-20210406
- OC 为 [0.6.8 releases](https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.8)
- 更新 OC 主题文件 `Resources` ~[@ccf3d0c](https://github.com/acidanthera/OcBinaryData/commit/ccf3d0c36784100293ccfb2865e10cd37f7a78ee)
- 更新驱动有：
  - Lilu.kext
  - AppleALC.kext
  - VirtualSMC.kext
  - SMCProcessor.kext
  - SMCBatteryManager.kext
  - WhateverGreen.kext
- 设置启动参数：`brcmfx-country=#a`
- 禁用Ax201[Pci(0x14,0x3)]的 `aspm`
- 三码为空 (`MacBookPro16,2`)
- 替换出现`花屏`注意以下两个地方：花屏ID检测来自 @[/issues/102](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/102)
  - `AAPL,ig-platform-id`： `0400A53E`
  - `device-id`： `A53E0004`
  -  替换EFI，建议以上设置跟之前用的保持一致

- ### 注意：
    **若修改机型**，OC / kexts 文件夹下的 USBMap.kext / Contents/Info.plist 也要改对应的机型
