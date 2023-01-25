Оновлення драйверів у Windows
#### Запустіть TWRP за допомогою fastboot використовуючи комп'ютер

```cmd
fastboot boot <twrp.img>
````

> Якщо у вас вже встановлено TWRP, просто затисніть кнопки живлення та гучності + під час запуску телефону

## Скопіюйте сценарій msc.sh у телефон

```cmd
adb push msc/sbin
````

### Виконання сценарію msc.sh

```cmd
adb shell sh /sbin/msc
````

## Призначення літери диску

#### Запуск diskpart

> Коли ваш POCO X3 Pro визначився як диск

```cmd
diskpart
````

### Призначення літери `x` розділу Windows

#### Виберіть розділ Windows на телефоні
> Використовуйте list volume, щоб знайти його, зазвичай це передостанній розділ.
```diskpart
select volume <номер>
````

#### Призначення літери x
```diskpart
assign letter=x
````

### Вихід з diskpart:
```diskpart
exit
````

# Встановлення драйверів

> Замініть `<vayudriversfolder>` на вашу назву теки з драйверами.

> Відкрийте cmd від імені адміністратора

```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
````

##### Завантаження із завантажувального образу UEFI

````
fastboot flash boot <uefi.img>
