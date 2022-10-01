# Port-Windows-11-Poco-X3-pro

# English

## Warning!
We're not responsible for bricked devices, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because the alarm app didn't work.

This is a delicate process, do it under your own risk and follow all the steps carefully.

## Important

This project is in a very early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get.

Many information here was provided thanks to Renegade Project Discord server members.

Some drivers in this project belong to gus33000 [here](https://github.com/WOA-Project/SurfaceDuo-Drivers) you can see his project.

Some drivers in this project belong to map220v [here](https://github.com/map220v/MiPad5-Drivers) you can see his project.

UEFI EDK2 image for Poco X3 Pro was taken from [here](https://forum.xda-developers.com/t/uefi-poco-x3-pro.4441163/) (At the moment, it does have a problem that we are trying to solve).

We are working on [this UEFI image](https://github.com/halal-beef/MU-sm8150pkg-auto-complie/tree/main/Platforms/SurfaceDuoPkg/Device/xiaomi-vayu).

The compiled Windows PE for the Snapdragon 855, 855+ and 860 [source](https://youtu.be/IKLjTv5ooZU).

## Project status

Now we are trying to solve an issue related to the UEFI image that prevents the Poco X3 Pro to boot Windows, even when using a Windows PE image compatible with the SD860.

We try to start Windows Pe and it freezes giving an error code (PROGRESS CODE: V03101019 I0)

The uefi is being rebuilt to see if the X3 Pro is able to boot Windows Pe

## Required Files

You will need the TWRP compatible with the Poco X3 Pro, you can download it [Here](https://twrp.me/xiaomi/xiaomipocox3pro.html)

We will have to be root user, you can download Magisk [Here](https://github.com/topjohnwu/Magisk)

For the commands from android we will use termux, you can download it [Here](https://play.google.com/store/apps/details?id=com.termux&hl=es_419&gl=US)

You need a Magisk module to do the termux operations, you can download it [Here](https://github.com/evdenis/disk)

In termux you will have to execute some commands that we provide in this repository, you can see them [Here](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/termux)

On a pc you use the platform tools, you can download them [Here](https://developer.android.com/studio/releases/platform-tools)

The Uefi image is the one provided in this same repository, you can find it [Here](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/Uefi)

# Español

## ¡Advertencia!
No nos hacemos responsables de dispositivos brickeados, micro SD muertas, guerras nucleares, mascotas muertas o que la app de alarma falle y te despidan del trabajo.

Esto es un proceso delicado, hágalo bajo su propio riesgo y sin saltarse pasos del tutorial.

## Importante

Este proyecto por ahora está en una fase experimental muy temprana, todos los archivos han sido aportados por otros usuarios de la comunidad, aquí realmente tendrás una guía con la documentación que hemos sido capaces de reunir.

La mayoría de información fue proporcionada por usuarios del Discord de Renegade Project.

Los drivers usados en este proyecto pertenecen a gus33000 en el port de la Surface Duo [aquí](https://github.com/WOA-Project/SurfaceDuo-Drivers) puedes ver su proyecto.

Los drivers usados en este proyecto pertenecen a map220v en el port de la Xiaomi Mi Pad 5 [aquí](https://github.com/map220v/MiPad5-Drivers) puedes ver su proyecto.

La imagen Uefi del Poco X3 Pro fue sacada de [aquí](https://forum.xda-developers.com/t/uefi-poco-x3-pro.4441163/) (Actualmente tiene un error que se está tratando de solucionar).

Se está trabajando sobre [esta imagen uefi](https://github.com/halal-beef/MU-sm8150pkg-auto-complie/tree/main/Platforms/SurfaceDuoPkg/Device/xiaomi-vayu).

El Windows PE compilado para el Snapdragon 855, 855+ y 860 [lo obtuvimos aqui](https://youtu.be/IKLjTv5ooZU).

## Estado del proyecto

Ahora se está tratando de solucionar un error que impide al Poco X3 Pro arrancar Windows, falla incluso teniendo un Windows PE compatible con el SD860.

Tratamos de arrancar Windows Pe y se congela dando un código de error (PROGRESS CODE: V03101019 I0)

Se está reconstruyendo el uefi para ver si así el X3 Pro es capaz de arrancar Windows Pe

## Archivos necesarios

Necesitarás el TWRP compatible con el Poco X3 Pro, lo puedes descargar [Aquí](https://twrp.me/xiaomi/xiaomipocox3pro.html)

Tendremos que ser usuario root,puedes descargar Magisk [Aquí](https://github.com/topjohnwu/Magisk)

Para los comandos desde android usaremos termux, lo puedes descargar [Aquí](https://play.google.com/store/apps/details?id=com.termux&hl=es_419&gl=US)

Necesitas un módulo de Magisk para hacer las operaciones con termux, lo puedes descargar [Aquí](https://github.com/evdenis/disk)

En termux tendrás que ejecutar unos comandos que proporcionamos en este repositorio, los puedes ver [Aquí](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/commands/termux)

En un pc necesitarás las platform-tools, las puedes descargar [Aquí](https://developer.android.com/studio/releases/platform-tools)

La imagen Uefi es la proporcionada en este mismo repositorio, la encuentras [Aquí](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/tree/main/Uefi)
