# Setup

> Get the gpt_both0.bin file from releases

> Open cmd


## Restore stock partition table
```
Fastboot flash partition:0 gpt_both0.bin
```

> The step below isn't needed if your data partition was decrypted

## Erase user data to avoid Android breaking
```
Fastboot -w
```
