#### Paleiskite TWRP recovery per kompiuterį su šia komanda

```cmd
fastboot boot <twrp.img>
```

> Jeigu jūsų telefone TWRP jau įrašytas, laikykite įjungimo ir vol+ mygtukus įjungiant telefoną


## Išsiųskite skriptą į telefoną

```cmd
adb push msc /sbin
```

### Paleiskite šį skriptą

```cmd
adb shell sh /sbin/msc
```

## Priskirkite raides diskams

#### Paleiskite Windows diskų tvarkytuvę

> Kai X3 Pro yra aptiktas kaip diskas

```cmd
diskpart
```


### Priskirkite `x` Windows diskui

#### Pasirinkite telefono Windows diską
> Naudokite `list volume` norint tai rasti, dažniausiai taip būna paskutinis pasirinkimas

```diskpart
select volume <number>
```

#### Priskirkite raidę x
```diskpart
assign letter=x
```

### Išeikite iš diskpart:
```diskpart
exit
```


# Įrašykite draiverius

> Pakeiskite `<vayudriversfolder>` su draiverių aplanko vieta

> Atidarykite komandinę eilutę su administratoriaus teisėmis


```cmd
.\driverupdater.exe -d <vayudriversfolder>\definitions\Desktop\ARM64\Internal\vayu.txt -r <vayudriversfolder> -p X:
```


##### Paleiskite Windows sistemą su UEFI atvaizdu #####

```
fastboot flash boot <uefi.img>
```

  
  

# Darbas užbaigtas!
