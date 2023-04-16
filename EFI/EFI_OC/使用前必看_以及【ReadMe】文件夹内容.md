# 版本：
- ## 此次更新基于 群里 宪武(2023-03-07、2023-03-14、2023-04-11)

- 2023-04-11
  - ACPI修补电池 `建议维修`: `SSDT-BAT_BST-fix.aml`

- 2023-03-14
  - 1 `boot-args` 添加 `hbfx-patch-pci=XHC`（重置 `NVRAM` 生效）。
  - 2 用 `ACPI`方法替换kext定制USB端口：
    - a.添加 `SSDT-ACPI-USB-XHUB-PRO13.aml`。自行添加补丁以及配置 `config` 文件。
    - b.删除 `USBMap.kext`。自行配置 `config` 文件。
  - 3 是否需要 `6D补丁` 自行决定。


# 注意⚠️

- config.plist 默认机型为 MacBookPro16,2
- OC/Kexts/USBMap.kext/Contents/Info.plist 中的 model 为 MacBookPro16,2
- MLB、SystemSerialNumber、SystemUUID 为空，请根据 机型填写对应的 三码等信息 再更新使用
- 若使用多系统：注意 Entries 中自行替换引导 Win 10 Path 地址 或 设置 BlessOverride 对应的值
- --
- 请看截图【信息1、2、3】
- --
- 请查阅【ReadMe】文件夹内容再使用


