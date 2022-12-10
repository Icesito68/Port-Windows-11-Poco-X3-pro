# Running Windows 11 On The Poco X3 Pro

<img align="right" src="https://github.com/halal-beef/res/blob/main/1c2a26a1-7be3-4f70-aeb1-595056b6da45.png" height="550">

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
- [x] Brightness
- [x] WiFi
- [x] Battery status
- [ ] Charging ```In progress, working partially```
- [x] GPU
- [ ] Audio ```Only if it is by usb or bluetooth```
- [x] Bluetooth
- [ ] Camera ```In progress```
- [ ] LTE ```Nearly working, Windows detects it but does not allow access to the mobile network```

### Sensors
- [x] Accelerometer
- [x] Magnetometer
- [x] Gyroscope 
- [x] GPS
- [x] Proximity
- [x] Light sensor
- [ ] Fingerprint


## Installation instructions


<details> 

<summary><strong>Required Tools/Files</strong></summary>
PC:

- [Windows on ARM image](https://uupdump.net/) (Windows 11 is Recommended)

- [platform-tools](https://developer.android.com/studio/releases/platform-tools).

- [DriverUpdater](https://github.com/WOA-Project/DriverUpdater/releases/) to install the [drivers](https://github.com/degdag/Vayu-Drivers/releases/latest)

- [Binaries](../../releases/tag/binaries) required for partitioning

Phone:
- [UEFI image](https://github.com/degdag/edk2-msm/releases/latest) for Poco X3 Pro

- [TWRP](https://twrp.me/xiaomi/xiaomipocox3pro.html) for Poco X3 Pro.

</details> 


## For people who followed the old guide or broke their partition table:

#### English

[Transition from the old guide](guide/English/0-transition-en.md)

#### Spanish

[Transicion desde la guia vieja](guide/Español/0-transicion-es.md)

## Installation:

#### English

1- [Partition](guide/English/1-partition-en.md)

2- [Install Windows](guide/English/2-install-en.md)

#### Spanish

1- [Particiones](guide/Español/1-particiones-es.md)

2- [Instalar Windows](guide/Español/2-instalacion-es.md)

## Other Commands:

#### English

- [If you just want to update the drivers follow these commands](guide/English/update-en.md)

- [If you want to uninstall Windows follow these commands](guide/English/delete-en.md)

#### Spanish

- [Si solo quieres actualizar los drivers sigue estos comandos](guide/Español/Actualizar-es.md)

- [Si solo quieres desinstalar Windows sigue estos comandos commands](guide/Español/Eliminar-es.md)

## Contributors

<details> 

<summary><b><strong>Credits</strong></b></summary>

- [Icesito68](https://github.com/Icesito68) ```Made Windows partitioning commands and made this repo```

- [Map220v](https://github.com/map220v) ```Provided help and vayu UEFI uses nabu UFS patches and ACPI and also ported mi pad 5 drivers```

- [Degdag](https://github.com/degdag) ```Improves UEFI and ported drivers```

- [Halal-Beef](https://github.com/halal-beef) ```Built EDK2 and modified it enough to boot Windows, also ported drivers```
  
- [Renegade Project](https://github.com/edk2-porting) ```Making the core of this project```

- [gus33000](https://github.com/gus33000) ```Providing help, also made base install guide, all of the original drivers and the msc script```

- [Renegade Project Discord members](https://discord.gg/XXBWfag) ```Provided Help```
 
- [ArturoGC06](https://github.com/ArturoGC06) ```Helped in the beginning of the project to the translations and gave Windows data```

- [SebastianZSXS](https://github.com/SebastianZSXS) ```Helped to patch Windows PE```

- [MollySophia](https://github.com/MollySophia) ```Helped to fix battery status```

- [haouarihk](https://github.com/haouarihk) ```Great suggestions on the command notes, also made the new guide```

- [bibarub](https://github.com/bibarub) ```Guide improvenents```

</details>  

