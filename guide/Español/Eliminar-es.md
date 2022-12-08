# Setup
```
Obten el archivo gpt_both0.bin desde las releases
Open cmd
```

##Restaura la tabla de particiones stock
```
Fastboot flash partition:0 gpt_both0.bin
```

## Borra userdata para que Android pueda iniciar (no necesitas que esté desencriptado)
```
Fastboot -w
```
