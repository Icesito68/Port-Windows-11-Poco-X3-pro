Обновление драйверов в Windows
#### Запустите TWRP с помощью fastboot используя комьютер 

```cmd
fastboot boot <twrp.img>
```

> Если у вас уже установлен TWRP, просто зажмите кнопки питания и громкости + при запуске телефона

## Переместите скрипт msc в телефон

```cmd
adb push msc/sbin
```

### Выполнение скрипта msc

```cmd
adb shell sh /sbin/msc
```

## Назначение буквы диску

#### Запуск diskpart

> Когда X3 Pro определиться как диск

```cmd
diskpart
```


### Назначение буквы `x` разделу Windows

#### Выберите раздела Windows на телефоне
> Используйте list volume, чтобы найти его, обычно это предоследний раздел.
```diskpart
select volume <номер>
```

#### Назначение буквы x
```diskpart
assign letter=x
```

### Выход из diskpart:
```diskpart
exit
```


# Установка драйверов

> Замените `<vayudriversfolder>` на ваше название папки с драйверами.

> Откройте cmd от имени администратора


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

##### Загрузка с загрузочного образа UEFI

```
fastboot flash boot <uefi.img>
```




# Готово!
