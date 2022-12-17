# Установка Windows
> Вам нужно будет отключить MTP в разделе "Монтирование"

### Запустите скрипт

```cmd
adb shell msc.sh
```


## Назначние букв разделам


#### Запуск diskpart

> Когда ваш телефон определился как диск

```cmd
diskpart
```

### Назначение буквы `X` разделу Windows

#### Выбор раздела Windows в телефоне
> Используйте `list volume` для того, чтобы найти раздел Windows, обычно он предпоследний

```diskpart
select volume <number>
```

#### Назначение буквы `X`
```diskpart
assign letter=x
```

### Назначение буквы `Y` разделу ESP

#### Выбор раздела ESP в телефоне
> Используйте `list volume` для того, чтобы найти раздел Windows, обычно он последний

```diskpart
select volume <number>
```

### Назначение буквы `Y`

```diskpart
assign letter=y
```

### Выход из diskpart:
```diskpart
exit
```


## Установка Windows

> Замените `<path/to/install.wim>` действительным путём к install.wim,

> `install.wim` находится в папке sources внутри вашего ISO

> Вы можете получить этот файл распаковав или смонтировав его

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

# Проверьте, какой у вас тип панели

> Откройте cmd от имени Администратора

```cmd
adb shell cat /proc/cmdline
```
> Ищите экран почти в самом внизу

> Если ваше устройство `<tianma>`: j20s_36

> Если ваше устройство `<huaxing>`: j20s_42 и перейдите в папку драйверов (Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/) и удалите j20s_novatek_ts_fw01.bin, наконец, переименуйте j20s_novatek_ts_fw02.bin в j20s_novatek_ts_fw01.bin

# Установка драйверов

> Замените `<vayudriversfolder>` путём к папке с вашими драйверами

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```



# Создайте файлы загрузчика Windows

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```




# Разрешите неподписанные драйвера

> Если вы этого не сделаете, то получите BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

# Загрузитесь в Windows

### Скопируйте файл `<uefi.img>` на устройство

```cmd
adb push <uefi.img> /sdcard
```

##### Если у вас есть microSD карта, то скопируйте файл на нее

```cmd
adb push <uefi.img> /external_sd
```


### Сделайте резервную копию текущего загрузочного раздела
> Вам нужно сделать это только один раз

> Поместите его на microSD карту, если возможно


### Прошейте UEFI через TWRP
Найдите файл `uefi.img` и прошейте его в boot

# Загрузитесь обратно в Android
> Используйте вашу резервную копию в TWRP

# Готово!
