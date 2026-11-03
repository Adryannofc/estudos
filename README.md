# Estudos

Repositório público onde compilo meu aprendizado: anotações, exercícios e projetos.

**Foco atual:** engenharia backend com **Java + Spring Boot**, seguindo o plano *Backend Java + Spring: do zero ao avançado* (revisão de 02/11/2026): Java 25 LTS, Spring Boot 4.1.x, PostgreSQL, Spring Security e arquitetura.

## Estrutura

A estrutura cresce conforme o estudo avança; por enquanto:

| Pasta | Conteúdo |
|---|---|
| `_templates/` | Modelos de nota, exercício e diário |

## Convenções

- **Notas**: Markdown em `kebab-case`, começando de um template de `_templates/`.
- **Exercícios**: prefixados com número (`E01-primos.md`, `E01-Primos.java`).
- **Commits**: pequenos e frequentes, em português, descrevendo o que foi aprendido.
- **Projetos**: devem compilar, rodar, passar nos testes e ser reproduzíveis só com o README. Sem credenciais no código.
- **Maven Wrapper** (`mvnw`) sempre versionado nos projetos; dependências geradas pelo [Spring Initializr](https://start.spring.io).
