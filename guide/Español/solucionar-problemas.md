<img align="right" src="https://github.com/wormstest/src_vayu_windows/blob/main/2Poco X3 Pro Windows.png" width="350" alt="Windows 11 Running On A Poco X3 Pro">


# Windows en el POCO X3 Pro

## Solucionar problemas


## El dispositivo puede arrancar el bootloader pero no en android

### Requisitos previos:

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

Esto es causado por particiones con nombres de volumen que el bootloader no puede manejar, para arreglar esto:

- Arranca el recovery

- Conecta el teléfono al PC

- Abre el cmd en el PC

- Pon ```adb shell```

- Pon ```parted```

- Pon ```print``` to list all partitions

- Busca particiones que tengan espacios en los nombres, por ejemplo, "Partición de datos básicos" y anota su número de volumen

- Ahora pon ```rm <vol number>``` por ejemplo ```rm 36```


## BOUND_IMAGE_UNSUPPORTED BSOD en el arranque

### Requisitos previos:

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

- [UEFI vieja](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/releases/download/old_uefi/vayu_old_uefi.zip)

- [UEFI nueva](http://github.com/degdag/edk2-msm/releases/latest)

- Arranca el bootloader

- Conecta el teléfono en el PC

- Abre el cmd en el PC

- Pon ```fastboot boot <old_uefi.img>```, asegúrate de reemplazar ```<old_uefi.img>``` por la imagen apropiada

- Después de que el teléfono arranque windows ve al bootloader de nuevo

- Pon ```fastboot boot <new_uefi.img>```, asegúrate de reemplazar ```<new_uefi.img>``` por la imagen apropiada


## La pantalla táctil no funciona

- Apaga y enciende la pantalla


## Touchscreen touches are inaccurate/upside down

Configuraste mal el driver del táctil, para solucionarlo:

- [Sigue esta parte de la guia](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/guide/Español/2-instalacion-es.md#Comprueba-que-tipo-de-panel-tienes)
