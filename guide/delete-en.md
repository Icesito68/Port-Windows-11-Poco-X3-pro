# Setup
```
Get the gpt_both0.bin file from releases
Open cmd
```

## Restore stock partition table
Fastboot flash partiton:0 gpt_both0.bin

## Erase user data to avoid Android breaking (not needed if decrypted)
Fastboot -w
