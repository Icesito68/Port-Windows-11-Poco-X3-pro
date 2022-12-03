#### Start TWRP recovery through the PC with the command

```cmd
fastboot boot <twrp.img>
```

> or if you already have TWRP installed, just hold the power and vol+ buttons at startup


## Push script

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


# Install Drivers

> replace `<vayudriversfolder>` with the location of the drivers folder

> open cmd as administrator


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
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

  

##### Boot with Windows bootable UEFI image #####

```
fastboot flash boot <uefi.img>
```

  
  

# Finished!