## Transition From old guide to the new one
> you don't need to do this step if you haven't followed the old guide



> Replace <gpt_both0.bin> with the path to the gpt_both0.bin file. you can find it on the [releases page](../../../../releases/tag/binaries)


# Restore stock partition table

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

# Erase userdata to avoid bootloop (not needed if userdata decrypted)
```cmd
fastboot -w
```

## [Next step: Partiton](/guide/1-partition-en.md)
