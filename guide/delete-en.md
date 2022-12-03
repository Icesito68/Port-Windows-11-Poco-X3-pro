# Setup
```cmd
adb push parted /sbin/

adb shell
```

#### Set the right permissions for parted
```sh
chmod 755 /sbin/parted
```


## unmount data and sdcard
```sh
umount /data && umount /sdcard
```

# Remove Partitions

#### Start parted
```
parted /dev/block/sda
```

> partitions rm `<partition number>`

```sh
rm 32

rm 33

rm 34
```


# Make the `userdata` partition

#### 128Gb models
```sh
mkpart userdata ext4 11.8GB 127GB
```

#### 256Gb models
```sh
mkpart userdata ext4 11.8GB 255GB
```



# Finally
- Reboot to recovery twrp.
- Fromat data Go to your twrp menu, and press format data, then type `yes`.
- Check that Android starts.

# Optional
## Resize the table back to 32
> THIS IS A DANGEROUS STEP, BE SURE TO HAVE REMOVED WINDOWS AND ESP PARTITION BEFORE PROCCEDING.
> After you install the required files from step 1, again
> run
```sh
sgdisk --resize-table=32 /dev/block/sda
```