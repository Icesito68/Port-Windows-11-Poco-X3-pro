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
- [ ] Touchscreen ```Driver completed, but when installing the driver windows infinitely reboots until the driver is removed, i'm gonna debug to find out whats the root cause of the problem```
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

<summary><strong>All Files Needed</strong></summary>
 
- You will need the [Windows on ARM image](https://uupdump.net/) (Windows 11 is Recommended)

- [UEFI image for Poco X3 Pro](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/Uefi)

- [TWRP](https://twrp.me/xiaomi/xiaomipocox3pro.html) for Poco X3 Pro.

- [Magisk](https://github.com/topjohnwu/Magisk)

- [Termux](https://f-droid.org/en/packages/com.termux/)

- [Magisk module](https://github.com/evdenis/disk) for disk partitioning tools in Termux.

- On PC you need the partition [table validating script](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/Utils/validator.sh)

- On PC you will need the [Mass Storage Mode Script](https://www.mediafire.com/file/bvibrl34nawl2wg/msc.sh/file) ```This file belongs to gus33000```

- On PC you will need [platform-tools](https://developer.android.com/studio/releases/platform-tools).

- On PC you will also need a [program](https://github.com/WOA-Project/DriverUpdater/releases/) to install the [drivers](https://github.com/halal-beef/Vayu-Drivers-1/releases/tag/degdag-is-a-legend)

- We will need [parted](https://drive.google.com/file/d/1e8kDC2fylkvJuHimlViHOuHyk8xljr6p/view) for partitioning.
  
 </details> 

### Commands

**Make sure to install TWRP, Magisk And The Magisk Module Before Proceeding.**

[Do these commands first](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/termux)

[Do these commands after doing the first](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/twrp/Install%20Windows)

[If you just want to update the drivers follow these commands](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/twrp/Update%20Drivers)

[If you want to uninstall Windows follow these commands](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/twrp/Delete%20Windows)

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

- [haouarihk](https://github.com/haouarihk) ```Great suggestions on the command notes```

</details>  

