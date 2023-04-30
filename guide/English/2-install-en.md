<img align="right" src="https://github.com/wormstest/src_vayu_windows/blob/main/2Poco X3 Pro Windows.png" width="350" alt="Windows 11 Running On A Poco X3 Pro">


# Running Windows on the POCO X3 Pro

## Installation

## Installing Windows
> You will need to have MTP disabled in Mount

### Prerequisites

- [Windows on ARM image (Windows 11 is recommended)](https://uupdump.net/)
- [UEFI image](https://github.com/degdag/edk2-msm/releases/latest)
- [DriverUpdater](https://github.com/WOA-Project/DriverUpdater/releases/latest)
- [Drivers](https://github.com/degdag/Vayu-Drivers/releases/latest)

#### Execute the msc script

```cmd
adb shell msc.sh
```

  

### Assign letters to disks
  

#### Start the Windows disk manager

> Once the X3 Pro is detected as a disk

```cmd
diskpart
```


### Assign `X` to Windows volume

#### Select the Windows volume of the phone
> Use `list volume` to find it, it's the one named "WINVAYU"

```diskpart
select volume <number>
```

#### Assign the letter X
```diskpart
assign letter=x
```

### Assign `Y` to esp volume

#### Select the ESP volume of the phone
> Use `list volume` to find it, it's the one named "ESPVAYU"

```diskpart
select volume <number>
```

#### Assign the letter Y

```diskpart
assign letter=y
```

#### Exit diskpart
```diskpart
exit
```

  
  

### Install

> Replace `<path/to/install.wim>` with the actual install.wim path,

> `install.wim` is located in sources folder inside your ISO
> You can get it either by mounting or extracting it

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

### Check what type of panel you have

> Open cmd

```cmd
adb shell cat /proc/cmdline
```
> Look for `msm_drm.dsi_display0` almost at the bottom

> If your device is `Tianma` `msm_drm.dsi_display0` will be `dsi_j20s_36_02_0a_video_display`

> If your device is `Huaxing` `msm_drm.dsi_display0` will be `dsi_j20s_42_02_0b_video_display`, if it is, go to the drivers folder `Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/` and delete `j20s_novatek_ts_fw01.bin`, finally rename `j20s_novatek_ts_fw02.bin` to `j20s_novatek_ts_fw01.bin`

### Install Drivers

> Replace `<vayudriversfolder>` with the location of the drivers folder

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

  

### Create Windows bootloader files for the EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

  
  

## Allow unsigned drivers

> If you don't do this you'll get a BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set "{default}" testsigning on
```

## Boot into Windows

### Move the `<uefi.img>` file to the device

```cmd
adb push <uefi.img> /sdcard
```

#### if you have a microSD card use this

```cmd
adb push <uefi.img> /external_sd
```


### Make a backup of your existing boot image
> You need to do it just once

> Put it to the microSD card if possible


### Flash the uefi image from TWRP
Navigate to the `uefi.img` file and flash it into boot

## Boot back into Android
> Use your backup boot image from TWRP

## Finished!
