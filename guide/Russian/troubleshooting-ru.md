## Устранение проблем


### Устройство может загружаться в Android, но не в загрузчик

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


### BOUND_IMAGE_UNSUPPORTED BSOD при первой загрузке Windows

Необходимые файлы: [platform-tools](https://developer.android.com/studio/releases/platform-tools), [СТАРЫЙ образ UEFI](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/releases/download/old_uefi/vayu_old_uefi.zip), [НОВЫЙ образ UEFI](http://github.com/degdag/edk2-msm/releases/latest)

- Загрузитесь в загрузчик

- Подключите телефон к ПК

- Откройте cmd на ПК

- Запустите ```fastboot boot <old_uefi.img>```, обязательно заменив ```<old_uefi.img>``` на соответствующий образ

- После того, как телефон загрузится в Windows, снова перезагрузитесь в загрузчик

- Запустите ```fastboot boot <new_uefi.img>```, обязательно заменив ```<new_uefi.img>``` на соответствующий образ


### Сенсорный экран не работает

- Включите и выключите дисплей


### Касания сенсорного экрана неточны/перевернуты

Вы неправильно настроили драйвер сенсорного экрана, чтобы исправить это [следуйте этой части руководства](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/guide/Russian/2-install-ru.md#Узнайте-ваш-тип-панели)
