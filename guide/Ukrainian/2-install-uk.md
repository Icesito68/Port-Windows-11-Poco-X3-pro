# Встановлення Windows
> Вам потрібно вимкнути MTP в розділі "Монтування"

### Запустіть скрипт

```cmd
adb shell msc.sh
```


## Призначення літер розділам


#### Запуск diskpart

> Коли ваш телефон визначився як диск

```cmd
diskpart
```

### Призначення літери `X` разделу Windows

#### Вибір розділа Windows в телефоні
> Використовуйте `list volume` для того, щоб знайти розділ Windows, звичайно він передостанній

```diskpart
select volume <number>
```

#### Призначення літери `X`
```diskpart
assign letter=x
```

### Призначення літери `Y` розділу ESP

#### Вибір розділа ESP в телефоні
> Використовуйте `list volume` для того, щоб знайти розділ ESP, звичайно він останній

```diskpart
select volume <number>
```

### Призначення літери `Y`

```diskpart
assign letter=y
```

### Вихід із diskpart:
```diskpart
exit
```


## Встановлення Windows

> Замініть `<path/to/install.wim>` дійсним шляхом до install.wim,

> `install.wim` знаходиться в папці sources всередині вашого ISO

> Ви можете отримати цей файл розпакувавши або смонтувавши йего

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

# Дізнайтесь який у вас тип панелі

> Відкрийте cmd от імені Адміністратора

```cmd
adb shell cat /proc/cmdline
```
> Шукайте екран майже в самом низу

> Якщо ваш пристрій має панель `<tianma>`: j20s_36

> Якщо ваш пристрій має панель `<huaxing>`: j20s_42, то перейдіть в папку драйверів тачскріну (Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/) і видаліть j20s_novatek_ts_fw01.bin, після чого, перейменуйте j20s_novatek_ts_fw02.bin в j20s_novatek_ts_fw01.bin

# Встановлення драйверів

> Замініть `<vayudriversfolder>` шляхом к папці с вашими драйверами

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

# Створіть файли завантажувача Windows

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

# Дозвольте непідписані драйвера

> Якщо ви цього не зробите, то отримаєте BSOD

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

# Завантажтеся у Windows

### Скопіюйте файл `<uefi.img>` на пристрій

```cmd
adb push <uefi.img> /sdcard
```

##### Якщо ви маєте microSD карту, то скопіюйте файл на неї

```cmd
adb push <uefi.img> /external_sd
```


### Зробіть резервну копію поточного загрузочного розділа
> Вам потрібно це зробити тільки один раз

> Помістіть його на microSD карту, якщо можливо


### Прошийте UEFI через TWRP
Знайдіть файл `uefi.img` і прошийте його в boot

# Завантажтеся назад в Android
> Використовуйте резервну копію в TWRP

# Готово!
