# Instalar o Windows
> Você precisará ter o MTP desativado na montagem

## Empurre as ferramentas necessárias:
```cmd
adb push msc.sh /sbin
```

### Executar script

```cmd
adb shell sh /sbin/msc.sh
```

  

## Atribuir letras aos discos
  

#### Inicie o gerenciador de disco do Windows

> Assim que o X3 Pro for detectado como um disco

```cmd
diskpart
```


### Atribuir `x` ao volume do Windows

#### Selecione o volume do Windows do telefone
> Use `list volume` para encontrá-lo, geralmente é o anterior ao último

```diskpart
select volume <number>
```

#### Atribua a letra 'x'
```diskpart
assign letter=x
```

### Atribuir `y` ao volume do esp

#### Selecione o volume esp do telefone
> Use `list volume` para encontrá-lo, geralmente é o último

```diskpart
select volume <number>
```

#### Atribua a letra 'y'

```diskpart
assign letter=y
```

### Saia do diskpart:
```diskpart
exit
```

  
  

## Instalação
> Substitua `<path/to/Install.wim>` pelo caminho atual do install.wim,

> `install.wim` está localizado na pasta 'sources' dentro da sua iso
> Você pode obtê-lo montando ou extraindo-o

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

# Verifique que tipo de painel você tem

> No TWRP, vá para Avançado, Terminal

 ```cmd
 cat /proc/cmdline
```
> Procure a exibição quase na parte inferior

> Se o seu dispositivo for `<tianma>`: j20s_36 

> Se o seu dispositivo for `<huaxing>`: j20s_42 e vá para a pasta de drivers (Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/) e delete j20s_novatek_ts_fw01.bin, finalmente renomeie  j20s_novatek_ts_fw02.bin para j20s_novatek_ts_fw01.bin

# Instalar Drivers

> Substitua `<vayudriversfolder>` pelo local da pasta de drivers
> Abra o cmd como administrador

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

  
# Crie arquivos do carregador de inicialização do Windows para o EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

  
  

# Permitir driver não assinado

> Se você não fizer isso, receberá um BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

# Inicialize no Windows
> Eu recomendo ter um microSD para armazenar as imagens de inicialização

> Para que você não precise de um pc para empurrar os arquivos.

### Mova o arquivo `<uefi.img>` para o dispositivo
```cmd
adb push <uefi.img> /sdcard
```

##### se você tiver um cartão microSD, use este

```cmd
adb push <uefi.img> /external_sd
```


### Faça um backup de sua imagem de inicialização existente
> Você precisa fazer isso apenas uma vez

> Coloque-o no cartão microSD, se possível

### Atualize a imagem uefi do twrp.
navegue até o arquivo `uefi.img` e atualize-o na inicialização.

# Inicialize novamente no Android
> use seu backup da imagem de inicialização via twrp.

# Finalizado!
