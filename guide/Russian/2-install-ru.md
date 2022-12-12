# Установка Windows
> Вам нужно будет отключить MTP в разделе "Монтирование"

## Переместите нужные утилиты в телефон:
```cmd
adb push msc.sh /sbin
```

### Запустите скрипт

```cmd
adb shell sh /sbin/msc.sh
```


## Назначние букв разделам


#### Запуск diskpart

> Когда ваш телефон определился как диск

```cmd
diskpart
```

### Назначение буквы `x` разделу Windows

#### Выбор раздела Windows в телефоне
> Используйте `list volume` для того чтобы найти раздел Windows, обычно он предпоследний

```diskpart
select volume <number>
```

#### Назначение буквы `x`
```diskpart
assign letter=x
```

### Назначение буквы `x` разделу ESP

#### Выбор раздела ESP в телефоне
> Используйте `list volume` для того чтобы найти раздел Windows, обычно он последний

```diskpart
select volume <number>
```

### Назначение буквы `y`

```diskpart
assign letter=y
```

### Выход из diskpart:
```diskpart
exit
```


## Установка Windows

> Замените `<path/to/Install.wim>` действительным путём к  install.wim,

> `install.wim` находится в папке sources внутри вашего iso
> Вы можете получить этот файл распаковав его(или смонтировав)

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

# Проверьте, какой у вас тип панели

> В TWRP перейдите в Дополнительно->Терминал

 ```cmd
 cat /proc/cmdline
```
> Ищите экран в почти самом внизу

> Если ваше устройство `<tianma>`: j20s_36

> Если ваше устройство `<huaxing>`: j20s_42 и перейдите в папку драйверов (Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/) и удалите j20s_novatek_ts_fw01.bin, наконец, переименуйте j20s_novatek_ts_fw02.bin в j20s_novatek_ts_fw01.bin

# Установка драйверов

> Замените `<vayudriversfolder>` путём к папке с вашими драйверами

> Откройте cmd от имени администратора

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```



# Создайте файлы загрузчика Windows для EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```




# Разрешите неподписанные драйвера

> Если вы этого не сделаете, вы получите BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

# Загрузитесь в Windows
> Я рекомендую иметь microSD, на котором вы храните загрузочные образы, для того чтобы не использовать комьютер для загрузки в ту или иную ОС.

### Переместите файл `<uefi.img>` на устройство

```cmd
adb push <uefi.img> /sdcard
```

##### Если вы используете sd карту используйте это

```cmd
adb push <uefi.img> /external_sd
```


### Сделайте резервную копию текущего загрузочного раздела
> Вам нужно сделать это только один раз

> Поместите его на карту microSD, если это возможно


### Прошейте UEFI используя TWRP.
Найдите файл `uefi.img` и прошейте его в boot.

# Загрузитесь обратно в Android
> Используйте вашу резервную копию в TWRP.

# Готово!
