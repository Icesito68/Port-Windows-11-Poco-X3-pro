#### Inicie a recuperação TWRP através do PC com o comando

```cmd
fastboot boot <twrp.img>
```

> Se você já possui o TWRP instalado, basta segurar os botões power e vol+ na inicialização


## Enviar scripts

```cmd
adb push msc /sbin
```

### Executar scripts

```cmd
adb shell sh /sbin/msc
```

## Atribuir letras aos discos

#### Inicie o gerenciador de disco do Windows

> Uma vez que o X3 Pro é detectado como um disco

```cmd
diskpart
```


### Atribuir `x` ao volume do Windows

#### Selecione o volume do Windows do telefone
> Use `list volume` para encontrá-lo, geralmente é o anterior ao último

```diskpart
select volume <number>
```

#### Atribuir a letra 'x'
```diskpart
assign letter=x
```

### Saia do diskpart:
```diskpart
exit
```


# Instalação dos Drivers

> Substitua `<vayudriversfolder>` pelo local da pasta de drivers

> Abra o cmd como administrador


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


##### Inicialize com a imagem UEFI inicializável do Windows #####

```
fastboot flash boot <uefi.img>
```

  
  

# Finalizado!
