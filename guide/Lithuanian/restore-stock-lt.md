## Atstatykite įprastinę particijos lentelę

### Kam to reikia?

Jeigu sekėte seną gidą, jūsų particijų sąrašo eilės bus per daug skirtingos, ir tai gali turėti pasekmių jeigu neatstatysite įprastinės particijos lentelės.

Jeigu norite pašalinti Windows sistemą, šis gidas yra naudojamas tam, kad rankiniu būdu ištrinant particijas niekas nebūtų sugadinta dėl žmogaus klaidos + rašant visą gidą, skirtą tik Windows sistemos pašalinimui

Jeigu norėsite užrakinti telefono sistemos paleidyklę (bootloader), telefonui reikalinga įprastinė, nemodifikuota particijos lentelė.
### Privalomi failai

[gpt_both0.bin](../../../../releases/tag/binaries)

### Pastabos

> Pakeiskite ```<gpt_both0.bin>``` su keliu į gpt_both0.bin failą.


## Atstatykite GPT

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

## Ištrinkite userdata, kad išvengti sistemos beribio persikrovimo ciklo (bootloop), ir atstatyti FS dydį

```cmd
fastboot -w
```
