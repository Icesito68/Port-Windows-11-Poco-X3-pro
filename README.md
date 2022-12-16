# Running Windows on Arm on the POCO X3 Pro

<img align="right" src="https://github.com/wormstest/src_vayu_windows/blob/main/Vayu-Windows11 (3).png" width="425" alt="Windows 11 Running On A Poco X3 Pro">

## ⚠️ **Warning**

We're not responsible for bricked devices, missing recovery partitions, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because you forgot to boot back in to android for the alarm.

This project is in an early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get. This is a delicate process, do it under your own risk and follow all the steps carefully.

**IF YOU AREN'T COMFORTABLE MODDING YOUR PHONE OR ITS PARTITION TABLE OR YOU ARE PARANOID OF BRICKING YOUR DEVICE CLICK AWAY NOW!!! YOU HAVE BEEN WARNED, YOU ARE ON YOUR OWN IF YOU BRICK YOUR DEVICE!!! AGAIN! YOU HAVE BEEN WARNED!!!**

## Project status

Most of the hardware works, but some important components (sound, camera) do not work yet. These drivers were ported from Xiaomi Pad 5 and Surface Duo in hopes that it will work on our Poco X3 Pro.

#### Features

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
- [ ] Camera
- [x] LTE ```Only SIM1 now work, with extra steps on each reboot```

#### Sensors
- [x] Accelerometer
- [x] Magnetometer
- [x] Gyroscope 
- [x] GPS
- [x] Proximity
- [x] Light sensor
- [ ] Fingerprint


## Guides and requirements

<details> 
<summary><strong>Required Tools/Files</strong></summary>

Human:

- Understand English, Spanish or Russian 

- Understand how to use TWRP

- Understand how to use CMD

- Functioning brain

PC:

- [Windows on ARM image](https://uupdump.net/) (Windows 11 is recommended)

- [platform-tools](https://developer.android.com/studio/releases/platform-tools).

- [DriverUpdater](https://github.com/WOA-Project/DriverUpdater/releases/) to install the [drivers](https://github.com/degdag/Vayu-Drivers/releases/latest)

- [Binaries](../../releases/tag/binaries) required for partitioning

Phone:
- [UEFI image](https://github.com/degdag/edk2-msm/releases/latest) for Poco X3 Pro

- [TWRP](https://twrp.me/xiaomi/xiaomipocox3pro.html) for Poco X3 Pro.

</details> 

<details> 

<summary><strong>For people who followed the old guide or broke their partition table</strong></summary>
  
<details> 

<summary><strong>English</strong></summary>

[Transition from the old guide](guide/English/0-transition-en.md)
  
</details> 

<details> 

<summary><strong>Spanish</strong></summary>

[Transicion desde la guia vieja](guide/Español/0-transicion-es.md)
  
</details> 

<details> 

<summary><strong>Russian</strong></summary>

[Переход со старого руководства](/guide/Russian/0-transicion-ru.md)
  
</details> 

</details> 

### Windows installation instructions

<details> 

<summary><strong>English</strong></summary>

1 - [Create partitions](guide/English/1-partition-en.md)

2 - [Install Windows](guide/English/2-install-en.md)
  
</details> 
  
<details> 

<summary><strong>Spanish</strong></summary>

1 - [Crear particiones](guide/Español/1-particiones-es.md)

2 - [Instalar Windows](guide/Español/2-instalacion-es.md)
  
</details> 

<details> 
  
<summary><strong>Russian</strong></summary>

1 - [Создание разделов](/guide/Russian/1-partitions-ru.md)

2 - [Установка Windows](/guide/Russian/2-install-ru.md)
  
</details> 

### Other guides:

<details> 

<summary><strong>English</strong></summary>

- [If you just want to update the drivers follow these commands](guide/English/update-en.md)

- [If you want to uninstall Windows follow these commands](guide/English/delete-en.md)
  
</details> 

<details> 

<summary><strong>Spanish</strong></summary>

- [Si solo quieres actualizar los drivers sigue estos comandos](guide/Español/Actualizar-es.md)

- [Si solo quieres desinstalar Windows sigue estos comandos commands](guide/Español/Eliminar-es.md)
  
</details> 

<details> 

<summary><strong>Russian</strong></summary>

- [Если вы хотите обновить драйвера следуйте этим командам](guide/Russian/update-ru.md)

- [Если вы хотите удалить Windows следуйте этим командам](guide/Russian/delete-ru.md)

</details> 

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

- [wormstest](https://github.com/wormstest) ```Translate guide to Russian``` 

</details>  

