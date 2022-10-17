# Port-Windows-11-Poco-X3-pro 

# Compatibility

Working: ✅|
In progess: 🔶️|
Not working: ❌

|| Aditional notes | Status |
|---------------|------------------------|--------------------------|
| USB | Powered hub needed | ✅|
| UFS |  | ✅|
| Display | still not working at 120hz | ✅|
| UEFI Buttons |  | ✅|
| Touchscreen | in theory it uses the similar controller as the nabu | 🔶️|
| WiFi | I have random reboots, maybe it's the wifi's fault, but it's not sure | ✅|
| Bluetooth | they are working together with the touch, both give the same error | 🔶️|
| Battery |  | ❌|
| Charge | Not sure if it's fast charging | ✅|
| Virtualization | it is impossible for this to work | ❌|
| GPU | should be similar to nabu, currently working on it (Error Code: 31) | 🔶️|
| LTE |  | ❌|
| Audio | only if it is by usb, in theory with more acpi edits audio can work driverless| 🔶️|
| Location |  | ❌|
| Sensors |  | ❌|
| Camera | it is almost impossible in this project | ❌|
| NFC | does not work on any device | ❌|

## Warning!
We're not responsible for bricked devices, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because the alarm app didn't work.

This is a delicate process, do it under your own risk and follow all the steps carefully.

## Important

This project is in a very early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get.

Many information here was provided thanks to Renegade Project Discord server members.

Thanks to [degdag](https://GitHub.com/degdag) for helping in the process.

special thanks to [halal-beef](https://github.com/halal-beef) who has done the whole process and has also helped me install windows on my x3 pro, and also to [gus33000](https://GitHub.com/gus33000) and [map220v](https://GitHub.com/map220v) for dedicating their time to the project and responding

Some drivers in this project belong to gus33000 [here](https://github.com/WOA-Project/SurfaceDuo-Drivers) you can see his project.

Some drivers in this project belong to map220v [here](https://github.com/map220v/MiPad5-Drivers) you can see his project.

UEFI EDK2 image for Poco X3 Pro was taken from [here](https://github.com/halal-beef/MU-sm8150pkg/actions/runs/3164583519).

## Project status

We are porting drivers from Xiaomi Pad 5 in hope that it will work on the Poco X3 Pro

## Required Files

You will need the TWRP compatible with the Poco X3 Pro, you can download it [Here](https://twrp.me/xiaomi/xiaomipocox3pro.html)

We will have to be root user, you can download Magisk [Here](https://github.com/topjohnwu/Magisk)

For the commands from android we will use termux, you can download it [Here](https://play.google.com/store/apps/details?id=com.termux&hl=es_419&gl=US)

You need a Magisk module to do the termux operations, you can download it [Here](https://github.com/evdenis/disk)

In termux you will have to execute some commands that we provide in this repository, you can see them [Here](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/termux)

we will need parted for dual boot [Here](https://drive.google.com/file/d/1e8kDC2fylkvJuHimlViHOuHyk8xljr6p/view)

On Pc you will need the platform-tools, you can download [Here](https://developer.android.com/studio/releases/platform-tools)

This file is required to continue with the installation, you can download [Here](https://www.mediafire.com/file/bvibrl34nawl2wg/msc.sh/file) (The file belongs to gus33000)

The UEFI Image have been built by this repository, you can download [Here](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/Uefi)

You will need a Windows compiled for ARM, choose whatever version you like [Here](https://uupdump.net/)

you need a program to install the drivers, you can get it [here](https://github.com/WOA-Project/DriverUpdater/releases/)

you can get the drivers [here](https://github.com/halal-beef/MiPad5-Drivers)
