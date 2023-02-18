Šis žingsnis yra privalomas, kad galima būtų sukurti particijas kur bus įrašyti Windows

## Pastabos:
> **Dėmesio** jeigu vėliau arba dabar ištrinsite bet kurią particiją per diskpart, Windows išsiųs UFS komandą, kuri bus nesuprasta ir ištrins visą UFS saugyklą
- Visi jūsų duomenys bus ištrinti! Jeigu reikia, padarykite atsarginęs kopijas dabar.
- Šios komandos buvo išbandytos.
- Nekreipkite dėmęsio į `udevadm` įspėjimus
- Nenaudokite tos pačios komandos daugiau nei vieną kartą
- NEPERKRAUKITE TELEFONO, jeigu manote, kad padarėte klaidą, klauskite pagalbos [Telegram pokalbiuose](https://t.me/winonvayu)

#### Paleiskite telefoną į TWRP per kompiuterį su šia komanda:
```cmd
fastboot boot <twrp.img>
```
> Jeigu jūsų telefone TWRP jau įrašytas, laikykite įjungimo ir vol+ mygtukus įjungiant telefoną

#### Atmontuokite visas particijas
Eikite į TWRP nustatymus ir atmontuokite visas particijas

## Paleiskite ADB shell
```cmd
adb shell
```

### Pakeiskite particijos lentelės dydį
> Kad tilptų Windows particijos
```sh
sgdisk --resize-table 64 /dev/block/sda
```

### Paleiskite parted
```sh
parted /dev/block/sda
```


### Ištrinkite `userdata` particiją
> Galite patikrinti, kad 32 yra userdata particijos numeris paleidžiant šią komandą
>  `print all`
```sh
rm 32
```

### Sukurkite particijas
> Jeigu gausite įspėjamą pranešimą prašantį ignoruoti arba atšaukti, rašykite i ir spauskite enter

#### Skirta 128Gb modeliams:

- Sukurkite Android duomenų particiją
```sh
mkpart userdata ext4 11.8GB 68.6GB
```

- Sukurkite pagrindinę particiją, kur bus įrašyti Windows
```sh
mkpart win ntfs 68.6GB 126GB
```

- Sukurkite ESP particiją (čia bus laikoma Windows paleidimo instrukcijos ir EFI failai)
```sh
mkpart esp fat32 126.6GB 127GB
```


#### Skirta 256Gb modeliams:

- Sukurkite Android duomenų particiją
```sh
mkpart userdata ext4 11.8GB 134.6GB
```

-  Sukurkite pagrindinę particiją, kur bus įrašyti Windows
```sh
mkpart win ntfs 134.6GB 254GB
```

- Sukurkite ESP particiją (čia bus laikoma Windows paleidimo instrukcijos ir EFI failai)
```sh
mkpart esp fat32 254GB 255GB
```


### Padarykite ESP particiją paleidžiamą, kad EFI disko atvaizdas galėtų tai aptikti
```sh
set 34 esp on
```

### Išeikite iš parted
```sh
quit
```

### Perkraukite telefoną į TWRP

### Jūsų kompiuteryje paleiskite komandinę eilutę iš naujo
```cmd
adb shell
```

### Suformatuokite particijas
-  Suformatuokite ESP particiją kaip FAT32
```sh
mkfs.fat -F32 -s1 /dev/block/by-name/esp -n ESPVAYU
```

-  Suformatuokite Windows particiją kaip NTFS
```sh
mkfs.ntfs -f /dev/block/by-name/win -L WINVAYU
```

- Suformatuokite Android duomenų particiją

Eikite į išvalymo meniu ir paspauskite Format Data, 
tada parašykite `yes`.

### Patikrinkite, ar Android sistema vis dar pasileidžia
Perkraukite telefona, ir patikrinkite ar Android operacinė sistema pilnai pasileidžia


## [Kitas žingsnis: Įdiegti Windows](/guide/Lithuanian/2-install-lt.md)
