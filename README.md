# Estudos

Repositório público onde compilo meu aprendizado: anotações, exercícios, projetos e recursos.

**Foco atual:** engenharia backend com **Java + Spring Boot**, seguindo o plano *Backend Java + Spring: do zero ao avançado* (revisão de 02/11/2026): Java 25 LTS, Spring Boot 4.1.x, PostgreSQL, Spring Security e arquitetura.

## Estrutura

| Pasta | Conteúdo |
|---|---|
| `diagnostico/` | Provas D1 (Java), D2 (SQL + HTTP) e D3 (Spring Core) em `java/`, `sql/`, `spring/`, mais `retrospectiva.md` |
| `modulos/` | Os 17 módulos do plano, cada um com `notas/` e `exercicios/` |
| `projetos/` | Projetos de consolidação, um por subpasta, cada um com README, testes e instruções de execução |
| `caderno-engenharia/` | Erro observado, hipótese, experimento, decisão e o que investigar depois |
| `adrs/` | Registros de decisões de arquitetura |
| `diario/` | Registro diário/semanal (`AAAA-MM-DD.md`) |
| `_recursos/` | Links, livros, cursos e cheat sheets |
| `_templates/` | Modelos de nota, exercício e diário |
| `scripts/` | Automações (novo módulo/tópico, nova entrada de diário) |

## Módulos

1. Lógica de programação em Java
2. Java OOP, APIs e coleções
3. Estruturas de dados e algoritmos
4. JVM, Maven, Git e Linux
5. Redes, HTTP e contratos
6. SQL, PostgreSQL e JDBC
7. Spring Core e Spring Boot
8. API REST com Spring MVC
9. Spring Data JPA e Hibernate
10. Spring Security
11. Testes automatizados
12. Código limpo e arquitetura modular
13. Docker, CI/CD e entrega
14. Observabilidade e desempenho
15. Cache, filas e processamento assíncrono
16. DDD, JVM e concorrência avançada
17. System Design e sistemas distribuídos

## Convenções

- **Notas**: Markdown em `kebab-case`, começando de um template de `_templates/`.
- **Exercícios**: prefixados com número (`E01-primos.md`, `E01-Primos.java`).
- **Commits**: pequenos e frequentes, em português, descrevendo o que foi aprendido (`modulo 01: adiciona exercício de números primos`).
- **Projetos**: devem compilar, rodar, passar nos testes e ser reproduzíveis só com o README. Sem credenciais no código.
- **Maven Wrapper** (`mvnw`) sempre versionado nos projetos; dependências geradas pelo [Spring Initializr](https://start.spring.io).

## Ambiente

Git, Maven Wrapper por projeto, JDK (alvo: Temurin 25 LTS; 21 LTS para materiais mais antigos) e VS Code com o Java Extension Pack. PostgreSQL local ou via Docker quando chegar o módulo 6.

```powershell
java -version
git --version
.\mvnw.cmd --version   # dentro de um projeto Spring
```

## Novo tópico

```powershell
./scripts/novo-topico.ps1 -Nome "ingles-tecnico"   # cria modulos/ingles-tecnico/{notas,exercicios}
./scripts/novo-diario.ps1                          # cria diario/AAAA-MM-DD.md
```
