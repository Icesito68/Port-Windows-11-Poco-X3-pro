## Усунення проблем


### Пристрій може завантажитися в Android, але не у завантажувач

> Необхідні файли: [platfrom-tools](https://developer.android.com/studio/releases/platform-tools)

Це спричинено розділами з назвами томів, які завантажувач не може обробити, щоб виправити це:

- Завантажте телефон в завантажувач

- Підключіть телефон до ПК

- Відкрийте cmd на ПК

- Запустіть ```adb shell```

- Запустіть ```parted```

- Запустіть ```print```, щоб отримати список усіх розділів

- Шукайте розділи, у назвах яких є пробіли, наприклад, "Basic Data Partition", і запам’ятовуйте номер їх тому

- Тепер запустіть ```rm <номер тому>```, наприклад ```rm 36```


### BOUND_IMAGE_UNSUPPORTED BSOD під час першого завантаження Windows

> Необхідні файли: [platform-tools](https://developer.android.com/studio/releases/platform-tools), [СТАРИЙ образ UEFI](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/releases/download/old_uefi/vayu_old_uefi.zip), [НОВИЙ образ UEFI](http://github.com/degdag/edk2-msm/releases/latest)

- Завантажте телефон в завантажувач

- Підключіть телефон до ПК

- Відкрийте cmd на ПК

- Запустіть ```fastboot boot <old_uefi.img>```, обов’язково замінивши ```<old_uefi.img>``` на відповідний образ

- Після завантаження телефону в Windows знову перезавантажте телефон у fastboot

- Запустіть ```fastboot boot <new_uefi.img>```, обов’язково замінивши ```<new_uefi.img>``` на відповідний образ


### Сенсорний екран не працює

- Вимкніть і ввімкніть дисплей


### Дотики до сенсорного екрана неточні/перевернуті

Ви неправильно налаштували драйвер сенсорного екрану, щоб виправити це [дотримуйтеся цієї частини посібника](https://github.com/Icesito68/Port-Windows-11-Poco-X3-pro/blob/main/guide/Ukrainian/2-install-uk.md#Дізнайтесь-який-у-вас-тип-панелі)
