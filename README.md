# Port-Windows-11-Poco-X3-pro

# English

We're not responsible for bricked devices, dead microSD cards, dead cats or dogs, nuclear wars or you getting fired because the alarm app didn't work.

## Important

This project is in a very early stage, all the files here have been contributed by other users, here you will find a guide with the working files we managed to get working.

Some drivers in this project belong to gus33000 [here](https://github.com/WOA-Project/SurfaceDuo-Drivers) you can see his project.

Some drivers in this project belong to map220v [here](https://github.com/map220v/MiPad5-Drivers) you can see his project.

UEFI EDK2 image for Poco X3 Pro was taken from [here](https://forum.xda-developers.com/t/uefi-poco-x3-pro.4441163/).

## Project status

At the moment, we are trying to solve the issue "Too many primary partitions" that happens when trying to make the Win partition.


# Español

No nos hacemos responsables de dispositivos brickeados, micro SD muertas, guerras nucleares, mascotas muertas o que la app de alarma falle y te despidan del trabajo.

## Importante

Este proyecto por ahora está en una fase experimental muy temprana, todos los archivos han sido aportados por otros usuarios de la comunidad, aquí realmente tendrás una guía con la documentación que hemos sido capaces de reunir.

Los drivers usados en este proyecto pertenecen a gus33000 en el port de la Surface Duo [aquí](https://github.com/WOA-Project/SurfaceDuo-Drivers) puedes ver su proyecto.

Los drivers usados en este proyecto pertenecen a map220v en el port de la Xiaomi Mi Pad 5 [aquí](https://github.com/map220v/MiPad5-Drivers) puedes ver su proyecto.

La imagen Uefi del Poco X3 Pro fue sacada de [aquí](https://forum.xda-developers.com/t/uefi-poco-x3-pro.4441163/).

## Estado del proyecto

Actualmente estamos tratando de solucionar un error, "Too many primary partitions" El cual sucede al tratar de crear la partición de Win, que es justo la segunda.

Teóricamente el error se debe a que [los discos gpt no pueden tener más de 32 particiones](https://en.wikipedia.org/wiki/GUID_Partition_Table#Partition_entries_(LBA_2%E2%80%9333)) y los desarrolladores de Xiaomi llenaron esas 32 a voluntad por algún motivo, aunque supuestamente 4 de ellas no contienen nada y creemos que se pueden eliminar.
