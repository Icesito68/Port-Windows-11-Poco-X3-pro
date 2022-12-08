#### Incia el TWRP desde el pc con este comando

```cmd
fastboot boot <twrp.img>
```

> si ya tienes el TWRP instalado,solo presiona el botón de encendido y vol+ para iniciarlo


## pasar el script

```cmd
adb push msc /sbin
```

### ejecutar el script

```cmd
adb shell sh /sbin/msc
```

## asignar letras a los discos

#### Iniciar el administrador de discos de Windows

> Cuando el X3 Pro sea detectado como disco

```cmd
diskpart
```


### Asigna `x` al volumen de Windows

#### Seleciona el volumen de Windows del teléfono
> use `list volume` to find it, it's usually the one before the last

```diskpart
select volume <number>
```

#### Agsigna la letra x
```diskpart
assign letter=x
```

### Salir de diskpart:
```diskpart
exit
```


# Instalar los Drivers

> reemplaza `<vayudriversfolder>` por la localización de la carpeta de los drivers

> abre un cmd como administrador


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


##### Arranca con la imagen de aranque de Windows #####

```
fastboot flash boot <uefi.img>
```

  
  

# ¡Terminado!
