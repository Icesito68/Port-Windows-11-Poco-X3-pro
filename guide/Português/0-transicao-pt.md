## Transição do guia antigo para o novo
> você não precisa fazer esta etapa se não seguiu o guia antigo



> Substituir <gpt_both0.bin> com o caminho para o arquivo gpt_both0.bin. Você pode encontrá-lo no [releases page](../../../../releases/tag/binaries)


# Restaurar tabelas de partições padrão

```cmd
fastboot flash partition:0 <gpt_both0.bin>
```

# Apague os dados do usuário para evitar o bootloop (não é necessário se os dados do usuário forem descriptografados)
```cmd
fastboot -w
```

## [Próximo passo: Partição](/guide/Português/1-particao-pt.md)
