# Dual booting Android and Windows seamlessly

## Prerequisites

- [Magisk](https://github.com/topjohnwu/Magisk/releases/latest)

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

- [TWRP/OFOX](../../../releases/recoveries)

- [NTFS Android Magisk Module](../../../releases/ntfsdroid)

- [UEFI](https://github.com/degdag/edk2-msm/releases/latest)

- [UEFI & Android Boot Flashing Script/App](../../../releases/dualboot)

- [Cygwin](https://www.cygwin.com/setup-x86_64.exe)

## Phone Setup

### Adding NTFS Support to android

- Install Magisk if you haven't already
- Install the NTFS Android magisk module through the Magisk manager

### Application Setup

- Install the APK provided
- Create a folder named "vayu-uefi-2.1.0-release" on your internal storage
- Copy all uefi images into that folder
- Open the app and allow any root access it wants

## PC part

### Boot recovery

- Reboot to the bootloader

- Run ```fastboot boot <recovery.img>``` (Substituting <recovery.img> with your chosen recovery)

### Transfer some files to the phone

- When the recovery has booted run ```adb shell mount.ntfs /dev/block/by-name/win /win```
- Run ```adb shell dd if=/dev/block/by-name/boot of=/win/boot.img```
- Run ```adb push switchtoandroid.bat /win/Users/<username>/Desktop/switchtoandroid.bat``` (Substituting <username> with the username on your windows partition)
  
### Phone Setup (Windows)
  
  - Run ```adb reboot bootloader```
  - Run ```fastboot boot <uefi.img>``` (Substituting <uefi.img> with the uefi image for your device)
  - When the phone has booted to windows install cygwin
  
### Booting to android
  
  - Run switchtoandroid.bat on the phone as **ADMINISTRATOR**

### Booting to windows
  
  - Run the app
  - Press "Quickboot to windows"
