## Restaurar la tabla de particiones stock

### ¿Por qué lo necesitamos?

Si seguistes la guia vieja tus particiones serán algo diferentes y esto puede tener consecuencias si no restauras la tabla de particiones stock

Si quieres desinstalar Windows usa esto para evitar el error humano evitar escribir una guia dedicada solo a desinstalar.

Si quieres blooquear tu bootloader de nuevo necesitas la tabla de particiones stock

### Dependencias

[gpt_both0.bin](../../../../releases/tag/binaries)

### Notes

> Reemplaza ```<gpt_both0.bin>``` por el directorio de gpt_both0.bin 


## REstaurar GPT

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

## Formatea userdata para evitar el bootloop y resturar el peso de FS
```cmd
fastboot -w
```

