<img align="right" src="https://github.com/wormstest/src_vayu_windows/blob/main/2Poco X3 Pro Windows.png" width="350" alt="Windows 11 Running On A Poco X3 Pro">


# Running Windows on the POCO X3 Pro

## Troubleshooting Issues


## Device can boot into android but not bootloader

### Prerequisites:

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

This is caused by partitions with volume names the bootloader cannot handle, to fix this:

- Boot to recovery

- Connect phone to PC

- Open cmd on PC

- Run ```adb shell```

- Run ```parted```

- Run ```print``` to list all partitions

- Look for partitions that have spaces in the names e.g "Basic Data Partition" and note their volume number

- Now run ```rm <vol number>``` e.g ```rm 36```


## BOUND_IMAGE_UNSUPPORTED BSOD on boot

### Prerequisites:

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

- [OLD UEFI image](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/releases/download/old_uefi/vayu_old_uefi.zip)

- [NEW UEFI image](http://github.com/degdag/edk2-msm/releases/latest)

- Boot to bootloader

- Connect phone to PC

- Open cmd on PC

- Run ```fastboot boot <old_uefi.img>```, being sure to replace ```<old_uefi.img>``` with the appropiate image

- After the phone boots into windows, reboot into bootloader again

- Run ```fastboot boot <new_uefi.img>```, being sure to replace ```<new_uefi.img>``` with the appropiate image


## Touchscreen doesnt work

- Turn display off and on


## Touchscreen touches are inaccurate/upside down

You have incorrectly configured the touch driver, to fix this:

- [Follow this part of the guide](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/guide/English/2-install-en.md#check-what-type-of-panel-you-have)
