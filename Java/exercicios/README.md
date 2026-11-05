# Exercícios Java

Projeto Maven para exercícios de Java, organizados por tópico. As notas registram os enunciados e o progresso.

## Requisitos

- JDK 25 LTS. O alvo de compilação é Java 25, definido por `maven.compiler.release` no [pom.xml](pom.xml).
- O Maven é fornecido pelo Wrapper (`mvnw`).

### Conferir o JDK no Windows

No PowerShell, execute estes comandos a partir de `Java/exercicios`.

```powershell
java -version
javac -version
.\mvnw.cmd -v
```

Se o Maven mostrar uma versão diferente da esperada, confira se `JAVA_HOME` aponta para a pasta do JDK escolhido e se o `bin` desse mesmo JDK tem precedência no `Path`.

## Estrutura

- [`src/main/java/dev/estudos/playground/`](src/main/java/dev/estudos/playground/) · Experimentos rápidos.

## Convenções

| Item | Regra |
|---|---|
| **Pacote do exercício** | `dev.estudos.<tópico>.eNN<nome>`, por exemplo `dev.estudos.logica.e01primos` |
| **Classes** | Nome em PascalCase dentro do pacote: `Primos.java` |
| **Testes** | Mesmo pacote em `src/test`, classe terminada em `Test`: `PrimosTest.java` |
| **Nota** | `notas/E01-primos.md` |
| **Numeração** | Global e sequencial (E01, E02, ...), independente do tópico |
| **Provas diagnósticas** | Prefixo `D` (D1, D2, D3), sem número `E` |

O nome do arquivo `.java` não pode ter hífen, por isso a nota usa `E01-primos` e o código usa `e01primos` e `Primos`.

## Como adicionar um exercício

1. Escolha o tópico (ou crie um pacote novo em `src/main/java/dev/estudos/`, com um `package-info.java`).
2. Crie o subpacote `eNN<nome>` com a classe, e o mesmo subpacote em `src/test` com o teste.
3. Crie `notas/ENN-nome.md` e preencha enunciado, abordagem, complexidade e aprendizado.
4. Rode `.\mvnw test` e faça um commit pequeno em português.

## Como executar

Execute os comandos abaixo em `Java/exercicios`.

| Objetivo | Comando |
|---|---|
| Compilar | `.\mvnw.cmd compile` |
| Compilar e rodar os testes quando forem adicionados | `.\mvnw.cmd test` |

Em Linux ou macOS, use `./mvnw` no lugar de `.\mvnw.cmd`.

## Quando criar outro projeto

Este projeto é só Java e JUnit, de propósito. Trabalho com Spring Boot (prova D3, API do portfólio) deve ficar em projeto próprio, gerado pelo [Spring Initializr](https://start.spring.io), para não misturar dependências nem o parent do Spring Boot com os exercícios de Java puro.
