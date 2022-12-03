This step is required so that we make partitions where our windows installation will be

## Notes:
- These commands have been tested and working.
- This process must be done after having done the commands in termux
- Ignore `udevadm` warnings
- Do not run the same command twice
- DO NOT REBOOT YOUR PHONE, if you think you made a mistake.

#### Start TWRP recovery through the PC with the command
```cmd
fastboot boot <twrp.img>
```
> or if you already have twrp, you can hold the power button and vol+ at startup

#### Unmount all partitions
Go to your twrp settings and unmount all partitions

## Push needed tools:
```cmd
adb push parted /sbin/
```

## Start the terminal
```cmd
adb shell
```

# Setup Partitions
#### Give parted the correct permissions
```sh
chmod 755 /sbin/parted
```


### Start parted
```sh
parted /dev/block/sda
```


### Delete the `userdata` partition
> partitions rm `<partition number>`
> you can make sure that 32 is the userdata partition number by running
>  `print all`
```sh
rm 32
```

### Create partitions
> If you get any warning message telling you to ignore or cancel, just type i and enter

#### For 128Gb models:

- Create the ESP partition (stores windows bootloader data and efi files)
```sh
mkpart esp fat32 11.8GB 12.2GB
```

- Create the main windows partition where windows will be installed to
```sh
mkpart win ntfs 12.2GB 70.2GB
```

- Create android's data partition
```sh
mkpart userdata ext4 70.2GB 127GB
```


#### For 256Gb models:

- Create the ESP partition (stores windows bootloader data and efi files)
```sh
mkpart esp fat32 11.8GB 12.2GB
```

- Create the main windows partition where windows will be installed to
```sh
mkpart win ntfs 12.2GB 132.2GB
```

- Create android's data partition
```sh
mkpart userdata ext4 132.2GB 255GB
```


### Make ESP partiton bootable so the efi image can detect it
```sh
set 32 esp on
```

### Quit parted
```sh
quit
```

### Reboot your phone and enter twrp 

### Start the shell again on your pc
```cmd
adb shell
```

### Format partitions
-  Format the ESP partiton as FAT32
```sh
mkfs.fat -F32 -s1 /dev/block/by-name/esp
```

-  Format the windows partition as NTFS
```sh
mkfs.ntfs -f /dev/block/by-name/win
```

- Fromat data
Go to your twrp menu, and press format data, 
then type `yes`.

### Check if Android still starts
just restart the phone, and see if android still works


## [Next step: Install Windows](/guide/3-install-en.md)