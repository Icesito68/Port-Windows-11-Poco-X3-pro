# Update Drivers

## Prerequisites

- [TWRP/OFOX](../../../../releases/Recoveries)
- [DriverUpdater](https://github.com/WOA-Project/DriverUpdater/releases/latest)
- [Drivers](https://github.com/degdag/Vayu-Drivers/releases/latest)

#### Start TWRP recovery through the PC with the command

```cmd
fastboot boot <twrp.img>
```

> If you already have TWRP installed, just hold the power and vol+ buttons at startup


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
> Use `list volume` to find it, it's usually the one before the last

```diskpart
select volume <number>
```

#### Assign the letter x
```diskpart
assign letter=x
```

### Exit diskpart:
```diskpart
exit
```


# Install Drivers

> Replace `<vayudriversfolder>` with the location of the drivers folder

> Open cmd as administrator


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


##### Boot with Windows bootable UEFI image #####

```
fastboot flash boot <uefi.img>
```

  
  

# Finished!
