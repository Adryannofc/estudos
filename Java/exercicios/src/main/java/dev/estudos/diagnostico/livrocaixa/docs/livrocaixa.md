# Prova D1 · Java — Livro-caixa

> [!WARNING]
> Prova de autonomia: **sem IA, sem tutorial e sem solução pronta.** Consultar a documentação oficial (Javadoc, tutoriais da Oracle, guia do JUnit) é permitido. Desative o Copilot e qualquer assistente de código **antes** de iniciar o cronômetro.

| Item | Detalhe |
|---|---|
| **Tempo** | 90 minutos, com cronômetro |
| **Linguagem** | Java 21, sem Spring |
| **Ferramentas** | VS Code, Maven Wrapper e JUnit Jupiter (já configurados no `pom.xml`) |
| **Pacote** | `dev.estudos.diagnostico.livrocaixa` |
| **Código** | `src/main/java/dev/estudos/diagnostico/livrocaixa/` |
| **Testes** | `src/test/java/dev/estudos/diagnostico/livrocaixa/` |
| **Como rodar** | `.\mvnw test`, a partir de `Java/exercicios` |
| **Onde escrever decisões e explicações** | `notas/D1-livro-caixa.md` |

---

## 1. Contexto

Um **livro-caixa** é o caderno em que um pequeno comércio anota todo o dinheiro que entra e sai do caixa. Quem abre o caderno quer saber uma coisa: **quanto sobrou até agora?** Esse valor é o **saldo**.

Uma boa analogia é o extrato de uma conta bancária: cada linha é um acontecimento (dinheiro que entrou ou saiu), e o saldo é o resultado de todas as linhas, na ordem em que aconteceram.

## 2. Enunciado oficial

> Implemente um livro-caixa que recebe eventos `Entrada` e `Saida` e totaliza o saldo usando `BigDecimal`.
>
> - Rejeitar valor nulo e negativo; não usar `double` para dinheiro.
> - Utilizar classes imutáveis ou `records`; adicionar testes para ordem dos eventos, zero e saldo insuficiente.
> - Explicar estrutura de dados, `equals`/`hashCode` e tratamento de falhas.

As seções seguintes **detalham** esse texto. Elas não acrescentam exigências além dele, exceto onde marcado como restrição do ambiente.

---

## 3. Requisitos detalhados

### 3.1 Eventos

- Existem dois tipos de evento: **`Entrada`** (dinheiro que entra) e **`Saida`** (dinheiro que sai).
- Todo evento carrega um **valor monetário**.
- Um evento representa algo que já aconteceu. Depois de criado, **não muda**.

### 3.2 Livro-caixa

- Começa **vazio**, com saldo zero.
- Recebe eventos **um a um, em sequência**. A ordem em que chegam é a ordem em que aconteceram.
- Informa o **saldo total**: o que entrou menos o que saiu.

### 3.3 Dinheiro

- Todo valor monetário usa **`BigDecimal`**: atributos, parâmetros, retornos e também os testes.
- **`double` e `float` não podem aparecer em nenhum ponto**, nem indiretamente (por exemplo, ao construir um `BigDecimal` a partir de um `double`).

### 3.4 Valores inválidos

- Valor **nulo** e valor **negativo** devem ser rejeitados.
- "Rejeitar" significa que a operação **não é concluída**, quem chamou é **informado da falha** e o livro-caixa **não fica com dado inválido**.

### 3.5 Saldo insuficiente

- Há saldo insuficiente quando uma `Saida` tem valor **maior** que o saldo disponível **no momento** em que ela acontece.
- Uma `Saida` exatamente igual ao saldo disponível **não** é insuficiente.
- Nesse caso o sistema deve **informar a falha**. *Quando* e *como* é decisão sua (seção 6).

### 3.6 Ordem dos eventos

- Os mesmos eventos, em ordens diferentes, podem levar a resultados diferentes.
- Seu código e seus testes devem tratar isso de forma explícita.

### 3.7 Imutabilidade

- Use **`record`** ou **classe imutável**: campos `final`, sem métodos que alterem o estado e sem expor estado mutável por referência (atenção especial com coleções).
- No mínimo, os **eventos** devem ser imutáveis. Para o próprio livro-caixa, decida e justifique (seção 6).

---

## 4. Exemplos de comportamento

Estes exemplos mostram **o quê**, não **como**. Eles **não são os seus testes**: você deve escrever os seus, com mais casos.

| Situação | Resultado esperado |
|---|---|
| `Entrada` 100,00 e depois `Saida` 30,00 | Saldo 70,00 |
| Livro vazio, `Entrada` 50,00 e depois `Saida` 80,00 | Falha por saldo insuficiente |
| `Entrada` com valor -10,00 | Falha por valor negativo |
| `Entrada` com valor nulo | Falha por valor nulo |

---

## 5. Testes

### Obrigatórios

O enunciado pede, no mínimo, testes para:

1. **Ordem dos eventos**
2. **Zero**
3. **Saldo insuficiente**

### Boas práticas esperadas

- Um comportamento por teste, com nome que descreve a regra.
- Verificar exceções com `assertThrows`, conferindo o tipo.
- Testes independentes entre si, sem depender da ordem de execução.

### Complementares recomendados

- Valor nulo e valor negativo.
- Livro vazio.
- Saldo exatamente suficiente.
- Valores com casas decimais (pense em por que `double` não serve).
- Depois de uma falha, o livro-caixa continua consistente?

> [!TIP]
> **Autoverificação:** quando tudo passar, quebre uma regra de propósito (por exemplo, remova uma validação) e confirme que **pelo menos um teste falha**. Um teste que nunca falha não valida nada.

---

## 6. Decisões que ficam com você

O enunciado **não responde nenhuma destas perguntas, de propósito**. Escolha, implemente, **teste a escolha** e registre o motivo em `notas/D1-livro-caixa.md`.

| # | Ponto | Pergunta |
|---|---|---|
| 1 | Modelagem dos eventos | Dois tipos distintos ou um tipo único com um campo que diferencia? |
| 2 | Momento da falha por saldo insuficiente | No registro da `Saida` ou no cálculo do saldo? O evento rejeitado entra no livro? |
| 3 | Valor zero | É válido ou inválido? |
| 4 | Escala do `BigDecimal` | `10.0` e `10.00` são o mesmo valor? Normalizar, arredondar ou aceitar como vêm? |
| 5 | Tipo de exceção | Checada ou não checada? Existente ou própria? Por quê? |
| 6 | Imutabilidade do livro-caixa | Imutável (cada registro devolve um novo livro) ou mutável de forma controlada? |
| 7 | Cálculo do saldo | Calculado sob demanda a partir dos eventos ou mantido acumulado? |

---

## 7. Explicações obrigatórias

Responda **por escrito, com suas palavras**, em `notas/D1-livro-caixa.md`. As perguntas abaixo orientam; não precisa respondê-las uma a uma, mas a explicação deve cobrir o que elas tocam.

### 7.1 Estrutura de dados

- Que estrutura você usou para guardar os eventos e por quê?
- Que alternativas considerou e por que descartou?
- A estrutura preserva a ordem? Isso importa para o problema?
- Qual o custo (Big O) de registrar um evento e de calcular o saldo? Vale manter o saldo acumulado?

### 7.2 `equals` e `hashCode`

- O que significa "dois eventos serem iguais" no seu modelo? Quais campos entram na comparação?
- Se usou `record`, o que ele gera para você? Se usou classe, como implementou?
- Por que `hashCode` precisa ser coerente com `equals`?
- Como o `BigDecimal` se comporta em `equals` e em `compareTo`? Qual o impacto no seu modelo?
- Dois eventos iguais podem coexistir no livro? Deveriam?

### 7.3 Tratamento de falhas

- Quais falhas são possíveis e que exceção usou para cada uma?
- Onde validou e por que ali? Falhar cedo ou tarde?
- Depois de uma falha, o estado do livro-caixa continua consistente? Como você sabe?
- A mensagem de erro ajuda quem chamou a entender o problema?

---

## 8. Restrições

| Restrição | Detalhe |
|---|---|
| **Sem IA** | Nenhum assistente de código, chat ou autocompletar generativo |
| **Sem solução pronta** | Nenhum tutorial, repositório ou exemplo que resolva este problema |
| **Consulta permitida** | Documentação da linguagem e das bibliotecas: Javadoc, tutoriais da Oracle, guia do JUnit |
| **Dependências** (restrição do ambiente) | Só o JDK e o JUnit já configurados. Não adicione bibliotecas ao `pom.xml`. |
| **Escopo** | Não é preciso criar `main`, CLI, API nem persistência |

---

## 9. Entregáveis

- [ ] Código no pacote `dev.estudos.diagnostico.livrocaixa`
- [ ] Testes no mesmo pacote, em `src/test`, com `.\mvnw test` **verde**
- [ ] Decisões da seção 6 registradas, com o motivo
- [ ] Explicações da seção 7 escritas
- [ ] **Commit feito antes de pedir qualquer feedback**
- [ ] Registro de tempo preenchido (seção 13)

---

## 10. Sugestão de cronograma

O tempo é uma sugestão para se organizar, não um limite de aprovação.

| Minutos | Atividade |
|---:|---|
| 0–10 | Ler o enunciado, decidir os pontos da seção 6 e rascunhar o modelo no papel |
| 10–45 | Implementar eventos e livro-caixa |
| 45–70 | Escrever os testes e rodar a autoverificação |
| 70–85 | Escrever decisões e explicações |
| 85–90 | Revisar o checklist e fazer o commit |

Se não terminar, **registre onde parou, o raciocínio e o próximo passo**. Isso também é avaliado.

---

## 11. Como será a avaliação

Cada eixo recebe nota de **0 a 4**. Para dispensar a revisão, **todos precisam ser ≥ 3**.

| Eixo | O que se avalia | Evidência | Nota 3 significa |
|---|---|---|---|
| **Compreensão** | Você explica o porquê das escolhas | Seções 6 e 7 | Explica estrutura, `equals`/`hashCode` e falhas com precisão, inclusive o `BigDecimal` |
| **Implementação** | O código cumpre o enunciado | Código e checklist | Atende todos os requisitos da seção 3 com decisões coerentes |
| **Debugging** | Você investiga e corrige falhas sozinho | Registro de pelo menos um erro encontrado e como foi diagnosticado | Localiza a causa, e não só o sintoma |
| **Validação** | Os testes provam o comportamento | `.\mvnw test` e autoverificação | Cobre os três testes obrigatórios e falha quando uma regra é quebrada |

| Nota | Significado |
|---:|---|
| 0 | Ainda não reconheço o assunto |
| 1 | Reconheço quando vejo um exemplo |
| 2 | Faço seguindo um roteiro |
| 3 | Resolvo uma variação, testo e explico com consulta pontual |
| 4 | Comparo alternativas, diagnostico falhas e ajudo outra pessoa |

Se algum eixo ficar **abaixo de 3**, revise só os tópicos relevantes e refaça a prova com **outro enunciado**.

---

## 12. Checklist oficial de pronto

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

---

## 13. Registro da prova

| Campo | Valor |
|---|---|
| **Data** | |
| **Início** | __:__ |
| **Fim** | __:__ |
| **Tempo total** | |
| **Consultei** | (documentação, o quê) |
| **Terminei tudo?** | sim / não. Se não, onde parei e qual o próximo passo |
| **Commit antes do feedback** | |
