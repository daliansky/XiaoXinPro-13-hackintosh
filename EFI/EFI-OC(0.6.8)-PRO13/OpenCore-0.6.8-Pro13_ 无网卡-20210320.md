OC-0.6.8开发版-无网卡-20210320
- OC 为 [0.6.8 开发版](https://github.com/acidanthera/OpenCorePkg/commit/f0046e45f197bb4760734fe08f0ffd7e9a526928)
- 更新 OC 主题文件 `Resources` ~[@03f5644](https://github.com/acidanthera/OcBinaryData/commit/03f56443f398022a26e3c2d253b9c2175b48a8ce)
- 更新 [小新pro13 电池热补丁 SSDT-BATS-PRO13.aml](https://github.com/daliansky/OC-little/commit/60beba80c67dbcb0f085d3597c31c2e9898c337d)
- 新增 安卓系统 USB 共享互联网驱动 [HoRNDIS.kext](https://github.com/jwise/HoRNDIS/issues/102#issuecomment-541237232) 
- 更新 [小新pro13 键盘映射(Command 与 Option 对调) SSDT-RMCF-PS2Map-LenovoPRO13.aml](https://github.com/daliansky/XiaoXinPro-13-hackintosh/wiki/%E9%94%AE%E7%9B%98)
- 删除 `NVMeFix.kext` 、`AirportItlwm.kext`
- 删除 `CPUFriend.kext`、`CPUFriendDataProvider.kext` 以及 `rps-control` ～[@issues/89](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/89) (若保留, 请参考一键脚本 定制 [CPUFriendDataProvider.kext](https://github.com/stevezhengshiqi/one-key-cpufriend/blob/main/README_CN.md))
-  `NormalizeHeaders` 设置为 `false`
- `ForceBooterSignature` 设置为 `false`
- `DisableIoMapper` 设置为 `false`
- `DisableRtcChecksum` 设置为 `false`
- `PowerTimeoutKernelPanic` 设置为 `false`
- `AuthRestart` 设置为 `false`
- `JumpstartHotPlug` 设置为 `false`
- `ResetTrafficClass` 设置为 `false`
- `DmgLoading` 设置为 `Signed`
- `SecureBootModel` 设置为 `Default` (若出现[引导问题](https://github.com/daliansky/XiaoXinPro-13-hackintosh/issues/95)，可尝试设置 `Disabled`)
- 默认设置 网卡 的 `aspm`：
  - `Pci(0x14,0x3)` 为 `Ax201`
  - `Pci(0x1C,0x0)` 为 `其他网卡` 
  - (若出现无法使用AX201网卡或使用AX201无法睡眠,可尝试屏蔽以上ASPM 设置)
- 三码为空 (`MacBookPro16,2`)
- 替换出现`花屏`注意以下两个地方：
  - `AAPL,ig-platform-id`： `0500A63E`
  - `device-id`： `A63E0000`
  -  替换EFI，建议以上设置跟之前用的保持一致

- ### 注意：
    **若修改机型**，OC / kexts 文件夹下的 USBMap.kext / Contents/Info.plist 也要改对应的机型
