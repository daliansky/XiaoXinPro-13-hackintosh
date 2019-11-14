## OC-引导多系统

#### 设置位置： `config\Misc\Entries` 

#### 设置启动项

-  `Comment` ：一个有意义的名称

-  `Enabled` ：允许开关

-  `Name` ：引导时显示的名称

-  `Path` ：被引导系统的绝对路径

  如1：引导移动硬盘的Windows系统（自带EFI，可引导）

  ```
  PciRoot(0x0)/Pci(0x14,0x0)/USB(0xE,0x0)/HD(1,GPT,FBAB0AB8-698F-11E9-8DC7-93AD5ED2C040,0x800,0x1A716B)/\EFI\BOOT\BOOTX64.EFI
  ```

  如2：引导其他分区的Windows系统

  ```
  PciRoot(0x0)/Pci(0x1D,0x0)/Pci(0x0,0x0)/NVMe(0x1,00-00-00-00-00-00-00-00)/HD(1,GPT,8763DD59-B7D6-4734-9B01-D7BCD42ECDDA,0x800,0x96000)/\EFI\Microsoft\Boot\bootmgfw.efi
  ```

##### 获取 `path` 的方法

- 终端确认启动分区的 `UUID` 

  终端输入: **diskutil list** ，确认启动分区硬盘标识符，如： **disk2s1** 。

  终端输入: **diskutil info disk2s1** 进一步确认启动分区的 `UUID` ，如：

  ```
  ......
  Disk / Partition UUID:     FBAB0AB8-698F-11E9-8DC7-93AD5ED2C040
  ......
  ```

- 获得完整的 `path` 

  - 安装 **NOOPT** 或者 **DEBUG** 版本的 `OpenCore` （BOOTx64.ef 和 OpenCore.efi）。
  - 设置下列选项，提取日志文件：EFI根目录\opencore-YYYY-MM-DD-HHMMSS.txt。
    -  `Misc\Debug\DisableWatchDog` = `true` 
    -  `Misc\Debug\Target` = `65` 
    -  `Misc\Security\ScanPolicy` = `0` 
  - 打开opencore-YYYY-MM-DD-HHMMSS.txt文件，搜索前文已经确认的启动分区的 `UUID` 。
  - 参考示例获得完整的 `path` 。
  
  建议：生成opencore-YYYY-MM-DD-HHMMSS.txt文件之后，恢复上述设置为原始值。

#### 备注：

Clover , Grub 等其他系统可以参照上述示例添加引导项目，达成以OC为主的多系统引导管理器。


