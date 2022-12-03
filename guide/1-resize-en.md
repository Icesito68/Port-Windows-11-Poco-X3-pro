This step is required so that we can have more partitions for our windows installation 


> These commands are executed from termux in android itself

## Requirements:
 - Install the Magisk module found in the files section
 
## Setup:
#### Install tsu
> if you face a repo is under maintainance issue, run `termux-change-repo` and change the repo, until you find a one that works.
```termux
pkg install tsu
```

#### Login as Root
```termux
tsu
```

## Setup a backup
> if you want to relock your bootloader
- get the `sda.part` file
```sh
sfdisk -d /dev/block/sda > /sdcard/sda.part
```
- store it in your pc
> plug the phone to your pc and run cmd
```cmd
adb pull /sdcard/sda.part
```
> You should find a file called sda.part in your local directory, save it somewhere safe

## Resize the table 
> so that it fits our new windows partitions
```sh
sgdisk --resize-table=128 /dev/block/sda
```


## Restart your phone


## [Next step: Partition](/guide/2-partition-en.md)