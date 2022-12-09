## Transición de la anterior guia a la actual
> No necesitas esto si no seguiste la guia vieja



> Reemplaza <gpt_both0.bin> por la ruta de gpt_both0.bin . Lo puedes encontrar en la [página de lanzamientos](../../../../../releases/tag/binaries)


# Restaurar la tabla de particiones stock

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

# Borra userdata para evitar bootloop (no necesitas que userdata esté desencriptado)
```cmd
fastboot -w
```

## [Siguiente paso: particiones](/guide/Español/1-partition-es.md)
