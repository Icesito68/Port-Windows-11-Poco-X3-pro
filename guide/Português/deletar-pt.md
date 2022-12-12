# Setup

> Obtenha o arquivo gpt_both0.bin dos lançamentos

> Abra o cmd

## Restaurar tabela de partição Padrão
```
Fastboot flash partition:0 gpt_both0.bin
```

> A etapa abaixo não é necessária se sua partição de dados foi descriptografada

## Apague os dados do usuário para evitar a quebra do Android
```
Fastboot -w
```
