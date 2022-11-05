# Running Windows 11 On The Poco X3 Pro

<img align="right" src="https://github.com/halal-beef/res/blob/main/vayuwindows.png" height="550">

> **Warning**

We're not responsible for bricked devices, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because you forgot to boot back in to android for the alarm.

This project is in an early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get. This is a delicate process, do it under your own risk and follow all the steps carefully.

## Project Status

Beta, we're porting drivers from Xiaomi Pad 5 and Surface Duo in hope that it will work on the Poco X3 Pro.

## Hardware status
- [x] USB ```Powered hub needed```
- [x] UFS
- [x] Display
- [x] UEFI buttons
- [ ] Touchscreen
- [x] WiFi
- [x] Bluetooth
- [ ] Battery
- [ ] Charge ```It only charge sometimes```
- [ ] Virtualization ```It's impossible for this to work```
- [x] GPU
- [ ] LTE ```Nearly Working, Windows detects it but does not allow access to the mobile network```
- [ ] Audio ```Only if it is by usb or bluetooth, in theory with more acpi edits audio can work driverless```
- [ ] Location
- [x] Sensors ```not all sensors work```
- [ ] Camera ```It is almost impossible in this project```
- [ ] NFC ```Does not work on any device```

## Installation instructions

<details> 

<summary><strong>All Files Needed</strong></summary>
 
- You will need the [Windows on ARM image](https://uupdump.net/) (Windows 11 is Recommended)

- [UEFI image for Poco X3 Pro](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/Uefi)

- [TWRP](https://twrp.me/xiaomi/xiaomipocox3pro.html) for Poco X3 Pro.

- [Magisk](https://github.com/topjohnwu/Magisk)

- [Termux](https://f-droid.org/en/packages/com.termux/)

- [Magisk module](https://github.com/evdenis/disk) for disk partitioning tools in Termux.

- On PC you will need the [Mass Storage Mode Script](https://www.mediafire.com/file/bvibrl34nawl2wg/msc.sh/file) ```This file belongs to gus33000```

- On PC you will need the [platform-tools](https://developer.android.com/studio/releases/platform-tools).

- On PC you will also need a [program](https://github.com/WOA-Project/DriverUpdater/releases/) to install the [drivers](https://t.me/winonvayu/5780)

- We will need [parted](https://drive.google.com/file/d/1e8kDC2fylkvJuHimlViHOuHyk8xljr6p/view) for partitioning.
  
 </details> 

### Commands

**Make sure to install TWRP, Magisk And The Magisk Module Before Proceeding.**

[Do these commands first](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/termux)

[Do these commands after doing the first](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/twrp)

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

- [SebastianZSXS](https://github.com/SebastianZSXS) ```helped patch windows pe```

</details>  

