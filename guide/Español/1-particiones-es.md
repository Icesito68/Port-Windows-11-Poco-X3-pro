Estos pasos son necesarios para crear las particiones donde pondremos Windows

## Notas:
> **Advertencia** si eliminas alguna partición via diskpart más adelante o ahora, Windows enviará un comando ufs que se malinterpretará y borrará toda la ufs
- Estos comandos han sido testeados.
- Ignora las advertencias de `udevadm`
- No ejecutes el mismo comando dos veces
- NO REINICIES TU DISPOSITIVO si crees que cometiste un error, preguntanos en el [Chat de Telegram](https://t.me/winonvayu)

#### Arranca en TWRP desde el PC con este comando
```cmd
fastboot boot <twrp.img>
```
> si tienes el TWRP instalado, solo presiona el botón de encendido y vol+ para iniciarlo

#### Desmonta todas las particiones
Ve a mount en TWRP y desmonta todas las particiones

## Pasar las herramientas necesarias:
```cmd
adb push parted /sbin
```

## Iniciar ADB shell
```cmd
adb shell
```

# Crear particiones
#### Darle los permisos necesarios a la herramienta
```sh
chmod +x /sbin/*
```

### Redimensionar la tabla de particiones
> para que las particiones de Windows entren
```sh
sgdisk --resize-table 64 /dev/block/sda
```

### Iniciar parted
```sh
parted /dev/block/sda
```


### Borrar la partición `userdata` 
>Para asegurarte de que la partición 32 es userdata puedes usar
>  `print all`
```sh
rm 32
```

### Crear particiones
> Si recibes cualquier advertencia que te diga ignorar o cancelar, solo escribe i y dale a enter enter

#### Para los modelos de 128Gb:
- Creamos la partición de datos de Android
```sh
mkpart userdata ext4 11.8GB 68.6GB
```

- Creamos la partición principal donde instalaremos Windows
```sh
mkpart win ntfs 68.6GB 126.6GB
```

- Crea la partición ESP (Aqui estará el bootloader de Windows y los archivos EFI)
```sh
mkpart esp fat32 126.6GB 127GB 
```


#### Para modelos de 256Gb:

- Creamos la partición de datos de Android
```sh
mkpart userdata ext4 11.8GB 134.6GB
```

- Creamos la partición principal donde instalaremos Windows
```sh
mkpart win ntfs 134.6GB 254.6GB
```

- Crea la partición ESP (Aqui estará el bootloader de Windows y los archivos EFI)
```sh
mkpart esp fat32 254.6GB 255GB
```


### Hace a ESP la partición de arranque para que la imagen EFI pueda detectarla
```sh
set 32 esp on
```

### Salir de parted
```sh
quit
```

### Reiniciar a TWRP

### Iniciar shell otra vez en tu PC
```cmd
adb shell
```

### Formatear las particiones
-  Formatea la partición ESP en FAT32
```sh
mkfs.fat -F32 -s1 /dev/block/by-name/esp
```

-  Formatea la partición de Windows en NTFS
```sh
mkfs.ntfs -f /dev/block/by-name/win
```

- Formatea data
Ve a Wipe en TWRP y presiona Format Data, 
después escribe `yes`.

### Comprueba si android inicia
Solo reinicia el teléfono y comprueba si Android inicia


## [Siguiente paso: Instalar Windows](/guide/Español/2-instalacion-es.md)
