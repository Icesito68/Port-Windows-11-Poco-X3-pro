Esta etapa é necessária para que façamos partições onde ficará nossa instalação do Windows

## Notas:
> **Aviso** se você excluir qualquer partição via diskpart mais tarde ou agora, o Windows enviará um comando ufs que será mal interpretado, o que apagará todos os seus ufs
- Esses comandos foram testados.
- Ignorar os avisos `udevadm`.
- Não execute o mesmo comando duas vezes
- NÃO REINICIALIZE SEU TELEFONE se achar que cometeu um erro, peça ajuda no [Telegram chat](https://t.me/winonvayu)

#### Inicialize a recuperação TWRP através do PC com o comando
```cmd
fastboot boot <twrp.img>
```
> Se você já possui o TWRP instalado, basta segurar os botões power e vol+ na inicialização

#### Desmonte todas as partições
Vá para as configurações do TWRP e desmonte todas as partições

## Empurre as ferramentas necessárias:
```cmd
adb push parted /sbin
```

## Inicie o shell ADB
```cmd
adb shell
```

# Configure as Partições
#### Dê permissões corretas para as ferramentas
```sh
chmod +x /sbin/*
```

### Redimensione as tabelas de partições
> Para que as partições do Windows se encaixem
```sh
sgdisk --resize-table 64 /dev/block/sda
```

### Iniciar particionamento
```sh
parted /dev/block/sda
```


### Exclua a partição `userdata`
> Você pode ter certeza de que 32 é o número que está executando a partição userdata
>  `print all`
```sh
rm 32
```

### Criar partições
> Se você receber qualquer mensagem de aviso dizendo para ignorar ou cancelar, basta digitar i e apertar "Enter"

#### Para modelos de 128Gb:

- Crie a partição ESP (armazena dados do bootloader do Windows e arquivos EFI)
```sh
mkpart esp fat32 11.8GB 12.2GB
```

- Crie a partição principal onde o Windows será instalado
```sh
mkpart win ntfs 12.2GB 70.2GB
```

- Crie a partição de dados do Android
```sh
mkpart userdata ext4 70.2GB 127GB
```

#### Para modelos de 256Gb:

- Crie a partição ESP (armazena dados do bootloader do Windows e arquivos EFI)
```sh
mkpart esp fat32 11.8GB 12.2GB
```

- Crie a partição principal onde o Windows será instalado
```sh
mkpart win ntfs 12.2GB 132.2GB
```

- Crie a partição de dados do Android
```sh
mkpart userdata ext4 132.2GB 255GB
```


### Torne a partição ESP inicializável para que a imagem EFI possa detectá-la
```sh
set 32 esp on
```

### Saia do particionamento
```sh
quit
```

### Reinicie via TWRP

### Inicie o shell novamente no seu PC
```cmd
adb shell
```

### Formate partições
-  Formate a partição ESP como FAT32
```sh
mkfs.fat -F32 -s1 /dev/block/by-name/esp
```

-  Formate a partição do Windows como NTFS
```sh
mkfs.ntfs -f /dev/block/by-name/win
```

- Formatar dados
Vá para o menu Limpar e pressione Formatar dados,
então digite `yes`.

### Verifique se o Android ainda inicia
Apenas reinicie o telefone e veja se o Android ainda funciona


## [Próximo passo: Instalar o Windows](/guide/Português/2-instalacao-pt.md)
