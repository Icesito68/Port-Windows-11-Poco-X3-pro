# Настройка

> Скачайте файл gpt_both0.bin с вкладки releases

> Откройте cmd


## Восстановите стандартную таблицу разделов
```
fastboot flash partition:0 gpt_both0.bin
```

> Шаг ниже не требуется делать, если ваш раздел data расшифрован

## Сотрите userdata, чтобы избежать поломки Android
```
Fastboot -w
```
