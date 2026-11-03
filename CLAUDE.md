# Repositório de estudos

Repositório público de estudos de engenharia backend com Java + Spring Boot, seguindo o plano "Backend Java + Spring: do zero ao avançado" (revisão 02/11/2026). Idioma: português (BR) em notas, commits e comentários; identificadores de código em inglês.

## Estrutura

- A estrutura é enxuta de propósito e cresce sob demanda; não recrie pastas vazias "por antecipação".
- `_templates/` tem modelos de nota, exercício e diário; comece novos arquivos a partir deles.
- O plano prevê 17 módulos, provas de diagnóstico (D1 Java, D2 SQL + HTTP, D3 Spring Core), projetos de consolidação e ADRs; crie as pastas só quando forem usadas.

## Como me ajudar a estudar

- O plano mede autonomia: tentar sozinho por 20 a 40 minutos antes de pedir implementação. Dê pistas, revise o design, explique erros e sugira casos de teste; entregue a solução completa só se for pedida.
- Ao corrigir um exercício, explique o erro antes de mostrar a solução.
- Verifique versões (Java 25 LTS, Spring Boot 4.1.x). Starters e APIs mudaram na série Boot 4 (ex.: `spring-boot-starter-webmvc`, `@MockitoBean`); confira o Initializr e a documentação antes de copiar exemplos.
- Ordem do plano: JDBC + SQL antes de JPA; Spring Core antes de Boot avançado; monólito modular antes de microsserviços; métricas antes de otimizar.

## Convenções

- Arquivos em `kebab-case`; exercícios prefixados (`E01-...`).
- Projetos Maven com `mvnw` versionado.
- O repositório é público: nunca commitar `.env`, credenciais, tokens, dados reais nem material com direitos de terceiros. Use dados sintéticos.
