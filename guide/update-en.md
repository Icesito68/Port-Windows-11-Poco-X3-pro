#### Start TWRP recovery through the PC with the command

```cmd

fastboot boot <twrp.img>

```

> or if you already have twrp, you can hold the power button and vol+ at startup


## Push script:

```cmd
adb push msc.sh /sbin
```

### Execute script

```cmd
adb shell sh /sbin/msc.sh
```

## Assign letters to disks

#### Start the windows disk manager

> Once the X3 pro is detected as a disk

```cmd
diskpart
```

#### List all disks

```diskpart
list disk
```

### Select the disk that is your X3 Pro

> The X3 Pro should be the last disk usually

```
sel disk <disk number found via previous command>
```

  
### Assign `x` to windows volume

#### Select the volume

```diskpart
sel vol 3
```

#### Assign the letter x

```diskpart
assign letter=x
```

  
### Assign `y` to esp volume

#### Select the volume

```diskpart
sel vol 4
```

#### Assign the letter y

```diskpart
assign letter=y
```


# Install Drivers

> replace `<vayudriversfolder>` with the location of the drivers folder
> open cmd as administrator


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


# Create windows bootloader files for the EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

  
# Allow unsigned driver

> if u don't do this you'll get a blue screen

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

  

# bring up a boot menu (optional)

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {bootmgr} displaybootmenu yes
```

  

##### Boot with Windows bootable UEFI image #####

```
fastboot flash boot <uefi.img>
```

  
  

# Finished!