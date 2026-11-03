# Diagnóstico D1 · Java — livro-caixa

Prova de autonomia (90 min, sem tutorial e sem IA). Parte do plano *Backend Java + Spring: do zero ao avançado*.

## Enunciado

Implemente um livro-caixa que recebe eventos `Entrada` e `Saida` e totaliza o saldo usando `BigDecimal`.

- Rejeitar valor nulo e negativo; não usar `double` para dinheiro.
- Utilizar classes imutáveis ou `records`; adicionar testes para ordem dos eventos, zero e saldo insuficiente.
- Explicar estrutura de dados, `equals`/`hashCode` e tratamento de falhas.

## Como executar

Requisitos: JDK 21.

```powershell
.\mvnw test
```

## Checklist de pronto

- [ ] Livro-caixa recebe eventos `Entrada` e `Saida`
- [ ] Saldo total com `BigDecimal`
- [ ] Rejeita valor nulo e negativo
- [ ] Nenhum `double` para dinheiro
- [ ] Classes imutáveis ou `records`
- [ ] Teste: ordem dos eventos
- [ ] Teste: zero
- [ ] Teste: saldo insuficiente
- [ ] Explicação: estrutura de dados
- [ ] Explicação: `equals`/`hashCode`
- [ ] Explicação: tratamento de falhas

## Decisões de design

Registre cada escolha e o motivo.

| Ponto | Decisão | Motivo |
|---|---|---|
| Modelagem dos eventos (dois tipos ou um com campo de tipo) | | |
| Quando falha o saldo insuficiente | | |
| O que a ordem dos eventos afeta | | |
| Tratamento do valor zero | | |
| Escala do `BigDecimal` (`10.0` vs `10.00`) | | |
| Tipo de exceção | | |

## Explicações

### Estrutura de dados

### `equals` e `hashCode`

### Tratamento de falhas
