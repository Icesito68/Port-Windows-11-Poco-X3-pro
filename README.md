# Running Windows 11 On The Poco X3 Pro

<img align="right" src="https://github.com/halal-beef/res/blob/main/vayuwindows.png" height="550">

# ⚠️ **Warning**

We're not responsible for bricked devices, missing recovery partitions, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because you forgot to boot back in to android for the alarm.

This project is in an early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get. This is a delicate process, do it under your own risk and follow all the steps carefully.

**IF YOU AREN'T COMFORTABLE MODDING YOUR PHONE OR ITS PARTITION TABLE OR YOU ARE PARANOID OF BRICKING YOUR DEVICE CLICK AWAY NOW!!! YOU HAVE BEEN WARNED, YOU ARE ON YOUR OWN IF YOU BRICK YOUR DEVICE!!! AGAIN! YOU HAVE BEEN WARNED!!!**

## Project Status

Beta, we're porting drivers from Xiaomi Pad 5 and Surface Duo in hope that it will work on the Poco X3 Pro.

## Hardware status
### Features
- [x] USB ```Powered hub needed```
- [x] UEFI buttons
- [x] UFS
- [x] Touchscreen
- [x] Display
- [X] Brightness
- [x] WiFi
- [x] Battery status
- [ ] Charging ```In progress```
- [x] GPU
- [ ] Audio ```Only if it is by usb or bluetooth```
- [x] Bluetooth
- [ ] Camera ```It is almost impossible in this project```
- [ ] LTE ```Nearly working, Windows detects it but does not allow access to the mobile network```

### Sensors
- [x] Accelerometer
- [X] Magnetometer
- [x] Gyroscope 
- [x] GPS
- [X] Proximity
- [X] Light sensor
- [ ] Fingerprint


## Installation instructions

<details> 

<summary><strong>Required Tools/Files</strong></summary>

Pc:
- [Windows on ARM image](https://uupdump.net/) (Windows 11 is Recommended)

- [Mass Storage Mode Script](https://www.mediafire.com/file/bvibrl34nawl2wg/msc.sh/file) ```This file belongs to gus33000```

- [platform-tools](https://developer.android.com/studio/releases/platform-tools).

- [program](https://github.com/WOA-Project/DriverUpdater/releases/) to install the [drivers](https://github.com/halal-beef/Vayu-Drivers-1/releases/latest)

Phone:
- UEFI image for Poco X3 Pro, found in the releases page

- [TWRP](https://twrp.me/xiaomi/xiaomipocox3pro.html) for Poco X3 Pro.

- [Magisk](https://github.com/topjohnwu/Magisk)

- [Termux](https://f-droid.org/en/packages/com.termux/)

- [Magisk module](https://github.com/evdenis/disk) for disk partitioning tools in Termux.

- [parted](https://drive.google.com/file/d/1e8kDC2fylkvJuHimlViHOuHyk8xljr6p/view) for partitioning.

 </details> 

## Installation:

1- [Resize the sda table](guide/1-resize-en.md)

2- [Partition](guide/2-partition-en.md)

3- [Install windows](guide/3-install-en.md)

## Other Commands:

[If you just want to update the drivers follow these commands](guide/update-en.md)

[If you want to uninstall Windows follow these commands](guide/delete-en.md)


## For people that followed the old guide or people who broke their partition table:
0 - [Transition from the old guide](guide/0-transition-en.md)

## Contributors

<details> 

<summary><b><strong>Credits</strong></b></summary>

- [Icesito68](https://github.com/Icesito68) ```Made windows partitioning commands and made this repo```

- [Map220v](https://github.com/map220v) ```Provided help and vayu UEFI uses nabu UFS patches and ACPI and also ported mi pad 5 drivers```

- [Degdag](https://github.com/degdag) ```Improves UEFI and ported drivers```

- [Halal-Beef](https://github.com/halal-beef) ```Built EDK2 and modified it enough to boot windows, also ported drivers```
  
- [Renegade Project](https://github.com/edk2-porting) ```Making the core of this project```

- [gus33000](https://github.com/gus33000) ```Providing help, also made base install guide and made all of the original drivers```

- [Renegade Project Discord members](https://discord.gg/XXBWfag) ```Provided Help```
 
- [ArturoGC06](https://github.com/ArturoGC06) ```Helped in the beginning of the project to the translations and gave windows data```

- [SebastianZSXS](https://github.com/SebastianZSXS) ```Helped patch windows pe```

- [MollySophia](https://github.com/MollySophia) ```Helped fix battery status```

- [haouarihk](https://github.com/haouarihk) ```Great suggestions on the command notes, also made the new guide```

</details>  

