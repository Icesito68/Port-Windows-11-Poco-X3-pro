## Restore stock partition table

### Why is this needed?

If you have followed the old guide your partition order will be too different and may have some consequenced if you dont restore your stock partition table.

If you want to uninstall windows this is used instead of deleting partitions manually to avoid human error + writing a whole dedicated guide to just uninstalling.

If you want to relock your bootloader you'll need your partition table to be stock.

### Dependencies

[gpt_both0.bin](../../../../releases/tag/binaries)

### Notes

> Replace ```<gpt_both0.bin>``` with the path to the gpt_both0.bin file.


## Restore GPT

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

## Erase userdata to avoid bootloop and restore FS size
```cmd
fastboot -w
```
