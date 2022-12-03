# Install Windows
> You will need to have MTP disabled in Mount

## Push needed tools:
```cmd
adb push msc /sbin
```

### Execute script

```cmd
adb shell sh /sbin/msc
```

  

## Assign letters to disks
  

#### Start the Windows disk manager

> Once the X3 Pro is detected as a disk

```cmd
diskpart
```


### Assign `x` to Windows volume

#### Select the Windows volume of the phone
> use `list volume` to find it, it's usually the one before the last

```diskpart
select volume <number>
```

#### Assign the letter x
```diskpart
assign letter=x
```

### Assign `y` to esp volume

#### Select the esp volume of the phone
> use `list volume` to find it, it's usually the last one

```diskpart
select volume <number>
```

#### Assign the letter y

```diskpart
assign letter=y
```

### Exit diskpart:
```diskpart
exit
```

  
  

## Install

> replace `<path/to/Install.wim>` with the actual install.wim path,

> `install.wim` is located in sources folder inside your iso
> you can get it either by mounting or extracting it

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

  
  

# Install Drivers

> replace `<vayudriversfolder>` with the location of the drivers folder

> open cmd as an Administrator

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

  

# Create Windows bootloader files for the EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

  
  

# Allow unsigned driver

> if you don't do this you'll get a BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```
  

# Boot into Windows
> i recommend having a microSD you store the boot images on

> so that you don't need a pc to push the files.

### Move the `<uefi.img>` file to the device

```cmd
adb push <uefi.img> /sdcard
```

##### if you have a microSD card use this

```cmd
adb push <uefi.img> /external_sd
```


### Make a backup of your existing boot image
> you need to do it just once

> put it to the microSD card if possible


### Flash the uefi image from twrp.
navigate to the `uefi.img` file and flash it into boot.

# Boot back into Android
> use your backup boot image from twrp.

# Finished!