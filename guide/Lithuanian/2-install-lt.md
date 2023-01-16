# Įdiekite Windows
> Jūs turėsite būti išjungę MTP esančiame Mount meniu

### Paleiskite msc skriptą

```cmd
adb shell msc.sh
```

  

## Priskirkite raides diskams

  

#### Paleiskite Windows diskų tvarkytuvą

> Kai X3 Pro yra aptiktas kaip diskas

```cmd
diskpart
```


### Priskirkite `X` Windows diskui

#### Pasirinkite telefono Windows diską
> Naudokite `list volume` komandą norint tai rasti, jie pavadinti "WINVAYU" ir "ESPVAYU"

```diskpart
select volume <number>
```

#### Priskirkite raidę X
```diskpart
assign letter=x
```

### Priskirkite `Y` ESP diskui

#### Pasirinkite telefono ESP diską

> Naudokite `list volume` norint tai rasti, dažniausiai taip būna paskutinis pasirinkimas

```diskpart
select volume <number>
```

#### Priskirkite raidę Y

```diskpart
assign letter=y
```

### Išeikite iš diskpart:
```diskpart
exit
```

  
  

## Įdiegimas

> Pakeiskite `<path/to/install.wim>` su egzistuojančiu install.wim failo keliu,

> `install.wim` failas yra sources aplanke, ISO disko viduje
> Jūs tai galite gauti arba užmontavę, arba atskleidę ISO failą kaip archyvą

```cmd
dism /apply-image /ImageFile:<path/to/install.wim> /index:1 /ApplyDir:X:\
```

# Patikrinkite, kokią ekrano panelę turi jūsų telefonas

> Atidarykite komandinę eilutę

```cmd
adb shell cat /proc/cmdline
```
> Ieškokite `msm_drm.dsi_display0` eilutės, kuri yra beveik apačioje

> Jeigu jūsų įrenginys yra `Tianma`, msm_drm.dsi_display0 bus `dsi_j20s_36_02_0a_video_display`

> Jeigu jūsų įrenginys yra `Huaxing`, msm_drm.dsi_display0 bus `dsi_j20s_42_02_0b_video_display`, jeigu taip ir yra, eikite į draiverių aplanką (Vayu-Drivers/components/QC8150/Device/DEVICE.SOC_QC8150.VAYU/Drivers/Touch/) ir ištrinkite j20s_novatek_ts_fw01.bin, galiausiai pervadinkite j20s_novatek_ts_fw02.bin į j20s_novatek_ts_fw01.bin

# Įrašykite draiverius

> Pakeiskite `<vayudriversfolder>` su draiverių aplanko vieta

```cmd
driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```

  

# Sukurkite Windows paleidimo instrukcijų failus skirtas EFI

```cmd
bcdboot X:\Windows /s Y: /f UEFI
```

  
  

# Leiskite nepasirašytus draiverius

> Jeigu to nepadarysite, paleidžiant sistemą gausite BSOD klaidą

```cmd
bcdedit /store Y:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on
```

# Paleiskite į Windows

### Perkelkite `<uefi.img>` failą į savo įrenginį

```cmd
adb push <uefi.img> /sdcard
```

##### Jeigu naudojate microSD kortelę, naudokite šią komandą

```cmd
adb push <uefi.img> /external_sd
```


### Padarykite atsarginę kopiją jūsų egzistuojančio boot atvaizdo
> Jums tai reikės padaryti tik vieną kartą

> Jeigu įmanoma, įkelkite tai į microSD kortelę


### Įrašykite uefi atvaizdą iš TWRP
Nueikite iki `uefi.img` failo vietos, ir įrašykite tai į boot particiją

# Perkraukite telefoną atgal į Android sistemą
> Naudokite jūsų atsarginės kopijos padarytą boot atvaizdą iš TWRP

# Darbas užbaigtas!
