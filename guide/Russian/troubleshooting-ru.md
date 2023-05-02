<img align="right" src="https://github.com/wormstest/src_vayu_windows/blob/main/2Poco X3 Pro Windows.png" width="350" alt="Windows 11 Running On A Poco X3 Pro">


# Запуск Windows на POCO X3 Pro

## Устранение проблем

### Устройство может загружаться в Android, но не в загрузчик


### Необходимые файлы: 

- [ADB & Fastboot](https://developer.android.com/studio/releases/platform-tools)

>Необходимые файлы: [platform-tools](https://developer.android.com/studio/releases/platform-tools)

Это вызвано разделами с именами томов, которые загрузчик не может обработать, чтобы исправить это:

- Загрузитесь в загрузчик

- Подключите телефон к ПК

- Откройте cmd на ПК

- Запустите ```adb shell```

- Запустите ```parted```

- Запустите ```print```, чтобы вывести список всех разделов.

- Найдите разделы с пробелами в именах, например «Basic Data Partition», и запишите их номер тома.

- Теперь запустите ```rm <номер тома>``` например, ```rm 36```


### Касания сенсорного экрана неточны/перевернуты

Вы неправильно настроили драйвер сенсорного экрана, чтобы исправить это [следуйте этой части руководства](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/guide/Russian/2-install-ru.md#Узнайте-ваш-тип-панели)