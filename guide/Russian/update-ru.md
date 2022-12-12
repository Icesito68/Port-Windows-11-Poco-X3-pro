#### Запустите TWRP используя комьютер с помощью fastboot

``cmd
fastboot boot <twrp.img>
```

> Если у вас уже установлен TWRP, просто зажмите кнопки питания и громкости + при запуске телефона


## Переместите скрипт msc

```cmd
adb push msc/sbin
```

### Выполнение скрипта

```cmd
adb shell sh /sbin/msc
```

## Назначение буквы дискам

#### Запуск diskpart

> Когда X3 Pro определяется как диск

```cmd
diskpart
```


### Назначение буквы `x` разделу Windows

#### Выберите раздела Windows на телефоне
> Используйте «list volume», чтобы найти его, обычно это предоследний раздел.
```diskpart
select volume <номер>
```

#### Назначение буквы x
```diskpart
assign letter=x
```

### Выход из diskpart:
```diskpart
выход
```


# Установка драйверов

> Замените `<vayudriversfolder>` на путь папки с драйверами.

> Откройте cmd от имени администратора


```cmd
.\driverupdater.exe -d <папка vayudrivers>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


##### Загрузка с загрузочного образа UEFI #####

```
fastboot flash boot <uefi.img>
```




# Готово!
