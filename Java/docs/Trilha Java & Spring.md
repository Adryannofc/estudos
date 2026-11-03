# ☕ Backend com Java & Spring Boot

## Do primeiro programa à primeira vaga — e além

> **Seu objetivo:** conseguir a primeira oportunidade em desenvolvimento backend, construindo uma base que permita continuar evoluindo.
>
> **Rota principal:** Java → SQL → HTTP → Spring Boot → testes e segurança → entrega → candidaturas.
>
> **Regra do plano:** uma etapa termina quando você consegue **construir, testar, explicar e modificar** sua entrega.

**Edição:** 2 de novembro de 2026 · **Revisão:** 3, recalibrada ao seu perfil e com biblioteca ampliada · **Ritmo real:** ~20 h/semana · **Ponto de partida:** Java intermediário (Java 21 + Spring Boot já em uso) · **Materiais:** prioridade a gratuitos, com alternativas pagas opcionais.

> [!tip] O que mudou na revisão 3 — leia isto primeiro
> 1. **O plano foi escrito para um iniciante a 10 h/semana; você não é esse leitor.** A nova [[#00 · Revisão 3 — diagnóstico e rota recalibrada|seção 00]] traz uma rota acelerada a 20 h/semana que começa por **provas de diagnóstico**, não pela semana 1.
> 2. **Alerta de carreira:** estágio no Brasil exige matrícula e frequência ativas. Com a faculdade trancada, a estratégia de candidatura mudou (detalhes na seção 00).
> 3. **Materiais por etapa:** cada fase agora tem um bloco 📌 com vídeo, curso, prática e leitura — sem precisar caçar na biblioteca.
> 4. **Biblioteca ampliada** (seção 11): canais PT-BR e EN, cursos estruturados gratuitos, plataformas de exercício, livros por fase, podcasts, comunidades, ferramentas e certificações.
> 5. **Seções novas:** inglês técnico (20), fundamentos que faltavam — design, Java moderno, LGPD, IA, system design (21), laboratório multi-tenant ligado ao seu SaaS da faculdade (22), e organização no Obsidian + técnicas de memorização (23).

---

<a id="sumario"></a>
## 🧭 Sumário

0. [[#00 · Revisão 3 — diagnóstico e rota recalibrada|Revisão 3: diagnóstico e rota recalibrada]] 🆕
1. [[#01 · Como usar este plano|Como usar este plano]]
2. [[#02 · Mapa da jornada e prazos|Mapa da jornada e prazos]]
3. [[#03 · Ambiente e versões|Ambiente e versões]]
4. [[#04 · Rotina que transforma conteúdo em habilidade|Rotina de estudos]]
5. [[#05 · Fundamentos — semanas 1–14|Fundamentos: semanas 1–14]]
6. [[#06 · Backend com Spring Boot — semanas 15–22|Backend com Spring: semanas 15–22]]
7. [[#07 · Qualidade, segurança e entrega — semanas 23–30|Qualidade e entrega: semanas 23–30]]
8. [[#08 · Portfólio e primeira vaga — semanas 31–36|Portfólio e candidaturas: semanas 31–36]]
9. [[#09 · Trilha avançada — semanas 37–60+|Trilha avançada: semanas 37–60]]
10. [[#10 · Portfólio — dois projetos, evolução visível|Projetos e critérios de aceitação]]
11. [[#11 · Biblioteca curada|Biblioteca de vídeos, cursos e documentação]] ✏️ ampliada
12. [[#12 · Preparação para entrevistas|Preparação para entrevistas]]
13. [[#13 · Painel de acompanhamento|Painel de acompanhamento]]
14. [[#14 · Primeiros sete dias|Primeiros sete dias]]
15. [[#15 · Fontes, decisões e limites|Fontes, decisões e limites]] ✏️ enxugada
16. [[#16 · Oficinas de engenharia backend|Oficinas de engenharia backend]]
17. [[#17 · Projetos complementares e desafios|Projetos complementares e desafios]]
18. [[#18 · Provas práticas e recuperação|Provas práticas e plano de recuperação]]
19. [[#19 · Registro da revisão minuciosa|Registro da revisão 2]]
20. [[#20 · Inglês técnico — trilha paralela|Inglês técnico — trilha paralela]] 🆕
21. [[#21 · Fundamentos que faltavam|Fundamentos que faltavam]] 🆕
22. [[#22 · Laboratório multi-tenant|Laboratório multi-tenant]] 🆕
23. [[#23 · Obsidian e técnicas de estudo|Obsidian e técnicas de estudo]] 🆕
24. [[#24 · Registro da revisão 3|Registro da revisão 3]] 🆕

> [!note] Navegação no Obsidian
> Os links acima usam o formato nativo `[[#Título]]`, que funciona no modo leitura e na edição. As âncoras `<a id>` antigas foram mantidas por compatibilidade com outros visualizadores de Markdown.

---

<a id="revisao-3"></a>
## 00 · Revisão 3 — diagnóstico e rota recalibrada

### ✅ O que o plano já faz muito bem (manter)

| Ponto forte | Por que importa |
|---|---|
| Critério "construir, testar, explicar e modificar" | É exatamente o que uma entrevista técnica cobra — e é a melhor defesa contra a "ilusão de competência" de quem só assiste aula |
| Uma API principal evolutiva (v0.1 → v1.1) | Recrutador vê **um** projeto profundo, não dez CRUDs rasos |
| Matriz de testes T01–T12 | Regras de negócio viram evidência verificável |
| Honestidade sobre limitações (atomicidade ≠ concorrência, CORS ≠ autorização) | Isso é raciocínio de engenheiro, e aparece nas suas respostas de entrevista |
| Oficinas O1–O7 | Cobrem o que cursos costumam pular: transações reais, integrações, recuperação |

### ⚠️ Problemas encontrados nesta revisão

| # | Gravidade | Problema | Correção aplicada |
|---|---|---|---|
| R1 | 🔴 Alta | Plano calibrado para **iniciante a 10 h/semana**; você tem Java intermediário, usa Java 21/Spring Boot, é Tech Lead de um projeto e estuda ~20 h/semana | Rota acelerada abaixo, com diagnóstico obrigatório na semana 1 |
| R2 | 🔴 Alta | O plano trata **estágio** como porta de entrada, mas estágio exige matrícula ativa — e a faculdade está trancada | Estratégia de candidatura em duas frentes (abaixo) |
| R3 | 🟠 Média | Toda documentação está em inglês e seu inglês é básico; 1 h/semana genérica não fecha essa lacuna | Trilha paralela de inglês técnico (seção 20) |
| R4 | 🟠 Média | **Multi-tenancy** aparece como "especialização sem urgência", mas é o problema real do seu SaaS na faculdade | Laboratório dedicado (seção 22), conectado à autorização do projeto 2 |
| R5 | 🟠 Média | Materiais concentrados na seção 11, longe das etapas | Blocos 📌 "Materiais da etapa" dentro de cada fase |
| R6 | 🟡 Baixa | Faltavam: Java moderno (21+), design/SOLID com senso crítico, LGPD, uso de IA no trabalho, system design para entrevista | Seção 21 |
| R7 | 🟡 Baixa | Seção 08 citava recorte de Pernambuco (herdado dos PDFs) | Substituído por Foz do Iguaçu/região + remoto Brasil |
| R8 | 🟡 Baixa | Seções 15 e 19 tinham bastidores da geração do plano (subagentes, Miro, caminhos de PDF na pasta Downloads) | Enxugadas; o essencial foi mantido |
| R9 | 🟡 Baixa | Sumário com âncoras HTML, que o Obsidian não navega bem | Links `[[#...]]` nativos |

### 🚀 Rota recalibrada — 20 h/semana, partindo de Java intermediário

> **Analogia:** o plano original é um GPS que parte da sua casa antiga. Você já está no meio do caminho. Em vez de dirigir de volta para "começar do começo", as provas de diagnóstico dizem **onde você realmente está** — e o GPS recalcula a partir daí.

**Como ler a tabela:** as "semanas-referência" são as do plano original (a 10 h/semana). A coluna "Sua semana" é o calendário real a 20 h/semana. Se uma prova de diagnóstico falhar, você **não reprova** — apenas faz a etapa correspondente inteira.

| Sua semana | Fase | Semanas-referência cobertas | Foco real | Saída para avançar |
|---:|---|---|---|---|
| 1 | **Diagnóstico** | — | As três provas da [[#01 · Como usar este plano\|seção 01]] (Java, SQL, API) sem IA e sem tutorial; preencher a rubrica 0–4 da seção 13 | Mapa honesto de lacunas |
| 2–3 | **Java moderno + testes** | A2 (5–8) + B1 (9–10), comprimidos | Records, sealed, pattern matching, `switch` moderno, streams avançados, `equals/hashCode`, `BigDecimal`, JUnit/parametrizados, oficina O2 | Prova da semana 10 aprovada |
| 4–6 | **SQL de verdade** | B2 (11–14) | JOINs, agregações, transações, índices, JDBC puro; pgexercises completo | Prova da semana 14 aprovada |
| 7–10 | **Spring + JPA** | C1–C3 (15–22) | HTTP, contrato, MVC, JPA, Flyway, N+1, oficina O3 | API v0.4 + prova da semana 22 |
| 11–15 | **Qualidade e entrega** | D1–D4 (23–30) | Testes, Testcontainers, segurança, Docker, CI, deploy; oficinas O4, O5, O7 | API v1.0 + prova da semana 30 |
| 16–18 | **Portfólio e carreira** | E (31–36) | README, demo, currículo, simulações; **candidaturas começam já na semana 10** | Rotina de candidatura rodando |
| 19–30 | **Aprofundamento** | F1–F6 (37–60) + seção 22 | Observabilidade, concorrência, eventos, cache, multi-tenancy | Laboratórios com relatórios |

**Distribuição das 20 h semanais:**

| Bloco | Horas | Observação |
|---|---:|---|
| Curso e documentação | 4 h | Um curso principal por fase, nunca dois em paralelo |
| Implementação | 9 h | No **seu** projeto, não no projeto do curso |
| Testes, depuração e revisão espaçada | 2 h | Inclui flashcards (seção 23) |
| Inglês técnico | 3 h | Trilha da seção 20 — aumentado porque é sua maior alavanca de médio prazo |
| Carreira | 2 h | Vagas, LinkedIn/GitHub, simulações |

> [!warning] O risco de quem já sabe um pouco
> O maior perigo para o seu perfil **não** é falta de conteúdo — é pular etapas por familiaridade. "Já usei JPA" ≠ "sei explicar por que esse `@Transactional` não reverteu". Por isso a regra continua: só pule uma etapa se passar na prova dela **com um enunciado novo**.

### 🎯 Estágio × faculdade trancada — estratégia em duas frentes

A [Lei do Estágio (Lei 11.788/2008)](https://www.planalto.gov.br/ccivil_03/_ato2007-2010/2008/lei/l11788.htm) define estágio como ato educativo para quem **frequenta** ensino regular, e exige termo de compromisso com a instituição de ensino. Com a matrícula trancada, na prática você não consegue assinar um estágio até voltar. Não sou advogado — confirme com a coordenação da UniAmérica e com o RH de cada vaga —, mas o plano precisa considerar isso.

| Frente | Agora (faculdade trancada) | Quando reativar a matrícula |
|---|---|---|
| **Vagas-alvo** | Júnior, trainee, "desenvolvedor Java" de entrada, freelance/PJ | Estágio volta a ser opção — e costuma ter barreira de entrada menor |
| **Calendário** | Candidaturas a partir da sua semana 10 (API v0.4) | Programas de estágio costumam abrir seleção meses antes do início; acompanhe as datas a partir do semestre anterior ao retorno |
| **Evidência** | API do projeto 2 + liderança técnica no SaaS + trabalhos freelance **reais** | Somar a matrícula ativa à mesma evidência |

> **Freelance é experiência.** Se você entregou sites para clientes reais, isso pode entrar no currículo e no LinkedIn como "Desenvolvedor web freelancer", com o que foi entregue. Só não infle o escopo — vale a mesma regra de honestidade do plano.

---

<a id="como-usar"></a>
## 01 · Como usar este plano

### 🎯 O que significa estar preparado

Para começar a disputar uma vaga, procure demonstrar que você consegue implementar uma funcionalidade pequena, lidar com dados e erros, escrever testes, usar Git e explicar suas escolhas. O processo seletivo e os requisitos de cada empresa continuam sendo a referência final.

**Você não precisa concluir a trilha avançada para se candidatar.** Estágio e programas de formação podem fazer sentido ainda durante a base, se você atender aos requisitos anunciados. Para júnior, use a API funcional e sua autonomia como sinais de preparo.

### Premissas ajustáveis

| Tema | Decisão adotada | Como adaptar |
|---|---|---|
| Experiência | Começar pelos fundamentos | Pular apenas conteúdos que você consegue demonstrar em exercício novo |
| Tempo | 10 horas por semana | Usar a tabela de ritmos e preservar prática e revisão |
| Orçamento | Formação gratuita como caminho completo | Comprar um curso somente se organização, suporte ou correção fizerem diferença |
| Mercado | Primeira vaga no Brasil | Filtrar localização, modalidade, formação e requisitos reais dos anúncios |
| Idioma | Explicações e vídeos em português; documentação em inglês | Ler trechos curtos e manter um glossário próprio |
| Projetos | Um projeto pequeno e uma API principal evolutiva | Trocar o domínio se isso aumentar seu interesse, mantendo os critérios técnicos |

### Diagnóstico opcional para quem já estudou

| Prova | Desafio | Pode abreviar quando… |
|---|---|---|
| Java · 60–90 min | Registrar despesas, validar valores e resumir por categoria | Implementa, testa e explica classes e coleções sem solução pronta |
| SQL · 60 min | Modelar clientes e pedidos; escrever JOIN, agregação e uma transação | Explica chaves, duplicidade, rollback e resultado das consultas |
| API · 90–120 min | Criar endpoint com validação, persistência e teste | Explica o fluxo HTTP → serviço → banco e altera uma regra sozinho |

Pode consultar a documentação da linguagem. Para avaliar autonomia, não siga uma resolução nem peça a implementação à IA. Se não souber começar, siga a etapa correspondente; isso é diagnóstico, não reprovação.

---

<a id="jornada"></a>
## 02 · Mapa da jornada e prazos

```text
FUNDAMENTOS             CONSTRUÇÃO                  PRIMEIRA VAGA
Java + Git + testes ──→ SQL + HTTP + Spring ──→ API testada + apresentação
       1–14                    15–22                     23–36
                                                            │
                                                            ▼
                         EVOLUÇÃO CONTÍNUA
            Operação → desempenho → eventos → arquitetura
                              37–60+
```

### Cronograma de referência

| Etapa | Semanas | Horas previstas | Entrega principal |
|---|---:|---:|---|
| A · Linguagem e ferramentas | 1–8 | 80 h | Aplicação Java no terminal |
| B · Qualidade básica e dados | 9–14 | 60 h | Regras testadas + banco modelado |
| C · API com Spring Boot | 15–22 | 80 h | API de pedidos persistente |
| D · Segurança e entrega | 23–30 | 80 h | API protegida, testada e reproduzível |
| E · Consolidação e carreira | 31–36 | 60 h | Portfólio apresentado + rotina de candidatura |
| F · Aprofundamento | 37–60 | 240 h | Laboratórios de operação, concorrência e arquitetura |

**Total de referência:** 360 h até a consolidação do portfólio; 600 h incluindo a trilha avançada. As horas incluem teoria, prática, revisão e carreira. São estimativas de organização, não garantia de domínio, senioridade ou contratação.

### Ajuste ao seu ritmo

| Disponibilidade | Base de 360 h | Trilha total de 600 h | Orientação |
|---|---:|---:|---|
| 6 h/semana | 60 semanas | 100 semanas | Estudar menos assuntos ao mesmo tempo |
| 10 h/semana | 36 semanas | 60 semanas | Ritmo usado neste documento |
| 15 h/semana | 24 semanas | 40 semanas | Distribuir a prática; evitar maratonas só de vídeo |

Esses cálculos não incluem férias e pausas. Reserve semanas extras quando um critério de avanço ainda não estiver atendido. Se você já tem base, pode chegar ao momento de candidatura antes dessas datas.

**Planejamento com margem:** se quiser reservar 20% para revisão, imprevistos e recuperação, planeje cerca de **432 horas para a base** e **720 horas para o percurso completo**. A 10 h/semana, isso corresponde a aproximadamente 44 e 72 semanas. Essa margem é uma escolha de planejamento, não uma estimativa científica de aprendizagem.

**Regra de escopo da revisão:** as oficinas da seção 16 ocupam os blocos de prática já existentes e substituem exercícios equivalentes. Projetos extras da seção 17 são opcionais: escolha um para substituir uma extensão ou acrescente suas horas ao calendário. Não some todos ao cronograma de 600 horas.

### Prioridades para não se perder

| 🔴 Base prioritária | 🟡 Fortalecimento do portfólio | 🔵 Aprofundamento posterior |
|---|---|---|
| Java, lógica e orientação a objetos | Docker e CI | Kubernetes e orquestração |
| Git, Maven e depuração | Testcontainers | Mensageria e sistemas distribuídos |
| SQL, HTTP, REST e autorização básica | Documentação e integrações externas | DDD e arquitetura hexagonal aprofundados |
| Spring MVC, JPA e testes | Deploy, logs e diagnóstico | Tuning da JVM, cache e profiling |

Essa classificação organiza o estudo; anúncios específicos podem mudar a prioridade. Segurança e testes entram no projeto antes de expô-lo para uso real.

---

<a id="ambiente"></a>
## 03 · Ambiente e versões

### Stack escolhida

| Componente | Escolha | Por quê |
|---|---|---|
| Linguagem | Java 25 LTS, distribuição Eclipse Temurin | Base moderna; evitar recursos preview nesta trilha |
| Framework | Spring Boot 4.x estável | Projeto novo com dependências compatíveis geradas pelo Initializr |
| Build | Maven + Maven Wrapper | Executar o mesmo build localmente e na integração contínua |
| Banco | PostgreSQL | Aprender SQL, integridade e transações em banco relacional |
| Persistência | JDBC introdutório → Spring Data JPA/Hibernate | Entender SQL antes de abstrair seu acesso |
| Testes | JUnit, Mockito e Testcontainers | Separar lógica isolada de integração real |
| Entrega | Docker Compose + GitHub Actions | Execução reproduzível e testes automáticos |
| IDE | IntelliJ IDEA, Eclipse ou VS Code com suporte Java | Escolher uma e aprender o depurador |

**Política de versões:** conferir o patch estável no [Spring Initializr](https://start.spring.io/) e os [requisitos oficiais do Boot](https://docs.spring.io/spring-boot/system-requirements.html) quando criar o projeto. Registrar Java, Boot e banco no README. A página de requisitos consultada apresentava Boot 4.1.2; isso é uma referência da consulta, não uma versão obrigatória para sempre.

O [Temurin](https://adoptium.net/temurin/releases/) oferece Java 25 e 21 LTS. Java 21 pode ser usado quando um curso ou projeto o exigir, desde que compatível com a versão do framework.

> [!info] Revisão 3 — Java 21 ou 25?
> Você já trabalha com **Java 21** no dia a dia. Recomendação: mantenha 21 nos projetos da faculdade e use **25 no projeto 2 do portfólio**. Assim você aprende o que mudou entre as duas LTS (bom assunto de entrevista) sem quebrar o que já funciona. Se for tentar a certificação OCP (seção 11), ela hoje cobre Java 21.

### 🛠️ Ferramentas complementares (revisão 3)

| Ferramenta | Para que serve | Quando instalar |
|---|---|---|
| [SDKMAN!](https://sdkman.io/) (WSL/Linux) ou [winget](https://learn.microsoft.com/windows/package-manager/winget/) | Trocar entre JDK 21 e 25 sem bagunçar o `PATH` | Semana 1 |
| [DBeaver Community](https://dbeaver.io/) | Cliente de banco gráfico; ver planos de execução | Etapa de SQL |
| [Bruno](https://www.usebruno.com/) | Cliente HTTP cujas coleções ficam **em arquivos no repositório** (versionáveis) | Etapa de HTTP |
| [WSL 2](https://learn.microsoft.com/windows/wsl/) | Linux dentro do Windows; base para Docker e para a oficina O1 | Antes do Docker |
| [k6](https://grafana.com/docs/k6/latest/) | Teste de carga com scripts | Trilha avançada (F2/F3) |
| [JDK Mission Control](https://www.oracle.com/java/technologies/jdk-mission-control.html) | Ler gravações do JFR | F3 |
| [ArchUnit](https://www.archunit.org/) | Testes que verificam regras de arquitetura ("controller não acessa repository") | F5 |

> **Atenção aos cursos antigos:** aulas com Boot 3 e Java 17 continuam úteis para conceitos, mas configurações, starters, imports e testes podem mudar. Faça o exercício na versão do curso em um projeto separado ou adapte com o [guia oficial de migração](https://github.com/spring-projects/spring-boot/wiki/Spring-Boot-4.0-Migration-Guide). Não misture dependências por tentativa e erro.

### Instalar por necessidade

1. **Semana 1:** JDK, IDE e Git.
2. **Etapa de testes:** Maven Wrapper e JUnit.
3. **Etapa de SQL:** PostgreSQL e um cliente de banco.
4. **Etapa de HTTP:** cliente de requisições, como Bruno/Postman, ou curl.
5. **Semana 23, antes de Testcontainers:** ambiente Docker compatível; imagens, contêineres, portas e ciclo de execução em nível básico.
6. **Etapa de entrega:** aprofundar Docker Compose e configurar GitHub Actions.

Verificações no PowerShell:

```powershell
java -version
javac -version
git --version

# Dentro de um projeto Maven que inclua o Wrapper:
.\mvnw.cmd --version
.\mvnw.cmd test
.\mvnw.cmd verify
```

Se a máquina tiver recursos limitados, comece com Java e PostgreSQL locais. Introduza contêineres depois. Não é necessário instalar toda a stack no primeiro dia.

**Alternativa quando contêineres não forem viáveis:** executar testes de integração em uma instância PostgreSQL exclusiva de teste, com recriação e limpeza documentadas. Nunca usar dados pessoais ou um banco de produção. Retome Testcontainers quando houver ambiente compatível; não substitua silenciosamente PostgreSQL por H2 e assuma equivalência.

---

<a id="rotina"></a>
## 04 · Rotina que transforma conteúdo em habilidade

### Semana de 10 horas

| Bloco | Tempo | Resultado esperado |
|---|---:|---|
| Curso e documentação | 2 h | Um conceito compreendido e anotado com exemplo próprio |
| Implementação | 5 h | Uma funcionalidade ou conjunto de exercícios funcionando |
| Testes, depuração e revisão | 1 h | Um erro explicado ou comportamento protegido por teste |
| Inglês técnico | 1 h | Leitura de documentação + resumo curto |
| Carreira e retrospectiva | 1 h | Análise de vagas, apresentação ou revisão do plano |

Na fase de candidatura, transfira uma hora de conteúdo para entrevistas e aplicações. Testes também fazem parte da implementação; a hora reservada é uma revisão adicional.

> [!tip] Revisão 3
> No seu ritmo real (~20 h), use a distribuição da [[#00 · Revisão 3 — diagnóstico e rota recalibrada|seção 00]]. Para as técnicas de revisão espaçada e flashcards dentro do Obsidian, veja a [[#23 · Obsidian e técnicas de estudo|seção 23]].

### Sessão sugerida de 90 minutos

| Minutos | Atividade |
|---|---|
| 0–10 | Relembrar o assunto anterior sem olhar as notas |
| 10–25 | Estudar um conceito pequeno |
| 25–70 | Resolver ou implementar |
| 70–85 | Testar, investigar erros e refatorar |
| 85–90 | Commit e registro da próxima ação |

**Revisão:** volte ao assunto aproximadamente em 1, 7 e 30 dias. Refaça um exercício com requisitos diferentes. O objetivo é recuperar o raciocínio, não decorar o código.

### Como usar IA durante o estudo

- Tente resolver primeiro e registre o que não entendeu.
- Peça uma pista, explicação do erro ou revisão dos seus testes.
- Confira a sugestão na documentação e execute os testes.
- Refaça a parte essencial sem consultar a resposta.
- Em avaliações seletivas, siga as regras da empresa sobre assistência externa.

---

<a id="fundamentos"></a>
## 05 · Fundamentos — semanas 1–14

### A1 · Lógica e primeiros programas | semanas 1–4

**Aprender:** variáveis, tipos, operadores, condicionais, laços, métodos, parâmetros, retorno, arrays, strings, entrada/saída e leitura de mensagens de erro.

| Semana | Prática | Entrega |
|---|---|---|
| 1 | Conversão de temperatura, média, desconto e condições | Calculadora simples com tratamento de divisão por zero |
| 2 | Laços, contagem, soma e validação de entrada | Jogo de adivinhação com limite de tentativas |
| 3 | Arrays, strings e decomposição em métodos | Lista de tarefas em memória |
| 4 | Depurador, stack trace e revisão | Recriar uma aplicação pequena com requisitos novos |

**Git desde o começo:** `status`, `add`, `commit`, `diff`, histórico e envio ao repositório remoto. Escreva mensagens que descrevam a mudança.

**Material principal:** [Lógica — DevDojo](https://www.youtube.com/playlist?list=PL62G310vn6nH-uBTKREcUWDkOi2Q9n4OZ), seguido de Java básico. Consulte a biblioteca para alternativas.

> [!example] 📌 Materiais da etapa A1 (revisão 3)
> **Provavelmente você vai pular esta etapa pelo diagnóstico.** Se algo falhar, use:
> - 🏋️ **Prática:** [Beecrowd](https://judge.beecrowd.com/) — problemas em português, categoria "Iniciante"; resolva 20 sem olhar soluções.
> - 🎓 **Curso com correção automática:** [Java Programming — MOOC.fi (Univ. de Helsinque)](https://java-programming.mooc.fi/), partes 1–3. É gratuito, em inglês simples e cada exercício tem testes automáticos — ótimo para medir autonomia.
> - 🎥 **Fundamentos de computação:** canal [Akitando](https://www.youtube.com/@Akitando) (Fabio Akita) — vídeos longos sobre como o computador, a memória e o sistema operacional funcionam. Não é curso de Java; é a "base por baixo da base".

**Critério de avanço:** resolver três problemas inéditos pequenos, explicar o fluxo e corrigir um erro com o depurador.

- [ ] Sei escolher entre condição e repetição.
- [ ] Divido o problema em métodos compreensíveis.
- [ ] Trato entrada inválida sem encerrar inesperadamente o programa.
- [ ] Consigo mostrar no Git a evolução do código.

### A2 · Java orientado a objetos | semanas 5–8

**Aprender:** classes, objetos, construtores, encapsulamento, composição, interfaces, polimorfismo, exceções, `List`, `Set`, `Map`, generics e contratos de `equals`/`hashCode`.

**Limite de profundidade:** nesta primeira passagem, use coleções parametrizadas e exemplos simples de contratos. Deixe criação de APIs genéricas e detalhes internos das coleções para revisão. Se o bloco de 40 horas ficar apertado, preserve classes, composição, coleções e exceções; retome arquivos e refinamentos durante B1.

**Base que merece prática explícita:** referências e `null`, primitivos versus wrappers, `==` versus `equals`, enums para estados, imutabilidade e cópias defensivas. Records ajudam a representar dados, mas não tornam automaticamente imutáveis os objetos contidos em seus campos. Estude `Optional` inicialmente como retorno que comunica ausência, sem aplicá-lo indiscriminadamente a cada atributo.

| Semana | Prática | Entrega |
|---|---|---|
| 5 | Modelar despesas e categorias | Objetos com regras de validade |
| 6 | Agrupar, procurar e ordenar dados | Resumo por categoria usando coleções |
| 7 | Exceções, arquivos e `java.time` | Importar/exportar dados simples |
| 8 | Refatoração, branch e revisão | Projeto financeiro CLI v0.1 |

Use `BigDecimal` para valores monetários e defina arredondamento nas operações que exigirem. Comece com laços claros; aprenda lambdas e streams depois de entender o processamento.

Na semana 8, introduza um teste JUnit simples para uma regra de cálculo; a configuração pode ser guiada. As semanas 9–10 consolidam o uso autônomo de Maven e testes. Isso reduz a distância entre escrever a regra e conferir seu comportamento.

**Material principal:** escolha [Maratona Java — DevDojo](https://devdojo.academy/) **ou** [Java básico — Loiane](https://github.com/loiane/curso-java-basico). Não faça os dois cursos integralmente em paralelo.

**Critério de avanço:** adicionar uma nova categoria e um novo filtro sem reescrever o programa; explicar por que escolheu suas classes e coleções.

> [!example] 📌 Materiais da etapa A2 (revisão 3) — foco em **Java moderno**
> Como você já domina o OO básico, use esta etapa para fechar o vão entre "Java que funciona" e "Java idiomático de 2026".
>
> | Tipo | Material | O que extrair |
> |---|---|---|
> | 🎥 Vídeo EN | Canal oficial [Java (@java)](https://www.youtube.com/@java) — séries *JEP Café* e *Inside Java Newscast* | Records, sealed classes, pattern matching, sequenced collections, virtual threads explicados pelo time da Oracle |
> | 📖 Guia | [Dev.java — Learn](https://dev.java/learn/) | Trilhas oficiais por recurso da linguagem |
> | 📖 Guia | [Marco Behler — Java Versions & Features](https://www.marcobehler.com/guides/a-guide-to-java-versions-and-features) | O que entrou em cada versão, de forma direta |
> | 🎓 Curso | [MOOC.fi Java Programming II](https://java-programming.mooc.fi/), partes 8–14 | Coleções, interfaces, streams e exercícios com testes |
> | 📚 Livro | *Effective Java* (Bloch, 3ª ed.) — itens 10–14 (`equals`, `hashCode`, `toString`, `Comparable`) e 17 (imutabilidade) | Contratos que caem em entrevista |
> | 📚 Livro | *Modern Java in Action* (Urma, Fusco, Mycroft) — capítulos de streams | Pensar em pipelines, não em laços traduzidos |
>
> **Exercício-ponte:** reescreva uma parte do Projeto 1 usando `record` + `sealed interface` para os tipos de lançamento (Receita/Despesa) e um `switch` com pattern matching para o cálculo. Compare legibilidade e o que o compilador passa a garantir (exaustividade).

### B1 · Testes, Maven e fundamentos de algoritmos | semanas 9–10

**Aprender:** dependências, ciclo de build, JUnit, asserções, testes parametrizados, casos-limite, busca, ordenação e complexidade de tempo/espaço em nível introdutório.

**Prática:** automatizar testes do projeto CLI. Comparar busca linear com consulta por chave; explicar por que a estrutura escolhida muda o custo. Usar streams em um relatório e comparar com a versão em laço.

**Exercícios:** contagem de palavras, remoção de duplicados, agrupamento de despesas, validação de datas e ordenação por dois critérios.

**Critério de avanço:** um comando executa os testes; um bug intencional faz um teste falhar; você sabe diferenciar falha de asserção de erro de configuração.

**Algoritmos com escopo útil:** arrays/listas, mapa de frequências, conjunto de elementos únicos, pilha/fila e busca/ordenação básica. Compare complexidade em casos simples e reconheça o custo de laços aninhados. Árvores, grafos e programação dinâmica podem ser aprofundados quando a vaga ou seu interesse exigirem; não precisam bloquear a primeira API.

> [!example] 📌 Materiais da etapa B1 (revisão 3)
> - 📖 **Maven:** [Marco Behler — mvn clean install, a short guide](https://www.marcobehler.com/guides/mvn-clean-install-a-short-guide-to-maven) — explica ciclo de vida e fases melhor que a maioria dos cursos.
> - 📖 **JUnit:** [User Guide oficial](https://docs.junit.org/current/user-guide/), seções *Writing Tests*, *Parameterized Tests* e *Assertions*.
> - 📚 **Livro de testes (o mais recomendado desta revisão):** *Unit Testing: Principles, Practices, and Patterns* (Vladimir Khorikov, Manning). Ensina **o que** testar e por que mocks em excesso deixam testes frágeis — base para as decisões da etapa D1.
> - 🏋️ **Algoritmos com roteiro:** [NeetCode Roadmap](https://neetcode.io/roadmap) — use só os blocos *Arrays & Hashing*, *Two Pointers* e *Stack* nesta fase. Resolva em Java e escreva o teste antes.
> - 🏋️ **Katas:** [Exercism — Java](https://exercism.org/tracks/java) — tem mentoria humana gratuita opcional, que dá feedback de estilo.

### B2 · SQL e PostgreSQL | semanas 11–14

**Aprender na ordem:** tabelas → tipos → PK/FK → constraints → `SELECT` → filtros → `JOIN` → agregações → escrita de dados → transações → índices introdutórios → JDBC.

| Semana | Prática | Evidência |
|---|---|---|
| 11 | Modelar clientes, produtos, pedidos e itens | Diagrama simples + script de criação |
| 12 | Consultar clientes e totais de pedidos | Dez consultas próprias, incluindo JOIN e GROUP BY |
| 13 | Rejeitar duplicidades e testar rollback | Scripts que demonstram integridade e transação |
| 14 | Acessar o banco via JDBC e parâmetros | Pequeno programa que insere e consulta com segurança |

**Conceitos importantes:** normalização básica, `NULL`, chave única, integridade referencial, parâmetros em consultas, atomicidade e diferença entre validação da aplicação e restrição do banco.

No JDBC, pratique `PreparedStatement`, fechamento com `try-with-resources`, `commit` e `rollback`. Em SQL, diferencie `WHERE` de `HAVING`, compreenda `LEFT JOIN`, `COUNT(*)` versus `COUNT(coluna)` e o efeito de `NULL`. Não escolha um índice apenas por intuição: primeiro formule qual consulta precisa melhorar.

**Materiais:** [SQLBolt](https://sqlbolt.com/) para exercícios iniciais; [PostgreSQL Tutorial](https://www.postgresql.org/docs/current/tutorial.html) para aplicar no banco escolhido.

> [!example] 📌 Materiais da etapa B2 (revisão 3)
> | Tipo | Material | Por que entrou |
> |---|---|---|
> | 🏋️ Prática | [PostgreSQL Exercises (pgexercises.com)](https://pgexercises.com/) | Exercícios **no próprio PostgreSQL**, em categorias: básico, joins/subqueries, modificação de dados, agregações, datas, strings e consultas recursivas. Substitui o SQLBolt depois das primeiras aulas |
> | 📖 Livro grátis online | [Use The Index, Luke](https://use-the-index-luke.com/) (Markus Winand) | O melhor material sobre **como índices funcionam** do ponto de vista do desenvolvedor. Cobre PostgreSQL. Ler os capítulos 1–2 aqui; o resto na F2 |
> | 📖 Guia | [Marco Behler — JDBC, a short guide](https://www.marcobehler.com/guides/jdbc) | JDBC puro, conexões e transações sem framework |
> | 📖 Doc | [PostgreSQL — Transaction Isolation](https://www.postgresql.org/docs/current/transaction-iso.html) | Leitura curta para entender o que "isolamento" realmente promete |
> | 🎥 Vídeo PT-BR | Playlists de banco de dados do [Curso em Vídeo](https://www.cursoemvideo.com/) | Se a modelagem (PK/FK, normalização) ainda estiver insegura |
>
> **Desafio extra:** modele o banco do seu SaaS da faculdade em papel, sem olhar o esquema atual. Depois compare: onde vocês divergem e por quê?

**Critério de avanço:** consultar o total de pedidos por cliente, preservar clientes sem pedidos em um relatório e demonstrar uma transação revertida. Explicar por que concatenar entrada do usuário em SQL é inadequado.

---

<a id="spring"></a>
## 06 · Backend com Spring Boot — semanas 15–22

### C1 · Internet, HTTP e contratos | semanas 15–16

**Aprender:** cliente/servidor, DNS e TCP em nível conceitual, HTTPS/TLS, requisição/resposta, cabeçalhos, JSON, métodos HTTP, códigos de status, cookies, sessão, CORS e idempotência.

**Prática:** desenhar o contrato da API de pedidos antes de implementá-la. Enviar requisições com um cliente HTTP e examinar corpo, cabeçalhos e status.

| Situação | Resposta a discutir no contrato |
|---|---|
| Criação concluída | `201 Created` |
| Entrada inválida | `400 Bad Request` |
| Credenciais ausentes/inválidas em recurso protegido | `401 Unauthorized` |
| Usuário autenticado sem permissão | `403 Forbidden` |
| Recurso não encontrado | `404 Not Found` |
| Conflito de estado, como estoque insuficiente | `409 Conflict` |

**Critério de avanço:** explicar um pedido HTTP completo e justificar os erros sem responder `200` para qualquer resultado. Compreender que CORS é uma política de navegador e não substitui autorização.

**Contrato mais completo:** explicitar campos obrigatórios, limites de tamanho, formato de datas, unidade monetária, ordenação, paginação e exemplos de erro. Estudar `Content-Type`, `Accept`, diferença entre PUT/PATCH e o significado de idempotência. O retorno de status pode variar em chamadas repetidas sem que isso, sozinho, viole idempotência.

Use o [RFC 9457 — Problem Details](https://www.rfc-editor.org/rfc/rfc9457) como referência para um formato consistente de erros. No projeto, escolha campos públicos estáveis e evite expor stack traces, SQL ou detalhes internos.

> [!example] 📌 Materiais da etapa C1 (revisão 3)
> - 📖 **Referência principal:** [MDN — HTTP](https://developer.mozilla.org/pt-BR/docs/Web/HTTP) (já estava no plano). Leia *Visão geral*, *Métodos*, *Códigos de status* e *CORS*.
> - 🎥 **Redes por baixo do HTTP (PT-BR):** vídeos do canal [Akitando](https://www.youtube.com/@Akitando) sobre redes e internet — conectam com seu interesse em OSI/protocolos.
> - 🎥 **Visual e rápido (EN):** canal [ByteByteGo](https://www.youtube.com/@ByteByteGo) — vídeos de 5–10 min sobre DNS, HTTPS, REST vs. gRPC, idempotência. Bom para revisar com legenda.
> - 📖 **Design de API:** [Zalando RESTful API Guidelines](https://opensource.zalando.com/restful-api-guidelines/) — guia público de uma empresa real; compare as decisões deles com o seu contrato (paginação, erros, versionamento).
> - 🧪 **Prática:** escreva o contrato da API de pedidos como arquivo `.bru` do Bruno ou `exemplos.http` **antes** de qualquer código.

### C2 · Spring Core, Boot e MVC | semanas 17–18

**Aprender:** inversão de controle, injeção por construtor, beans, configuração, auto-configuração em nível introdutório, controller, service, DTO, validação e tratamento de erros.

**Prática:** gerar o projeto no Initializr, criar catálogo em memória e testar requisições válidas e inválidas. Explicar o que Boot configura e qual regra continua sendo responsabilidade da sua aplicação.

**Materiais:** [guia REST oficial](https://spring.io/guides/gs/rest-service/) e [vídeo de Michelli Brito](https://www.youtube.com/watch?v=wlYvA2b1BWI), com a ressalva de versões descrita na biblioteca.

**Critério de avanço:** implementar um endpoint novo a partir de uma descrição; a regra de negócio não fica concentrada no controller; entradas e respostas têm contratos explícitos.

> [!example] 📌 Materiais da etapa C2 (revisão 3) — entender o Spring **por dentro**
> Seu objetivo declarado é ir além do básico de Spring. Estes materiais focam no **porquê** do framework, não só no "como":
>
> | Tipo | Material | O que extrair |
> |---|---|---|
> | 📖 Guia | [Marco Behler — What is Spring Framework? An Unorthodox Guide](https://www.marcobehler.com/guides/spring-framework) | Construir o "Spring na mão" para entender o container de IoC |
> | 📖 Guia | [Marco Behler — How Spring Boot's Autoconfigurations Work](https://www.marcobehler.com/guides/spring-boot-autoconfiguration) | `@Conditional`, starters e por que "a mágica" é só configuração condicional |
> | 🎓 Curso grátis | Spring Academy — *Building a REST API with Spring Boot* ([conteúdo aberto no GitHub](https://github.com/spring-academy/course-spring-brasb-build-a-rest-api)) | Curso oficial do time do Spring, com TDD desde o início. A plataforma passou a ser da Broadcom; confira o acesso e a versão do Boot usada |
> | 🎥 Vídeo EN | Canal [Dan Vega](https://www.youtube.com/@DanVega) (Spring Developer Advocate) | Conteúdo atualizado de Spring Boot 4, migração e novidades |
> | 🎥 Vídeo EN | Canal oficial [Spring (@SpringSourceDev)](https://www.youtube.com/@SpringSourceDev) — *Spring Tips* (Josh Long) e palestras da SpringOne | Recursos novos explicados por quem mantém o framework |
> | 🎥 Vídeo PT-BR | Canal [Giuliana Bezerra](https://www.youtube.com/@giulianabezerra) | Spring Boot, arquitetura limpa, segurança e **resolução de desafios técnicos reais** (veja os repositórios [todolist-desafio-backendjr](https://github.com/giuliana-bezerra/todolist-desafio-backendjr) e [picpay-desafio-backend](https://github.com/giuliana-bezerra/picpay-desafio-backend)) |
> | 🎥 Vídeo PT-BR | Canal [Fernanda Kipper](https://www.youtube.com/@kipperdev) | Spring Boot prático; repositório [auth-api](https://github.com/fernanda-kipper/auth-api) serve de referência para a etapa D2 |
> | 📖 Doc | [Spring Framework — Error Responses](https://docs.spring.io/spring-framework/reference/web/webmvc/mvc-ann-rest-exceptions.html) | `ProblemDetail` + `@ControllerAdvice` |
>
> **Exercício de profundidade:** coloque um breakpoint dentro de um `@Bean` e outro no construtor do seu service. Rode a aplicação e anote a ordem em que o container cria os objetos. Depois remova `@Service` de uma classe e leia o erro de inicialização até entender cada linha.

### C3 · Persistência e API de domínio | semanas 19–22

| Semana | Tema | Aplicação |
|---|---|---|
| 19 | Entidades, repositories e mapeamentos | Persistir produtos e clientes no PostgreSQL |
| 20 | Migrations e transações | Criar banco vazio e registrar pedido atomicamente |
| 21 | Consultas, filtros e paginação | Listar pedidos com ordenação estável e página limitada |
| 22 | Lazy loading, N+1 e erros | Observar SQL gerado e ajustar um acesso inadequado |

**Aprender:** diferenças entre JPA, Hibernate e Spring Data JPA; DTO versus entidade; relacionamento e chave estrangeira; limites de transação; validação e constraints; Flyway; leitura do SQL gerado.

**Mecanismos essenciais:** estado gerenciado versus destacado de uma entidade, dirty checking em nível introdutório e o limite da transação no serviço. Usar DTO não corrige sozinho N+1; observe as consultas. Aprenda a usar `@Transactional` com o comportamento real de proxies e rollback, conforme a oficina da seção 16.

**Critério de avanço:** reiniciar sem perder dados, criar banco por migrations, demonstrar rollback e implementar uma mudança sem tutorial. Não depender de geração automática destrutiva de tabelas para manter dados importantes.

**Política de evolução:** Flyway é a fonte versionada do esquema. Não altere migrations já aplicadas em ambientes compartilhados; crie uma nova. No projeto entregue, valide o mapeamento em vez de tratar `ddl-auto=update` como estratégia de migração. Faça o exercício de uma segunda migration preservando os registros da primeira versão.

> [!example] 📌 Materiais da etapa C3 (revisão 3) — JPA sem caixa-preta
> | Tipo | Material | O que extrair |
> |---|---|---|
> | 📖 Blog | [Vlad Mihalcea — N+1 query problem with JPA and Hibernate](https://vladmihalcea.com/n-plus-1-query-problem/) | Reproduzir o N+1 no seu projeto e corrigir com `JOIN FETCH`/entity graph |
> | 📖 Blog | [Vlad Mihalcea — blog](https://vladmihalcea.com/) | A maior referência sobre desempenho de JPA/Hibernate; use a busca por tópico (lazy loading, batch, flush) |
> | 📖 Blog | [Thorben Janssen](https://thorben-janssen.com/) | Artigos curtos e didáticos sobre mapeamentos e consultas JPA |
> | 📖 Guia | [Marco Behler — Spring Transaction Management: @Transactional In-Depth](https://www.marcobehler.com/guides/spring-transaction-management-transactional-in-depth) | Proxies, propagação e o porquê da chamada interna não ser interceptada — base da oficina O3 |
> | 📖 Doc | [Flyway — documentação](https://documentation.red-gate.com/flyway) | Convenção de nomes, `validate`, `baseline` |
> | 📖 Tutorial | [Baeldung — Spring Data JPA](https://www.baeldung.com/the-persistence-layer-with-spring-data-jpa) | Exemplos pontuais; confira sempre a versão do Boot do artigo |
>
> **Ferramenta de observação:** ative o log de SQL (`spring.jpa.show-sql` em ambiente local ou, melhor, o logger `org.hibernate.SQL`) e conte as consultas de cada endpoint. Um número que cresce com o tamanho da lista é o sintoma do N+1.

**Marco de candidatura:** se já atende a uma vaga de entrada e consegue defender essa entrega, comece a se candidatar. Continue as etapas seguintes para fortalecer qualidade e segurança. **No seu calendário recalibrado, isso cai por volta da sua semana 10.**

---

<a id="qualidade"></a>
## 07 · Qualidade, segurança e entrega — semanas 23–30

### D1 · Testar os comportamentos importantes | semanas 23–24

- Testes unitários das regras, com JUnit; Mockito quando houver uma dependência que faça sentido substituir.
- Testes HTTP para contrato, validação e status.
- Testes de integração com PostgreSQL e Testcontainers.
- Cenários de falha, rollback e duplicidade; testes de acesso indevido entram em D2, junto da segurança.
- Execução de testes com dados isolados e resultados repetíveis.

**Entrega:** suíte que detecta regressões nas regras do projeto. Percentual de cobertura pode ajudar a investigar lacunas, mas não substitui bons cenários.

**Aceite:** introduzir uma violação de regra faz o teste correspondente falhar; restaurar o código volta a deixá-lo verde.

**Antes dos testes com Testcontainers:** preparar o runtime de contêiner e executar um contêiner simples. O aprofundamento em imagens da aplicação, redes, volumes e Compose permanece em D3.

**Confirme que os testes foram executados:** Surefire e Failsafe têm convenções e fases distintas. Se adotar Failsafe para testes de integração, configure os goals e a descoberta no `pom.xml`, execute `verify` e confira os relatórios. Apenas nomear um arquivo `PedidoIT` ou rodar `verify` sem essa configuração não garante execução. Consulte o [Maven Failsafe](https://maven.apache.org/surefire/maven-failsafe-plugin/).

> [!example] 📌 Materiais da etapa D1 (revisão 3)
> - 📖 **Guias oficiais:** [Testcontainers — Getting Started Guides](https://testcontainers.com/guides/) — guias curtos e práticos, incluindo testes de API REST com Spring Boot e PostgreSQL.
> - 📖 **Spring:** [Spring Boot — Testing](https://docs.spring.io/spring-boot/reference/testing/index.html) — *test slices* (`@WebMvcTest`, `@DataJpaTest`) e quando usar `@SpringBootTest`.
> - 📚 **Livro:** *Unit Testing: Principles, Practices, and Patterns* (Khorikov) — capítulos sobre "London vs. Classical school" e testes de integração. Responde à pergunta de entrevista "o que não deveria ser mockado?".
> - 🎥 **Vídeo PT-BR:** canal [Giuliana Bezerra](https://www.youtube.com/@giulianabezerra) tem conteúdo sobre testes em Spring Boot.
> - 🧪 **Teste de mutação (opcional, muito revelador):** [PIT](https://pitest.org/) altera seu código de propósito e verifica se algum teste falha. Mede a **qualidade** dos testes, não só a cobertura — é a versão automatizada do aceite "introduzir uma violação faz o teste falhar".

### D2 · Segurança aplicada | semanas 25–26

**Aprender:** autenticação versus autorização, Spring Security, cadeia de filtros em nível introdutório, usuários/papéis, autorização por recurso, hash de senha, sessão, CSRF e noções de OAuth2/OIDC/JWT.

**Escolha inicial recomendada:** entender o fluxo de autenticação com sessão e as proteções associadas. Se o projeto usar tokens, preferir integração com mecanismos suportados de OAuth2 Resource Server; estudar emissor, assinatura, expiração e audience. Não criar um protocolo próprio de segurança.

**Prática obrigatória:** usuário A não consegue ler nem cancelar pedidos de B, mesmo conhecendo o identificador. Administração tem permissões diferentes. Não retornar senha, hash ou token em logs e DTOs.

**Aceite:** testes para requisição sem credenciais, papel insuficiente e acesso cruzado entre usuários. Documentar a política escolhida para `403`/`404` em recursos alheios.

**Escopo realizável:** implemente apenas um mecanismo de autenticação nesta etapa. Para a opção com sessão, teste login, cookie, logout e proteção CSRF nas operações de escrita. OAuth2/OIDC com provedor externo fica como evolução opcional; um Resource Server valida tokens, mas não substitui o emissor nem resolve sozinho o fluxo de login.

**Referência:** [Spring Security](https://docs.spring.io/spring-security/reference/). Desabilitar CSRF indiscriminadamente não deve ser usado como solução para qualquer erro; a decisão depende do mecanismo de credenciais e do cliente.

> [!example] 📌 Materiais da etapa D2 (revisão 3) — sua área de interesse em AppSec
> | Tipo | Material | O que extrair |
> |---|---|---|
> | 📖 Guia | [Marco Behler — Spring Security: Authentication and Authorization In-Depth](https://www.marcobehler.com/guides/spring-security) | A cadeia de filtros explicada do zero |
> | 📖 Guia | [Marco Behler — Spring Security & OAuth 2.0 In-Depth](https://www.marcobehler.com/guides/spring-security-oauth2) | Papéis no OAuth2 (client, resource server, authorization server) sem confusão |
> | 📚 Livro | [*Spring Security in Action*, 2ª ed. (Laurențiu Spilcă, Manning)](https://www.manning.com/books/spring-security-in-action-second-edition) | Atualizado para o modelo de configuração atual do Spring Security; o livro mais completo do assunto |
> | 🎥 Vídeo PT-BR | [Giuliana Bezerra — spring-security-jwt](https://github.com/giuliana-bezerra/spring-security-jwt) e [tutorial-spring-auth-server](https://github.com/giuliana-bezerra/tutorial-spring-auth-server) (repositórios dos vídeos) | JWT e Authorization Server com OAuth2/OIDC |
> | 🎓 Curso grátis | [OWASP Top 10](https://owasp.org/www-project-top-ten/) + [OWASP API Security Top 10](https://api-security.owasp.org/editions/2023/en/0x11-t10/) | Lista de riscos para virar testes (oficina O5) |
> | 🏋️ Prática | [PortSwigger Web Security Academy](https://portswigger.net/web-security) | Laboratórios gratuitos de ataque (IDOR, CSRF, SQLi). Ver o ataque funcionando muda como você escreve a defesa |
> | 🧪 Ferramenta | [Keycloak](https://www.keycloak.org/) em contêiner | Emissor OIDC local para a evolução opcional de OAuth2 Resource Server |
>
> **Ligação com LGPD:** ver [[#21 · Fundamentos que faltavam|seção 21]] — dados pessoais em logs e DTOs também são problema jurídico, não só técnico.

### D3 · Docker, CI e operação básica | semanas 27–28

**Aprender:** imagem, contêiner, porta, rede, volume, variáveis de ambiente, build, pipeline e diferença entre integração contínua e deploy.

**Prática:** executar API + PostgreSQL de forma documentada; rodar build e testes em pull requests; configurar dados sintéticos; manter segredos fora do repositório.

**Aceite:** uma cópia limpa do projeto executa pelas instruções. Um teste falhando deixa o pipeline vermelho. Bloqueio de merge depende de configurar as regras do repositório, não apenas de existir CI.

> [!example] 📌 Materiais da etapa D3 (revisão 3)
> - 📖 **Docker oficial:** [Get started](https://docs.docker.com/get-started/) + [Docker Compose](https://docs.docker.com/compose/) — faça os dois tutoriais com a **sua** API, não com o app de exemplo.
> - 📖 **Imagem da aplicação:** [Spring Boot — Efficient Container Images](https://docs.spring.io/spring-boot/reference/packaging/container-images/efficient-images.html) — camadas, build multi-stage e Buildpacks (`spring-boot:build-image`).
> - 🎥 **Vídeo PT-BR:** canal [Akitando](https://www.youtube.com/@Akitando) — vídeos sobre contêineres e Linux para entender o que é um contêiner "por baixo" (namespaces, cgroups).
> - 📖 **CI:** [GitHub Actions — Java com Maven](https://docs.github.com/en/actions/tutorials/build-and-test-code/java-with-maven) (já no plano) + [regras de proteção de branch](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches).
> - 🧪 **Segurança de dependências (bônus):** ative o [Dependabot](https://docs.github.com/en/code-security/dependabot) no repositório. É uma linha de configuração e mostra no portfólio que você pensa em supply chain.

### D4 · Documentação, deploy e diagnóstico | semanas 29–30

**Aprender:** contrato OpenAPI, logs úteis, configuração por ambiente, health checks, deploy, rollback e procedimento de recuperação.

O contrato deve descrever endpoints, entradas, respostas, erros, paginação e autenticação. Uma interface Swagger é opcional; se usar biblioteca geradora, confira compatibilidade com a linha do Boot. Consulte a [especificação OpenAPI](https://spec.openapis.org/oas/latest.html) por tópico, sem tentar memorizar todo o documento.

**Entrega:** demonstração executável; se houver hospedagem adequada ao orçamento, publicar com configurações seguras. Caso contrário, Compose + vídeo curto são uma alternativa prática de apresentação. Conferir custos e regras do provedor no momento do uso.

**Aceite:** diagnosticar uma conexão de banco inválida pelos logs e documentar a recuperação. Evitar exposição pública desnecessária de endpoints administrativos e dados sensíveis.

**Fundamentos de cloud, sem obrigação de certificação:** distinguir aplicação, banco gerenciado e armazenamento de objetos; compreender HTTPS, configuração, permissões mínimas, persistência e cobrança. Documente o que acontece quando a aplicação reinicia e como recriar o ambiente. Escolha um provedor somente ao chegar à implantação e verifique sua documentação e seus custos naquele momento.

> [!example] 📌 Materiais da etapa D4 (revisão 3)
> - 📖 **Operação:** [Spring Boot — Actuator](https://docs.spring.io/spring-boot/reference/actuator/index.html) — health checks, métricas e como **não** expor endpoints sensíveis.
> - 📖 **Logs:** [Marco Behler — How To Do Logging In Java](https://www.marcobehler.com/guides/java-logging) — SLF4J, Logback e níveis de log.
> - 📖 **OpenAPI:** [springdoc-openapi](https://springdoc.org/) — gera o contrato a partir do código; confira a linha compatível com Boot 4 antes de adicionar.
> - 🎓 **Cloud sem certificação:** o [AWS Skill Builder](https://skillbuilder.aws/) tem cursos introdutórios gratuitos (ex.: *Cloud Practitioner Essentials*). Útil para vocabulário — banco gerenciado, armazenamento de objetos, IAM — mesmo que você hospede em outro provedor.
> - 🧪 **Prática de leitura de logs:** quebre de propósito a URL do banco no `.env`, suba a aplicação e escreva no `docs/operacao.md` o passo a passo do diagnóstico.

---

<a id="carreira"></a>
## 08 · Portfólio e primeira vaga — semanas 31–36

### Plano de consolidação

| Semana | Ação | Entrega |
|---|---|---|
| 31 | Corrigir lacunas do projeto e pedir revisão | Lista de problemas resolvidos e limitações reconhecidas |
| 32 | Refinar README e demonstração | Outra pessoa consegue executar e entender o sistema |
| 33 | Preparar currículo e perfil | Currículo objetivo, links visíveis e projetos descritos honestamente |
| 34 | Selecionar oportunidades compatíveis | Registro de candidaturas e requisitos recorrentes |
| 35 | Simular entrevista técnica e comportamental | Notas dos erros e plano de correção |
| 36 | Revisar resultados e repetir o ciclo | Próximas quatro semanas planejadas |

**Não espere a semana 34 se já puder se candidatar antes.** Esta etapa consolida o processo; a observação de vagas e os primeiros contatos começam durante os estudos.

### Como selecionar vagas

Busque combinações como `Java júnior`, `backend júnior`, `desenvolvedor Java`, `estágio desenvolvimento` e `trainee tecnologia`. Use sua cidade/região e remoto Brasil conforme sua disponibilidade.

1. Abra o anúncio completo e, quando possível, confirme no portal da empresa.
2. Separe requisitos eliminatórios de tecnologias desejáveis.
3. Confira modalidade, localização, formação, experiência exigida e atividades reais.
4. Vincule uma evidência sua a cada requisito principal.
5. Registre data, link, etapa e próxima ação.

**Recorte para o seu caso (revisão 3):** remoto Brasil + Foz do Iguaçu e região. O recorte de Pernambuco dos PDFs originais foi removido.

| Onde procurar | Por que |
|---|---|
| LinkedIn Vagas com filtro "Remoto" + "Brasil" | Maior volume de vagas Java júnior remotas |
| [backend-br/vagas](https://github.com/backend-br/vagas) | Vagas backend publicadas como *issues* do GitHub, com rótulos de nível e modalidade; dá para "assinar" uma vaga e receber atualizações |
| Portais de carreira de empresas que usam Java (bancos, fintechs, consultorias) | Programas de trainee e júnior costumam aparecer lá antes de chegar aos agregadores |
| Ecossistema local: [Itaipu Parquetec](https://www.itaipuparquetec.org.br/) e empresas incubadas em Foz | Rede local, eventos e projetos de tecnologia; vale acompanhar editais e eventos e conversar pessoalmente — uma vantagem que candidatos remotos não têm |
| Comunidades da seção 11 (TabNews, SouJava, Discords) | Indicação e vaga "de corredor" ainda pesam muito em vaga júnior |

> **Inglês e vagas internacionais:** muitas vagas remotas boas exigem inglês intermediário. Com a trilha da [[#20 · Inglês técnico — trilha paralela|seção 20]], reavalie esse filtro a cada três meses em vez de descartar a categoria para sempre.

> [!example] 📌 Materiais de carreira (revisão 3)
> - 📖 **Desafios técnicos reais de empresas brasileiras:** [backend-br/desafios](https://github.com/backend-br/desafios) — resolva um como simulado de *take-home*.
> - 📖 **Mapa de competências:** [roadmap.sh — Java](https://roadmap.sh/java), [Spring Boot](https://roadmap.sh/spring-boot) e [Backend](https://roadmap.sh/backend). Use para checar se faltou algo, **não** como lista de tarefas — eles listam muito mais do que uma vaga júnior pede.
> - 📖 **README que vende o projeto:** [Readme-Templates (Fernanda Kipper)](https://github.com/fernanda-kipper/Readme-Templates).
> - 🎥 **Simulação de entrevista:** procure no YouTube por "mock interview Java junior" e "entrevista técnica Java júnior" — assista **pausando antes de cada resposta** e responda em voz alta primeiro.

### Rotina de carreira

| Frequência | Ação sugerida |
|---|---|
| Toda semana | Ler 5–10 anúncios e registrar padrões |
| Quando houver preparo compatível | Fazer 3–5 candidaturas cuidadosas, ajustando a quantidade à oferta e ao tempo |
| Toda semana | Uma simulação ou revisão de apresentação |
| A cada duas semanas | Pedir feedback específico sobre currículo ou projeto |
| A cada quatro semanas | Analisar respostas e escolher uma melhoria prioritária |

As quantidades são metas de organização, não estimativas de eficácia. Poucos retornos podem ter várias causas; não use silêncio de recrutadores como diagnóstico técnico definitivo.

### Currículo e GitHub

- Identifique projetos pessoais como **projetos pessoais**, com problema, contribuição, stack e evidências.
- Destaque Java, Spring Boot, SQL, testes e Git somente no nível que consegue demonstrar.
- Fixe os melhores repositórios; mantenha instruções claras e links funcionando.
- Descreva um bug que encontrou, como reproduziu e como corrigiu.
- Inclua métricas apenas quando medidas, explicando ambiente e cenário.
- Não é necessário fazer um frontend completo para demonstrar este backend: exemplos HTTP e uma demonstração organizada cumprem esse papel.

---

<a id="avancado"></a>
## 09 · Trilha avançada — semanas 37–60+

> **Quando entrar:** depois de conseguir implementar e explicar a API principal. Continue buscando vagas enquanto aprofunda. Completar estes laboratórios não equivale automaticamente a ser pleno.

| Módulo | Semanas | Conteúdo | Laboratório e critério de conclusão |
|---|---|---|---|
| F1 · Operação observável | 37–40 | Logs estruturados, métricas, traces, latência, taxa de erros, health checks e runbook | Induzir falha de dependência; localizar sua causa e registrar recuperação |
| F2 · Banco e concorrência | 41–44 | Índices, planos de execução, N+1, isolamento, locks e controle otimista | Duas compras disputam uma unidade; apenas uma vence e estoque nunca fica negativo |
| F3 · Java e desempenho | 45–48 | Imutabilidade, concorrência, virtual threads, pools, JVM, GC e JFR introdutório | Medir um gargalo e comparar antes/depois sob a mesma carga |
| F4 · Eventos e resiliência | 49–52 | RabbitMQ, ack, retry limitado, DLQ, idempotência, outbox, timeouts | Reenviar evento e reiniciar consumidor sem duplicar o efeito de negócio |
| F5 · Cache e arquitetura | 53–56 | Redis, invalidação, monólito modular, dependências, DDD introdutório e ADRs | Justificar uma fronteira de módulo e demonstrar atualização correta de cache |
| F6 · Consolidação avançada | 57–60 | Segurança de integrações, backups, restauração, CI/CD e trade-offs | Demonstrar falha, recuperação e decisão arquitetural com evidências reproduzíveis |
| F7 · Multi-tenancy 🆕 | junto com F5 ou antes, se o SaaS da faculdade precisar | Estratégias de isolamento, resolução do tenant, RLS no PostgreSQL | Ver [[#22 · Laboratório multi-tenant\|seção 22]] |

> [!example] 📌 Materiais da trilha avançada (revisão 3)
> | Módulo | Material principal | Complemento |
> |---|---|---|
> | F1 | [OpenTelemetry — Java](https://opentelemetry.io/docs/languages/java/) + [Spring Boot Actuator / Micrometer](https://docs.micrometer.io/micrometer/reference/) | Livro *Release It!* (Michael Nygard, 2ª ed.) — padrões de estabilidade: timeouts, circuit breaker, bulkhead |
> | F2 | [Use The Index, Luke](https://use-the-index-luke.com/) (completo) + [PostgreSQL — Explicit Locking](https://www.postgresql.org/docs/current/explicit-locking.html) | Blog do [Vlad Mihalcea](https://vladmihalcea.com/) sobre locking otimista/pessimista |
> | F3 | Canal [Java (@java)](https://www.youtube.com/@java) — vídeos sobre virtual threads e GC; [JMH](https://github.com/openjdk/jmh) para microbenchmarks | *Java Concurrency in Practice* (Goetz) — ainda a base de modelo de memória e concorrência |
> | F4 | [RabbitMQ — tutoriais](https://www.rabbitmq.com/tutorials) + [microservices.io — Transactional Outbox](https://microservices.io/patterns/data/transactional-outbox.html) | *Designing Data-Intensive Applications*, 2ª ed. (Kleppmann & Riccomini, 2026) — capítulos de mensageria e consistência |
> | F5 | [Spring Modulith](https://docs.spring.io/spring-modulith/reference/) + [ArchUnit](https://www.archunit.org/) | [Giuliana Bezerra — spring-boot-cleanarch](https://github.com/giuliana-bezerra/spring-boot-cleanarch) para comparar com um exemplo de arquitetura limpa |
> | F6 | [System Design Primer](https://github.com/donnemartin/system-design-primer) | Canal [ByteByteGo](https://www.youtube.com/@ByteByteGo) |
>
> **Desafio de comunidade:** a [Rinha de Backend](https://github.com/zanfranceschi/rinha-de-backend-2025) é uma competição brasileira em que você constrói um backend sob recursos limitados e instabilidade de serviços externos (a edição de 2025 envolvia rotear pagamentos entre dois processadores instáveis). As edições já encerradas continuam ótimas como laboratório de F2–F4: os repositórios dos participantes mostram dezenas de soluções para comparar com a sua.

**Execução em duas passagens:** em F4, primeiro implemente uma notificação com tratamento de reentrega; depois acrescente outbox e recuperação. Em F5, divida o bloco em dois laboratórios de aproximadamente 20 h: fronteiras de módulos e cache. Se faltar tempo, conclua um e registre o outro como pendência. F6 consolida o que foi construído; não exige uma ferramenta nova por tema.

### Laboratórios para escolher depois

<details>
<summary><strong>🔬 1. Consulta lenta: investigar antes de otimizar</strong></summary>

Crie uma base sintética com tamanho documentado. Observe a consulta e seu plano; formule uma hipótese; adicione ou altere um índice; compare execução nas mesmas condições. Registre volume, hardware, versão, repetição e limites da comparação. Não transforme um resultado local em promessa de escala real.

</details>

<details>
<summary><strong>📨 2. Pedido e notificação: falhas e duplicidade</strong></summary>

Grave o pedido e o registro de evento na mesma transação usando uma outbox. Publique depois; simule falha após a publicação e antes da confirmação. O consumidor deve tolerar reentrega. Explique por que confirmar entrega de mensagem não garante sozinho um único efeito de negócio.

</details>

<details>
<summary><strong>🏗️ 3. Manter o monólito ou separar um serviço?</strong></summary>

Descreva o problema real, o limite do módulo, os dados compartilhados, a necessidade de escalar e o custo de operação. Compare duas alternativas. Se a divisão não trouxer um benefício verificável, mantenha o monólito e registre a decisão.

</details>

### Assuntos para especialização, sem urgência

Kubernetes, Kafka, programação reativa, infraestrutura como código, multi-tenancy, consistência distribuída aprofundada, criação de starters e tuning avançado da JVM. Escolha conforme um problema, uma oportunidade ou interesse real. Não acrescente todos ao mesmo projeto de entrada.

---

<a id="projetos"></a>
## 10 · Portfólio — dois projetos, evolução visível

### 🟢 Projeto 1 — Finanças no terminal

**Objetivo:** demonstrar Java sem depender de framework. Desenvolvido durante as semanas 5–10.

**Funcionalidades:** cadastrar despesas e receitas, categorizar, filtrar por mês e calcular saldo. Acrescentar persistência em arquivo após dominar a versão em memória.

- [ ] Valores monetários usam `BigDecimal` e uma política explícita de arredondamento.
- [ ] Entradas inválidas são rejeitadas com mensagem compreensível.
- [ ] Totais e filtros possuem testes relevantes.
- [ ] Arquivo ausente ou malformado é tratado de forma previsível.
- [ ] README informa como executar, testar e usar exemplos.
- [ ] Você implementa um novo filtro sem copiar uma aula.

**Demonstração:** registrar três lançamentos, listar um mês, mostrar um erro de entrada e executar os testes.

### 🔵 Projeto 2 — Order Management API

**Objetivo:** demonstrar uma aplicação backend completa, com regras de pedidos e estoque. Evolui das semanas 17–30 e recebe extensões opcionais depois.

**Domínio:** cliente, produto, pedido e item do pedido. O preço de cada item é registrado no momento da compra; mudar o preço do catálogo não altera o histórico.

| Versão | Escopo | Evidência |
|---|---|---|
| v0.1 | Catálogo em memória | Endpoints, validação e erros |
| v0.2 | PostgreSQL e migrations | Reinício preserva dados; banco vazio é criado |
| v0.3 | Pedidos e estoque | Transação impede gravação parcial |
| v0.4 | Filtros e paginação | Resultados limitados e ordenados |
| v0.5 | Autenticação e autorização | Usuário acessa apenas seus pedidos |
| v0.6 | Testes e integração contínua | Cenários essenciais executados automaticamente |
| v1.0 | Documentação e execução reproduzível | Terceiro executa a demonstração pelo README |
| v1.1+ | Concorrência, observabilidade e eventos | Relatórios de experimentos e decisões |

As versões indicam marcos de funcionalidade, não o primeiro momento em que se escreve teste. Cada versão inclui testes das novas regras; v0.6 consolida a suíte e sua execução automatizada.

### Regras de negócio que precisam estar escritas

| Decisão | Contrato recomendado para o exercício |
|---|---|
| Moeda | Uma moeda por pedido; escala e arredondamento declarados |
| Cálculo | O servidor calcula total e captura o preço do catálogo; não confia no total enviado pelo cliente |
| Quantidades | Inteiros positivos e limite máximo explícito; definir tratamento de produto repetido na mesma requisição |
| Identidade | Associar cliente à identidade autenticada; não confiar em `clienteId` livre no corpo |
| Estados | Começar com CRIADO e CANCELADO; transições adicionais só com regra e teste |
| Cancelamento | Primeira chamada devolve estoque; repetição retorna estado consistente sem nova devolução |
| Paginação | Limite máximo, parâmetros inválidos tratados e desempate por identificador na ordenação |
| Histórico | Produto referenciado por pedido não pode apagar o histórico; preferir desativação do catálogo |

Cancelamento idempotente e criação idempotente são requisitos diferentes. Uma chave de idempotência para repetir a criação do mesmo pedido fica como extensão; não deduza essa garantia apenas porque o cancelamento é seguro para repetição.

### Contrato mínimo sugerido

| Operação | Endpoint | Regra principal |
|---|---|---|
| Cadastrar produto | `POST /api/v1/produtos` | SKU único, preço válido, acesso administrativo |
| Consultar catálogo | `GET /api/v1/produtos` | Paginação e ordenação definidas |
| Criar pedido | `POST /api/v1/pedidos` | Quantidade positiva e estoque suficiente |
| Consultar pedido | `GET /api/v1/pedidos/{id}` | Acesso restrito ao proprietário ou papel autorizado |
| Cancelar pedido | `POST /api/v1/pedidos/{id}/cancelamento` | Estado permite cancelamento; estoque devolvido uma vez |

### Matriz de testes de aceitação

| ID | Cenário | Resultado esperado | Prioridade |
|---|---|---|---|
| T01 | Produto com preço negativo | Erro de validação; nada persistido | Base |
| T02 | SKU já existente | Conflito definido no contrato; constraint protege o banco | Base |
| T03 | Pedido com saldo de estoque suficiente | Pedido, itens e baixa consistentes | Base |
| T04 | Um item sem estoque em pedido com vários itens | Operação inteira revertida | Base |
| T05 | Alterar preço após a compra | Pedido mantém preço histórico | Base |
| T06 | A tenta consultar pedido de B | Dados não são expostos | Base |
| T07 | Cancelar duas vezes | Estoque não é devolvido em dobro | Base |
| T08 | Falha durante a gravação | Nenhuma gravação parcial permanece | Base |
| T09 | Banco vazio | Migrations criam estrutura utilizável | Base |
| T10 | Teste quebrado em uma branch | CI fica vermelho | Base |
| T11 | Duas compras simultâneas para uma unidade | Uma vence; outra recebe conflito tratado | Extensão de concorrência |
| T12 | Evento entregue novamente | Sem duplicar notificação/efeito definido | Extensão de eventos |

T11 é uma evolução importante, mas não deve impedir o iniciante de apresentar a versão anterior com suas limitações declaradas. Não anuncie proteção contra concorrência antes de implementá-la e testá-la.

**Limite da versão inicial:** validação em Java e transação comum, por si só, não impedem duas requisições de disputar o mesmo estoque. A versão anterior a T11 é uma demonstração didática com essa limitação, não um sistema pronto para vendas reais. Ao implementar T11, use operações atômicas condicionais ou locking adequado e teste transações independentes; não use apenas `synchronized` para alegar proteção entre várias instâncias.

### Estrutura de apresentação

```text
order-management-api/
├── README.md
├── pom.xml
├── mvnw / mvnw.cmd
├── src/main/java/...
├── src/main/resources/db/migration/
├── src/test/java/...
├── docs/
│   ├── arquitetura.md
│   ├── exemplos.http
│   ├── operacao.md
│   └── decisoes/
├── compose.yaml
├── .env.example
└── .github/workflows/ci.yml
```

O `.env.example` deve conter apenas nomes e valores fictícios. O README explica problema, funcionalidades, versões, execução, testes, exemplos, decisões e limitações.

**Roteiro da demo de 5 minutos:** problema → executar → fluxo de compra → caso inválido → teste relevante → uma decisão e uma limitação.

---

<a id="materiais"></a>
## 11 · Biblioteca curada

> **Como escolher:** um curso principal por fase, documentação para consulta e prática no seu projeto. As alternativas abaixo não são uma fila de cursos obrigatórios.

### 🎬 Vídeos e cursos gratuitos

| Material | Idioma / formato | Quando usar | Tarefa após estudar |
|---|---|---|---|
| [Lógica — DevDojo](https://www.youtube.com/playlist?list=PL62G310vn6nH-uBTKREcUWDkOi2Q9n4OZ) | PT-BR · playlist gratuita | Semanas 1–4, se parte do zero | Refazer um exercício com entrada e regras diferentes |
| [Maratona Java — catálogo oficial DevDojo](https://devdojo.academy/) | PT-BR · aulas gratuitas | Curso principal de Java | Selecionar linguagem, OO, coleções, exceções, generics e streams; deixar tópicos avançados para depois |
| [Java básico — Loiane Groner](https://github.com/loiane/curso-java-basico) | PT-BR · curso e exercícios gratuitos vinculados no README | Alternativa ao DevDojo | Resolver as listas antes de consultar soluções |
| [Git e GitHub — Curso em Vídeo](https://www.cursoemvideo.com/curso/curso-de-git-e-github/) | PT-BR · aulas gratuitas | Desde a primeira semana | Criar branch, commit e revisão no seu projeto; certificado não é necessário |
| [Spring Boot 3 — Michelli Brito](https://www.youtube.com/watch?v=wlYvA2b1BWI) | PT-BR · vídeo gratuito de 2023 | Após Java, SQL e HTTP | Recriar a API em outro domínio; observar que a aula usa Boot 3/Java 17 |

O material de Loiane é anterior às versões atuais, mas serve aos fundamentos. O vídeo de Spring é uma introdução; complemente persistência, testes, segurança e entrega. Os links de catálogo e repositório foram usados quando oferecem acesso mais estável ao conteúdo do autor.

### 📚 Exercícios e referências da base

| Recurso | Idioma / acesso | Uso recomendado |
|---|---|---|
| [Dev.java](https://dev.java/learn/) | EN · gratuito | Conferir conceitos de linguagem e recursos modernos por assunto |
| [Pro Git](https://git-scm.com/book/pt-br/v2) | PT-BR · gratuito | Consultar fundamentos, remotos e branches; praticar um conflito |
| [SQLBolt](https://sqlbolt.com/) | EN · gratuito/interativo | Exercitar consultas; reproduzir depois em PostgreSQL |
| [PostgreSQL Tutorial](https://www.postgresql.org/docs/current/tutorial.html) | EN · gratuito | Tabelas, joins, transações e aplicação no banco real |
| [MDN: HTTP](https://developer.mozilla.org/pt-BR/docs/Web/HTTP) | PT-BR, com cobertura variável · gratuito | Requisição, resposta, métodos, status e cabeçalhos |
| [Spring: RESTful Web Service](https://spring.io/guides/gs/rest-service/) | EN · gratuito | Primeiro endpoint e leitura das anotações |
| [Spring Boot Reference](https://docs.spring.io/spring-boot/reference/) | EN · gratuito | Configuração, testes e operação da versão escolhida |
| [Spring Data JPA](https://docs.spring.io/spring-data/jpa/reference/) | EN · gratuito | Repositories, consultas e transações |
| [Spring Security](https://docs.spring.io/spring-security/reference/) | EN · gratuito | Configurar autenticação e autorização com documentação da versão |

### 🧪 Testes e entrega

| Recurso | Idioma / acesso | Pré-requisito e prática |
|---|---|---|
| [JUnit — documentação](https://docs.junit.org/current/user-guide/) | EN · gratuito | Java e Maven; testar comportamento e exceções. Usar versão compatível com o projeto |
| [Docker: primeiros passos](https://docs.docker.com/get-started/) | EN · tutorial gratuito | API local funcionando; aprender portas, redes e volumes |
| [Docker: Spring Boot e Testcontainers](https://docs.docker.com/guides/testcontainers-java-spring-boot-rest-api/) | EN · gratuito | Testes básicos e ambiente de contêiner; testar persistência em PostgreSQL |
| [GitHub Actions: Java com Maven](https://docs.github.com/en/actions/tutorials/build-and-test-code/java-with-maven) | EN · documentação gratuita | Git e build local; executar testes no CI |
| [Testcontainers Java](https://java.testcontainers.org/) | EN · gratuito | Consultar integração, ciclo de vida e configuração do ambiente |

Não fixe a versão do JUnit só porque um curso menciona JUnit 5. A documentação atual consultada já incluía JUnit 6; em aplicações Spring Boot, aproveite o gerenciamento de dependências compatíveis do framework.

### 💳 Formações pagas opcionais

| Formação | Quando considerar | O que conferir antes de comprar |
|---|---|---|
| [Coleção Java Spring — Devsuperior](https://devsuperior.com.br/colecao-java-spring) | Depois de lógica, OO, SQL e Git | A página consultada anuncia Java 25/Boot 4 e pressupõe base; avaliar exercícios, correção e suporte |
| [Especialista Spring REST — AlgaWorks](https://lp2.algaworks.com/especialista-spring-rest-matriculas/) | Depois de Java e SQL, para aprofundar APIs | Ementa, versões, aula demonstrativa, suporte e condições de acesso |

**Recomendação:** escolha no máximo uma formação extensa por vez. Não há necessidade de comprar curso para executar este plano. Preços, matrículas e condições mudam; consulte a oferta vigente. Não use promessa comercial de emprego como critério técnico.

### 🔭 Referências para a trilha avançada

| Recurso | Aplicação |
|---|---|
| [PostgreSQL: documentação](https://www.postgresql.org/docs/current/) | Planos de execução, transações, índices e locking |
| [RabbitMQ: tutoriais](https://www.rabbitmq.com/tutorials) | Publicação, consumo, confirmações e tratamento de falhas |
| [Redis: documentação](https://redis.io/docs/latest/) | Cache e compreensão das estruturas de dados |
| [OpenTelemetry](https://opentelemetry.io/docs/) | Instrumentação, métricas e traces |
| [Spring Modulith](https://docs.spring.io/spring-modulith/reference/) | Organização e verificação de módulos |
| [Spring Petclinic](https://github.com/spring-projects/spring-petclinic) | Ler uma aplicação de referência, executar testes e modificar uma regra |

**Livros como complemento, não compra obrigatória:** *Effective Java*, de Joshua Bloch, após a base de Java; *Java Concurrency in Practice*, de Brian Goetz e colaboradores, ao estudar concorrência. Conceitos permanecem úteis, mas exemplos e APIs refletem a época das edições. Estes títulos vêm da bibliografia do PDF, sem verificação de preço ou disponibilidade nesta pesquisa.

---

### 🆕 Biblioteca ampliada — revisão 3

> **Legenda:** 🟢 grátis · 💳 pago · 🇧🇷 português · 🇺🇸 inglês · ⭐ prioridade desta revisão
>
> **Regra de ouro:** esta lista é um **cardápio, não uma fila**. Para cada fase, escolha **um** curso principal + **uma** plataforma de prática + documentação. O resto é consulta quando surgir uma dúvida específica.

#### 🎥 Canais do YouTube — português

| Canal | Foco | Melhor uso no plano |
|---|---|---|
| ⭐ [DevDojo (William Suane)](https://www.youtube.com/@DevDojoBrasil) 🟢🇧🇷 | Maratona Java, Spring Boot Essentials | A2 e C2; já é o curso principal do plano |
| ⭐ [Giuliana Bezerra](https://www.youtube.com/@giulianabezerra) 🟢🇧🇷 | Spring Boot, testes, arquitetura limpa, Spring Security, resolução de desafios técnicos | C2, D1, D2, F5 |
| [Fernanda Kipper](https://www.youtube.com/@kipperdev) 🟢🇧🇷 | Spring Boot prático, autenticação, projetos completos | C2, D2 |
| [Michelli Brito](https://www.youtube.com/@MichelliBrito) 🟢🇧🇷 | Spring Boot, microsserviços, arquitetura | C2 e trilha avançada |
| ⭐ [Akitando (Fabio Akita)](https://www.youtube.com/@Akitando) 🟢🇧🇷 | Fundamentos de computação: SO, memória, redes, Linux, contêineres | O1, C1, D3 — "a base por baixo da base" |
| [Curso em Vídeo (Gustavo Guanabara)](https://www.youtube.com/@CursoemVideo) 🟢🇧🇷 | Git/GitHub, algoritmos, banco de dados | Reforço pontual |
| [Loiane Groner](https://www.youtube.com/@loianegroner) 🟢🇧🇷 | Java, Spring, Angular | Útil também pelo seu Angular 18 |

> Os nomes de canal (`@handle`) do YouTube podem mudar. Se um link quebrar, busque pelo nome do autor.

#### 🎥 Canais do YouTube — inglês (use legendas automáticas no começo)

| Canal | Foco | Melhor uso no plano |
|---|---|---|
| ⭐ [Java (@java) — oficial da Oracle](https://www.youtube.com/@java) 🟢🇺🇸 | *JEP Café*, *Inside Java Newscast*, palestras do time da JDK | A2 (Java moderno), F3 (virtual threads, GC) |
| ⭐ [Spring (@SpringSourceDev)](https://www.youtube.com/@SpringSourceDev) 🟢🇺🇸 | *Spring Tips* (Josh Long), SpringOne | C2 em diante |
| ⭐ [Dan Vega](https://www.youtube.com/@DanVega) 🟢🇺🇸 | Spring Boot 4, novidades, tutoriais curtos | C2, D-fase; ele fala devagar e claro — bom para treinar o ouvido |
| [Amigoscode](https://www.youtube.com/@amigoscode) 🟢🇺🇸 | Cursos longos de Java/Spring para iniciantes-intermediários | Alternativa quando um conceito não "clicar" |
| [ByteByteGo](https://www.youtube.com/@ByteByteGo) 🟢🇺🇸 | System design em vídeos curtos e visuais | C1, F6, entrevistas |
| [Hussein Nasser](https://www.youtube.com/@hnasr) 🟢🇺🇸 | Bancos de dados, protocolos, proxies — tudo "por dentro" | B2, C1, F2 |
| Palestras de [Victor Rentea](https://www.youtube.com/@vrentea) e Venkat Subramaniam (Devoxx) 🟢🇺🇸 | Clean code pragmático, refatoração, testes | Fim de A2 e D1 |

#### 🎓 Cursos estruturados gratuitos

| Curso | Fase | Por que vale |
|---|---|---|
| ⭐ [Java Programming I e II — MOOC.fi (Universidade de Helsinque)](https://java-programming.mooc.fi/) 🟢🇺🇸 | A1–B1 | Universitário, em inglês simples, **cada exercício tem testes automáticos**. Excelente para o diagnóstico: faça os exercícios finais de cada parte |
| ⭐ Spring Academy — *Building a REST API with Spring Boot* ([conteúdo no GitHub](https://github.com/spring-academy/course-spring-brasb-build-a-rest-api)) 🟢🇺🇸 | C2–D2 | Feito pelo time do Spring; TDD, segurança e persistência no mesmo fluxo |
| [Testcontainers Guides](https://testcontainers.com/guides/) 🟢🇺🇸 | D1 | Curto, prático, mantido pelos autores da ferramenta |
| [PortSwigger Web Security Academy](https://portswigger.net/web-security) 🟢🇺🇸 | D2 | Laboratórios gratuitos de segurança web — conversa com seu interesse em AppSec |
| [freeCodeCamp — English for Developers (A2 e B1)](https://www.freecodecamp.org/news/learn-english-for-developers-a2/) 🟢🇺🇸 | Paralelo | Inglês com vocabulário de equipe de software; ver seção 20 |
| [AWS Skill Builder](https://skillbuilder.aws/) 🟢🇺🇸 | D4 | Fundamentos de cloud |
| [Curso de Git e GitHub — Curso em Vídeo](https://www.cursoemvideo.com/curso/curso-de-git-e-github/) 🟢🇧🇷 | A1 | Já estava no plano |

#### 🏋️ Plataformas de prática

| Plataforma | Tipo | Quando usar |
|---|---|---|
| ⭐ [Beecrowd](https://judge.beecrowd.com/) 🟢🇧🇷 | Juiz online brasileiro (antigo URI), enunciados em português | A1–B1: lógica e estruturas de dados sem barreira de idioma |
| ⭐ [NeetCode Roadmap](https://neetcode.io/roadmap) 🟢🇺🇸 | Trilha de algoritmos por padrão, com vídeo de solução | B1 e preparação de entrevista; não precisa de todas as categorias para júnior |
| [Exercism — Java](https://exercism.org/tracks/java) 🟢🇺🇸 | Katas com mentoria humana opcional | A2–B1: estilo e refatoração |
| ⭐ [PostgreSQL Exercises](https://pgexercises.com/) 🟢🇺🇸 | SQL em PostgreSQL real | B2 |
| [SQLBolt](https://sqlbolt.com/) 🟢🇺🇸 | SQL interativo introdutório | Início de B2 |
| ⭐ [backend-br/desafios](https://github.com/backend-br/desafios) 🟢🇧🇷 | Desafios de backend (autenticação, encurtador de URL, empréstimos, senha segura…) | Após C3: um por mês, como *take-home* |
| [Rinha de Backend](https://github.com/zanfranceschi/rinha-de-backend-2025) 🟢🇧🇷 | Competição comunitária de backend sob restrições | Trilha avançada (F2–F4) |
| [PortSwigger Academy](https://portswigger.net/web-security) 🟢🇺🇸 | Labs de segurança | D2 |

#### 📖 Blogs e guias de referência

| Fonte | Melhor para |
|---|---|
| ⭐ [Marco Behler — Guides](https://www.marcobehler.com/guides) 🟢🇺🇸 | Explicações "não ortodoxas" e profundas: Spring por dentro, `@Transactional`, Spring Security, Maven, JDBC, logging, versões do Java |
| ⭐ [Vlad Mihalcea](https://vladmihalcea.com/) 🟢🇺🇸 | JPA/Hibernate e desempenho de banco |
| [Baeldung](https://www.baeldung.com/) 🟢🇺🇸 | Receitas pontuais de Spring/Java (sempre confira a versão do artigo) |
| [Thorben Janssen](https://thorben-janssen.com/) 🟢🇺🇸 | JPA e Hibernate, artigos curtos |
| [Inside Java](https://inside.java/) 🟢🇺🇸 | Notícias e artigos oficiais do time da JDK |
| [Spring Blog](https://spring.io/blog) 🟢🇺🇸 | Lançamentos e mudanças de versão — leia o post de cada release que você adotar |
| [microservices.io](https://microservices.io/patterns/) 🟢🇺🇸 | Catálogo de padrões (outbox, saga, API gateway) para a trilha avançada |
| [TabNews](https://www.tabnews.com.br/) 🟢🇧🇷 | Artigos e discussões da comunidade brasileira; bom para **publicar** seus relatórios de laboratório |

#### 📚 Livros por fase (nenhum é obrigatório)

| Fase | Livro | Por que este |
|---|---|---|
| A2 | *Effective Java*, 3ª ed. — Joshua Bloch 💳 | Já estava; os itens sobre contratos e imutabilidade são os mais cobrados |
| A2 | *Modern Java in Action* — Urma, Fusco, Mycroft 💳 | Streams e programação funcional bem explicados; conversa com o livro de programação funcional que você já leu |
| A2–C2 | *Use a Cabeça! Padrões de Projetos* (Head First Design Patterns, 2ª ed.) 💳🇧🇷 | Padrões com analogias visuais; tem tradução |
| B1/D1 | ⭐ *Unit Testing: Principles, Practices, and Patterns* — Vladimir Khorikov 💳 | O melhor livro sobre **o que** testar |
| B2/F2 | [*SQL Performance Explained* / Use The Index, Luke](https://use-the-index-luke.com/) — Markus Winand 🟢 online | Versão web gratuita |
| C2 | *Spring Start Here* — Laurențiu Spilcă 💳 | Spring Core explicado para quem quer entender o container |
| D2 | ⭐ [*Spring Security in Action*, 2ª ed. — Laurențiu Spilcă](https://www.manning.com/books/spring-security-in-action-second-edition) 💳 | Referência atual de Spring Security |
| A2–F5 | *Refatoração*, 2ª ed. — Martin Fowler 💳🇧🇷 | Catálogo de refatorações; útil no Projeto B (manutenção) |
| F1 | *Release It!*, 2ª ed. — Michael Nygard 💳 | Padrões de estabilidade em produção |
| F3 | *Java Concurrency in Practice* — Brian Goetz et al. 💳 | Já estava |
| F4–F6 | ⭐ [*Designing Data-Intensive Applications*, 2ª ed. — Kleppmann & Riccomini](https://martin.kleppmann.com/2026/03/24/designing-data-intensive-applications-2e.html) 💳 | Segunda edição lançada em 2026; o livro de referência de sistemas de dados |
| Carreira | *Arquitetura Limpa* e *Código Limpo* — Robert C. Martin 💳🇧🇷 | Leia com **senso crítico** (seção 21): são muito citados em entrevistas brasileiras, mas várias regras são debatidas hoje |

> **Dica de acesso:** antes de comprar, verifique se a biblioteca da UniAmérica (mesmo com matrícula trancada, pergunte) ou o Kindle Unlimited têm o título. A Manning costuma ter promoções frequentes de e-books.

#### 🎧 Podcasts (para o deslocamento ou o treino)

| Podcast | Idioma | Por que |
|---|---|---|
| [Hipsters.tech](https://www.hipsters.tech/) | 🇧🇷 | Mercado e tecnologia brasileiros, da Alura |
| [Inside Java Podcast](https://inside.java/podcast/) | 🇺🇸 | Time da JDK falando de recursos novos; bom treino de *listening* |
| *A Bootiful Podcast* (Josh Long) | 🇺🇸 | Ecossistema Spring e entrevistas |

#### 👥 Comunidades e eventos

| Comunidade | O que oferece |
|---|---|
| [SouJava](https://soujava.org.br/) | Maior comunidade Java do Brasil; eventos e meetups |
| [TabNews](https://www.tabnews.com.br/) | Publicar aprendizados e receber comentários técnicos |
| [backend-br (GitHub)](https://github.com/backend-br) | Vagas e desafios de backend |
| Servidores Discord de criadores (DevDojo, Rocketseat, etc.) | Tirar dúvidas e fazer *pair programming* |
| [Hacktoberfest](https://hacktoberfest.com/) (todo outubro) | Primeira contribuição open source com incentivo |
| Eventos: TDC (The Developer's Conference), meetups do Itaipu Parquetec | Rede de contatos — em vaga júnior, contato humano ainda abre portas |

#### 🎓 Certificações (opcionais — não são pré-requisito para júnior)

| Certificação | Quando faz sentido | Observação honesta |
|---|---|---|
| **Oracle Certified Professional: Java SE 21 Developer (1Z0-830)** 💳 | Depois da trilha avançada F3, se quiser estudar a linguagem a fundo | Força conhecer detalhes da linguagem; o mercado júnior brasileiro valoriza mais projeto + entrevista do que certificado. Confira preço e regras no site da Oracle |
| **Spring Certified Professional** (Broadcom) 💳 | Depois de usar Spring em projeto real | Verifique se o exame foi atualizado para Spring Boot 4 antes de estudar para ele |
| **AWS Certified Cloud Practitioner** 💳 | Se vagas-alvo pedirem cloud | Introdutório; o curso preparatório no Skill Builder é gratuito |

#### 💳 Formações pagas adicionais (além de DevSuperior e AlgaWorks)

| Opção | Perfil | O que conferir |
|---|---|---|
| [Alura](https://www.alura.com.br/) | Assinatura com muitas formações Java/Spring em PT-BR | Versão do Boot nas aulas; se a formação cobre testes e segurança |
| [Cursos da Giuliana Bezerra na Udemy](https://www.udemy.com/user/giuliana-silva-bezerra/) | Cursos avulsos de Spring, testes e arquitetura | Aproveite as promoções frequentes da Udemy; nunca pague preço cheio |
| [Full Cycle](https://fullcycle.com.br/) | Formação avançada (arquitetura, microsserviços, DevOps) | **Só depois da primeira vaga** ou da trilha F; é conteúdo de nível pleno |
| [Hypersistence / cursos do Vlad Mihalcea](https://vladmihalcea.com/) | Desempenho de JPA em profundidade | Somente se F2 virar especialização |

### Como estudar documentação em inglês

Escolha uma página ligada ao problema do dia. Leia um trecho, identifique cinco termos, execute o exemplo e escreva três frases em português explicando o comportamento. Use tradução como apoio e preserve os nomes técnicos para conseguir reconhecê-los em erros e entrevistas.

---

<a id="entrevistas"></a>
## 12 · Preparação para entrevistas

### Treino semanal de 60 minutos

| Tempo | Atividade |
|---|---|
| 15 min | Explicar um conceito com exemplo do projeto |
| 20 min | Resolver problema pequeno em Java, narrando decisões |
| 15 min | Escrever SQL ou investigar um erro |
| 10 min | Revisar limites, testes e clareza da explicação |

### Perguntas que você deve conseguir responder

| Área | Perguntas de prática |
|---|---|
| Java | Quando escolher List, Set ou Map? Como equals/hashCode se relacionam? Por que usar composição? |
| Exceções e debug | Qual é a causa original deste stack trace? Como reproduziria o erro? |
| HTTP | O que ocorre de uma requisição até a resposta? Como escolher 400, 401, 403, 404 e 409? |
| Spring | O que é DI? Qual a diferença entre Spring Framework e Boot? Por que separar controller e regra de negócio? |
| SQL/JPA | Como fazer JOIN? O que protege uma transação? O que é N+1? Quando um índice pode ajudar? |
| Segurança | Como impedir acesso ao pedido de outra pessoa? Por que autenticar não basta? |
| Testes | O que um teste unitário verifica? Quando preciso de um banco real? O que não deveria ser mockado neste caso? |
| Entrega | Como outro desenvolvedor executa o projeto? Onde ficam configurações e segredos? |
| Decisões | O que você faria diferente hoje? Qual limitação conhece e como investigaria? |

### Desafios práticos

1. **Java:** agrupar despesas por categoria e testar entradas inválidas.
2. **SQL:** listar todos os clientes e seus totais, incluindo quem não comprou.
3. **API:** adicionar uma regra de desconto descrita em uma issue, sem resolução pronta.
4. **Debug:** descobrir por que uma exceção virou erro 500 e corrigir o contrato.
5. **Segurança:** demonstrar que trocar o ID na URL não permite acessar outro usuário.

### Comunicação e comportamento

Prepare três histórias curtas: um erro difícil, uma decisão que mudou após feedback e um problema que você dividiu em etapas. Use **situação → tarefa → ação → resultado**, deixando claro o que veio de estudo e o que veio de experiência profissional, se houver.

Como referência de processo, a [orientação de entrevistas da Microsoft](https://careers.microsoft.com/v2/global/en/hiring-tips/technical-interviewing) recomenda esclarecer o problema, planejar, programar e testar. Isso é uma referência de prática, não uma descrição universal de entrevistas júnior.

---

<a id="acompanhamento"></a>
## 13 · Painel de acompanhamento

### Rubrica de autonomia

| Nota | O que significa |
|---:|---|
| 0 | Ainda não reconheço o assunto |
| 1 | Reconheço quando vejo um exemplo |
| 2 | Faço seguindo um roteiro |
| 3 | Resolvo uma variação, testo e explico com consulta pontual |
| 4 | Comparo alternativas, diagnostico falhas e ajudo outra pessoa |

**Meta de avanço:** nota 3 nos fundamentos da etapa, acompanhada de código ou explicação verificável. Não use a média para esconder uma lacuna essencial.

| Competência | Nota atual | Evidência / link | Próxima ação |
|---|---|---|---|
| Java e lógica | — | — | — |
| OO e coleções | — | — | — |
| Git e Maven | — | — | — |
| SQL e transações | — | — | — |
| HTTP e Spring | — | — | — |
| Testes e depuração | — | — | — |
| Segurança | — | — | — |
| Entrega e documentação | — | — | — |
| Manutenção de código existente | — | — | — |
| Colaboração e comunicação | — | — | — |
| Inglês técnico 🆕 | — | — | — |
| Java moderno (21+) 🆕 | — | — | — |
| Multi-tenancy e isolamento 🆕 | — | — | — |

### Checklist de prontidão para candidaturas

- [ ] Consigo explicar meu projeto sem ler o README.
- [ ] Implemento uma mudança pequena e escrevo um teste relevante.
- [ ] Sei consultar e modificar dados com SQL.
- [ ] Explico o fluxo HTTP → serviço → banco.
- [ ] Sei usar Git e mostrar uma alteração com contexto.
- [ ] Tenho uma história concreta de erro investigado e corrigido.
- [ ] O projeto tem instruções reproduzíveis e limitações honestas.
- [ ] Meu currículo descreve habilidades e experiências reais.
- [ ] Conferi os requisitos da vaga; atendo aos eliminatórios ou esclareci a dúvida com a empresa.

Este checklist orienta a preparação para júnior; não bloqueia candidaturas a estágios e programas com exigências menores.

### Registro de candidaturas

| Empresa / cargo | Link e data | Requisitos principais | Evidência minha | Etapa | Próxima ação |
|---|---|---|---|---|---|
| Preencher | — | — | — | Identificada | — |

### Revisão semanal copiável

```markdown
## Semana __ | Período __

Meta principal:
Horas planejadas / realizadas:

- [ ] Entrega implementada:
- [ ] Teste ou evidência:
- [ ] Conceito que expliquei sem roteiro:
- [ ] Dúvida ainda aberta:
- [ ] Ação de carreira:

Maior dificuldade:
O que vou reduzir ou mudar:
Próxima tarefa concreta:
Link do commit/PR:
```

---

<a id="primeiros-dias"></a>
## 14 · Primeiros sete dias

| Dia | Tempo | Ação | Resultado |
|---|---:|---|---|
| 1 | 1 h | Instalar JDK/IDE, executar primeiro programa | Programa rodando e versões registradas |
| 2 | 1 h 30 | Variáveis, tipos e operações | Três exercícios simples |
| 3 | 1 h 30 | Condicionais e validação | Calculadora com casos inválidos |
| 4 | 1 h 30 | Laços e métodos | Problema dividido em funções |
| 5 | 1 h | Git e README | Primeiro histórico de mudanças |
| 6 | 2 h 30 | Recriar a calculadora e explicar decisões | Versão própria, exemplos e correções |
| 7 | 1 h | Revisar e planejar a semana seguinte | Lista de dúvidas e próxima tarefa |

**Total:** 10 horas. O Git pode ser usado desde o primeiro dia se você já o conhece. Não é necessário concluir um curso inteiro nesta semana.

> **Próxima ação:** reserve os blocos no seu calendário, escolha um curso de Java e faça o primeiro programa. O plano ganha valor quando cada etapa deixa uma evidência do que você aprendeu.

---

<a id="fontes"></a>
## 15 · Fontes, decisões e limites

### Documentos fornecidos

| Fonte | Partes usadas | Como contribuiu |
|---|---|---|
| [Plano Backend Java Spring Boot Integrado 2026](C:/Users/adrya/Downloads/Plano_Backend_Java_Spring_Boot_Integrado_2026.pdf) | Diagnóstico e método, pp. 3–14; arranque e projetos, pp. 52–62; avaliação e referências, pp. 83–94 | Ordem de pré-requisitos, projetos progressivos, autonomia e aprofundamento |
| [Guia Primeira Vaga Backend Java Spring 2026](C:/Users/adrya/Downloads/Guia_Primeira_Vaga_Backend_Java_Spring_2026.pdf) | Síntese, p. 4; competências/projeto/carreira, pp. 16–25; acompanhamento, pp. 34–35 | Priorização para contratação, API de pedidos, testes e rotina de candidatura |

Os documentos foram tratados como referências de conteúdo. Instruções internas, hipóteses sobre experiência e cronogramas não foram automaticamente assumidos como ordens ou dados pessoais do leitor.

### O que esta versão reorganizou

- Transformou a formação ampla de 24 meses em uma trilha de entrada com aprofundamento separado.
- Não aplicou o arranque de 12 semanas do guia de carreira como promessa para quem parte do zero.
- Manteve dois projetos centrais, evitando exigir todos os projetos dos PDFs simultaneamente.
- Antecipou testes, Git, consulta a vagas e apresentação do trabalho.
- Preservou concorrência, eventos, arquitetura e operação na continuidade, com experimentos verificáveis.
- Adicionou curadoria de vídeos/cursos, pré-requisitos e alertas de compatibilidade.

### Bastidores removidos na revisão 3

As notas sobre subagentes de pesquisa e sobre o quadro do Miro (que não pôde ser lido) foram removidas desta versão: eram detalhes de como o documento foi gerado, não de como estudar. Os links para os PDFs apontam para a pasta Downloads do seu computador; se quiser consultá-los pelo Obsidian, mova os arquivos para dentro do vault (por exemplo, `Estudos/Fontes/`) e atualize os links.

As referências externas estão junto dos assuntos e na biblioteca. Páginas de documentação com `current` e catálogos podem mudar; use a documentação da versão efetiva do seu projeto.

### Limites da proposta

Não houve levantamento estatístico novo de vagas, salários ou chances de contratação. Os prazos são estimativas pedagógicas; o plano não garante emprego nem atribui senioridade por tempo de estudo. Na revisão 3, horas disponíveis (~20 h), experiência (Java intermediário), região (Foz do Iguaçu + remoto) e situação acadêmica (matrícula trancada) foram incorporadas; se mudarem, ajuste a seção 00.

---

<a id="oficinas"></a>
## 16 · Oficinas de engenharia backend

> **Como encaixar:** as oficinas substituem parte dos exercícios da fase indicada. As faixas de horas pressupõem os conhecimentos anteriores. Não são disciplinas adicionais obrigatórias fora da carga semanal.

### 🖥️ O1 · Terminal, processos e ambiente | 2–4 h distribuídas

**Onde:** fundamentos; retomada nas semanas 27–30.

Aprenda a navegar entre pastas, reconhecer caminhos absolutos/relativos, localizar arquivos, ler variáveis de ambiente, executar um programa e interpretar seu código de saída. Depois observe processo, porta e saída de log da aplicação.

| Situação | Evidência de compreensão |
|---|---|
| Java funciona na IDE, mas não no terminal | Identificar JDK e configuração utilizados em cada local |
| Porta da aplicação ocupada | Identificar a causa e escolher uma porta disponível |
| Arquivo não encontrado | Explicar diretório de trabalho e caminho usado |
| Log muito grande | Filtrar por termo/data e localizar a causa original |

Comece no PowerShell; depois pratique equivalentes em Linux, sem obrigação de trocar de sistema. **Aceite:** executar e parar sua aplicação pelo terminal e explicar um problema de configuração resolvido.

### 💰 O2 · Dinheiro e tempo sem surpresas | 3–4 h

**Onde:** semanas 7–10; reaplicar ao pedido nas semanas 20–22.

- Crie valores decimais a partir de texto ou conversão cuja semântica compreenda; investigue por que construir `BigDecimal` diretamente de um `double` pode surpreender.
- Defina moeda, escala, arredondamento e se arredonda por item ou ao final. Teste a política escolhida.
- Diferencie comparação numérica de igualdade que considera escala; experimente `10.0` e `10.00`.
- Use `LocalDate` para data civil e um instante ou valor temporal com offset adequado para acontecimentos. Defina o fuso ao apresentar ou filtrar por dia.
- Injete um `Clock` nos cálculos de prazo para testar datas fixas, sem depender do relógio da máquina.

**Aceite:** o teste continua correto amanhã; uma compra perto da meia-noite é filtrada conforme o fuso documentado; totais correspondem à regra escrita.

### 🔁 O3 · Transação que realmente reverte | 3–5 h

**Onde:** semanas 20–24.

1. Escreva a operação de serviço que salva pedido e altera estoque.
2. Provoque uma falha depois da primeira escrita.
3. Termine a chamada da aplicação e consulte o banco em nova transação.
4. Comprove que nenhum dado parcial foi confirmado.
5. Repita com sucesso e com o tipo de exceção relevante à regra.

Um teste revertido automaticamente ao terminar pode esconder problemas na transação da aplicação. Observe o resultado persistido depois da operação.

No modo padrão baseado em proxies, uma chamada interna entre métodos do mesmo objeto não é interceptada como uma chamada externa pelo proxy. Por padrão, exceções não verificadas e `Error` causam rollback; exceções verificadas exigem atenção à configuração adotada. Consulte [uso de `@Transactional`](https://docs.spring.io/spring-framework/reference/data-access/transaction/declarative/annotations.html) e [regras de rollback](https://docs.spring.io/spring-framework/reference/data-access/transaction/declarative/rolling-back.html).

**Aceite:** demonstrar estado anterior, falha e estado posterior; explicar atomicidade versus proteção contra concorrência.

### 🌐 O4 · Consumir um serviço externo | 4–6 h introdutórias

**Onde:** semanas 23–24 se os aceites principais estiverem concluídos; caso contrário, semanas 31–32. A versão ampliada está no projeto C.

Crie consulta de frete fictícia com `RestClient` em uma aplicação MVC. Mantenha URL e timeouts configuráveis. Separe cliente HTTP e regra de negócio. Use servidor simulado para não depender de uma API pública nos testes.

| Resposta do fornecedor | Comportamento a demonstrar |
|---|---|
| Sucesso com dados válidos | Cotação convertida para o modelo interno |
| HTTP 500 | Falha traduzida para erro definido no contrato |
| Demora acima do timeout | Chamada termina dentro do limite configurado |
| JSON inesperado ou valor inválido | Resposta rejeitada; não aceitar preço fictício silenciosamente |

Não aceite URL arbitrária do cliente para fazer a chamada. Comece sem retry automático. Defina se a cotação é consultiva ou vinculante antes de integrá-la à compra; uma falha não deve deixar pedido parcialmente gravado. Evite manter locks de banco durante chamadas externas lentas.

**Aceite:** quatro testes passam sem internet; você distingue falha do fornecedor e erro apresentado pela sua API. Fontes: [REST Clients](https://docs.spring.io/spring-framework/reference/integration/rest-clients.html), [WireMock Jupiter](https://wiremock.org/docs/junit-jupiter/) e [simulação de falhas](https://wiremock.org/docs/simulating-faults/).

### 🛡️ O5 · Segurança traduzida em testes | 3–5 h

**Onde:** semanas 25–26; parte da entrega de segurança.

| Risco | Teste no projeto |
|---|---|
| Acesso a objeto alheio | Trocar ID não revela nem altera pedido de outro usuário |
| Alteração de propriedade indevida | Papel administrativo, total ou comprador no payload não contornam regras do servidor |
| Operação administrativa indevida | Usuário comum não cadastra nem altera estoque |
| Consumo excessivo de recursos | Página e payload acima do limite recebem tratamento definido |
| Exposição de informação | Logs e erros não mostram tokens, senhas ou SQL interno |

Use o [OWASP API Security Top 10](https://api-security.owasp.org/editions/2023/en/0x11-t10/) para encontrar cenários, não decorar siglas. Teste leitura e alteração; autenticar não autoriza automaticamente todos os recursos.

### 🤝 O6 · Issue, branch e revisão | 15–30 min por mudança

**Onde:** a partir da semana 8; aprofundar na consolidação.

1. Escreva issue com problema, exemplo e aceites.
2. Crie branch e faça mudança pequena.
3. Leia o diff e execute testes antes do pull request.
4. Explique problema, solução, validação e limitações.
5. Responda ao feedback com alteração ou justificativa técnica.

Em repositório de exercício, crie duas alterações que conflitam e resolva preservando ambas as intenções. Execute os testes depois. Referência: [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow).

Sozinho, revise a mudança no dia seguinte e identifique como simulação individual. Relate bloqueios com: **o que tentei → o que esperava → o que ocorreu → evidência → ajuda necessária**.

### 🧯 O7 · Recuperar aplicação e dados | 3–5 h

**Onde:** introdução em D4; aprofundamento em F6.

Crie dados sintéticos, gere backup, restaure em outro banco de exercício e execute consultas de conferência. Nunca use banco importante no laboratório. Siga o [guia PostgreSQL de dump e restauração](https://www.postgresql.org/docs/current/backup-dump.html) da versão utilizada.

**Aceite:** registrar procedimento, pré-requisitos, contagem de registros e verificação de relacionamentos; outra pessoa consegue repetir. Backup criado sem restauração testada ainda não demonstra recuperação.

Separe rollback da aplicação, reversão de transação e migração de banco: voltar uma imagem antiga não desfaz uma mudança incompatível no esquema. Estratégias completas de migração compatível ficam para o aprofundamento.

---

<a id="projetos-extras"></a>
## 17 · Projetos complementares e desafios

### Escolha por lacuna, não por quantidade

| Projeto | Esforço estimado | Momento | Evidência |
|---|---:|---|---|
| A · Importador de catálogo CSV | 8–12 h | Após SQL/JDBC; ou semanas 31–32 | Validação, reprocessamento e integridade |
| B · Manutenção em código existente | 10–14 h | Semanas 31–36 | Investigação, regressão e mudança pequena |
| C · Frete com fornecedor simulado | 12–18 h | Consolidação ou aprofundamento | Integração externa, falhas e colaboração |

Escolha **no máximo um antes de intensificar candidaturas**. Substitua parte dos exercícios ou amplie o calendário; preserve candidaturas e entrevistas. As estimativas pressupõem pré-requisitos concluídos. A oficina O4 está incluída no esforço de C e não deve ser contada duas vezes.

### 📥 Projeto A · Importador de catálogo CSV

**Problema:** cadastrar produtos de um arquivo com relatório de erros e sem duplicação ao reprocessar.

**Pré-requisitos:** Java, arquivos, exceções, SQL e JDBC. **Escopo:** comando local; sem interface gráfica, upload HTTP ou Spring Batch.

**Contrato:** cabeçalho `sku,nome,preco,estoque`; UTF-8; separador e formato decimal documentados. Linhas válidas são importadas e inválidas rejeitadas individualmente. SKU existente é informado como ignorado. Defina se preço zero é permitido, mantendo a regra do catálogo.

- [ ] Oito linhas válidas e duas inválidas produzem oito inserções e dois erros identificados.
- [ ] Nome com vírgula entre aspas é interpretado corretamente.
- [ ] Cabeçalho incorreto impede gravações.
- [ ] Reimportação não duplica produtos.
- [ ] Duplicidade no próprio arquivo tem comportamento documentado.
- [ ] Falha de banco não é classificada como mero erro de preenchimento.
- [ ] README explica formato, exemplos e política de persistência.

Use parser apropriado, como [Apache Commons CSV](https://commons.apache.org/proper/commons-csv/), em versão estável, em vez de presumir que `split(",")` resolve CSV. **Variação:** adicionar categoria opcional mantendo compatibilidade com arquivos antigos.

**Entrega:** comando, arquivos de exemplo, relatório e testes. Limites de upload e autorização ficam para uma futura exposição por HTTP.

### 🔧 Projeto B · Manutenção em aplicação existente

**Problema:** implementar pequena mudança em aplicação que você não escreveu.

**Base:** cópia própria do [Spring Petclinic](https://github.com/spring-projects/spring-petclinic). Registre commit/tag, siga o README correspondente e execute os testes antes de modificar. Confira licença e preserve atribuições. O exercício de manutenção não pressupõe que o projeto esteja obsoleto.

1. Siga uma funcionalidade da entrada à persistência e desenhe seu fluxo.
2. Especifique regra pequena, como rejeitar nome só com espaços, **se a revisão escolhida ainda não tratar isso**.
3. Se já estiver coberta, escolha outro requisito e escreva o aceite primeiro.
4. Adicione teste que falha na versão inicial e faça a menor mudança necessária.
5. Abra PR no seu repositório; não envie exercício artificial como correção real ao projeto original.

- [ ] Versão inicial executável e identificada.
- [ ] Teste novo falha antes e passa depois.
- [ ] Testes existentes continuam passando.
- [ ] Diff não mistura refatorações sem relação com a tarefa.
- [ ] PR explica comportamento anterior, requisito e risco de regressão.
- [ ] Você explica como encontrou os arquivos relevantes.

**Variação:** receber demanda sem indicação dos arquivos. Sozinho, crie issue fictícia e investigue sem tutorial. **Entrega:** PR, testes e nota de investigação, apresentados honestamente como estudo.

### 🚚 Projeto C · Cotação de frete com falhas simuladas

**Problema:** consultar fornecedor que pode responder devagar, falhar ou devolver dados inválidos.

**Pré-requisitos:** HTTP, Spring MVC, testes e Git. **Escopo:** extensão pequena da API com fornecedor simulado; sem pagamento ou dependência de API pública.

**Contrato:** destino e peso em unidades documentadas; resposta com preço, moeda e prazo. Defina limites de entrada e validade da cotação. Comece com consulta isolada e depois integre ao pedido.

- [ ] Sucesso retorna cotação esperada.
- [ ] Timeout termina em erro previsível.
- [ ] HTTP 5xx e resposta inválida são tratados e diagnosticáveis.
- [ ] Falha externa não deixa gravação parcial.
- [ ] Testes independem da internet.
- [ ] Logs ajudam a localizar falha sem dados desnecessários.
- [ ] Cliente HTTP e regra podem ser testados separadamente.
- [ ] Você justifica a ausência inicial de retry e os requisitos para introduzi-lo.

**Colaboração opcional:** uma pessoa prepara contrato/simulador e outra implementa cliente; ambas revisam o PR. Sem parceiro, alterne papéis em dias diferentes e registre a simulação individual.

**Variação:** alterar campo do fornecedor e investigar a quebra pelos testes. **Entrega:** contrato, cliente, simulador, testes e PR revisado.

### 🧩 Banco de desafios curtos

Escolha um por semana no bloco de prática.

| Nível | Desafio | Evidência |
|---|---|---|
| Java | Contar palavras sem distinguir maiúsculas | Normalização explícita e testes |
| Java | Remover duplicados preservando ordem | Estrutura de dados justificada |
| Java | Filtrar lançamentos por intervalo | Limites inclusivos/exclusivos definidos |
| Java | Aplicar desconto com teto | Cálculo e arredondamento testados |
| SQL | Listar clientes sem pedidos | Consulta correta com clientes novos |
| SQL | Três produtos mais vendidos | Agregação e desempate |
| SQL | Inserir SKU duplicado | Constraint e erro tratado |
| HTTP | Corrigir 500 de validação esperada | Contrato e regressão |
| API | Limitar tamanho de página | Entrada abusiva tratada |
| API | Desativar produto vendido | Histórico preservado |
| Segurança | Enviar campo administrativo no payload | Privilégio não alterado |
| Testes | Remover dependência do relógio | Resultado determinístico |
| Integração | Simular resposta malformada | Falha controlada |
| Manutenção | Corrigir bug sem mudar API pública | Teste novo e diff pequeno |
| Avançado | Reentregar evento após falha | Efeito não duplicado |

---

<a id="provas"></a>
## 18 · Provas práticas e recuperação

### Definição de concluído

- [ ] Entrega executa pelas instruções.
- [ ] Caminho válido e pelo menos dois erros relevantes verificados, quando aplicáveis.
- [ ] Decisão principal e limitação explicadas.
- [ ] Variação implementada sem reproduzir resolução.
- [ ] Evidência registrada: commit, teste, consulta, relatório ou demonstração.

### Checkpoints de autonomia

| Marco | Prova sugerida | Evidência para avançar |
|---|---|---|
| Semana 4 | 45–60 min: programa de cálculo | Métodos claros, validação e explicação |
| Semana 10 | 60–90 min: novo relatório CLI | Coleção adequada, testes e build |
| Semana 14 | 60–90 min: modelagem e consultas | PK/FK, JOIN, agregação e rollback |
| Semana 22 | 90–120 min: endpoint com nova regra | Contrato, persistência e verificação |
| Semana 30 | 90–120 min: alteração com permissão | Testes, autorização e documentação |
| Semana 36 | 60–90 min: demanda incompleta | Perguntas, investigação, implementação e explicação do diff |

Tempos organizam o exercício; não são limites de aprovação. Avalie compreensão, implementação, investigação e verificação separadamente pela rubrica 0–4. Documentação é permitida; geração integral da solução não demonstra autonomia. Se não terminar, registre raciocínio e próximo passo.

### Recuperação de lacunas

| Sinal | Ação |
|---|---|
| Duas sessões gastas em configuração | Reduzir para exemplo mínimo; uma dependência por vez |
| Acompanho, mas não reconstruo | Refazer exercício menor sem vídeo |
| Funciona, mas não sei explicar | Desenhar fluxo e justificar cada responsabilidade |
| Teste não detecta bug conhecido | Rever asserções, preparação e descoberta de testes |
| Mesmo erro reaparece | Registrar causa, exemplo mínimo e teste de regressão |
| Aceite passa e playlist não terminou | Avançar por competência; consultar aulas restantes quando necessário |
| Muitos projetos incompletos | Congelar extras e concluir versão apresentável da API |

**Sprint de recuperação:** uma lacuna, 2–3 sessões, exemplo pequeno, nova prova com enunciado diferente e evidência atualizada. Se persistir, procure revisão específica em vez de reiniciar todo o curso.

### Materiais adicionais verificados

| Recurso | Idioma / acesso | Fase e uso |
|---|---|---|
| [Exercism — Java](https://exercism.org/tracks/java) | EN · gratuito | A1–B1: problemas do tema atual, testes e refatoração |
| [Ubuntu — terminal](https://ubuntu.com/desktop/docs/en/latest/tutorial/the-linux-command-line-for-beginners/) | EN · gratuito | O1: caminhos, arquivos e redirecionamento |
| [Maven in 5 Minutes](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html) | EN · gratuito | B1: estrutura, dependência, plugin e build; título não é prazo de domínio |
| [Spring — Error Responses](https://docs.spring.io/spring-framework/reference/web/webmvc/mvc-ann-rest-exceptions.html) | EN · gratuito | C2: ProblemDetail e tratamento centralizado |
| [Spring — MockMvc](https://docs.spring.io/spring-framework/reference/testing/mockmvc/overview.html) | EN · gratuito | D1: binding, validação, serialização e resposta MVC |
| [OWASP API Security Top 10](https://api-security.owasp.org/editions/2023/en/0x11-t10/) | EN; tradução PT-PT no site · gratuito | D2/O5: riscos convertidos em testes |
| [Spring — REST Clients](https://docs.spring.io/spring-framework/reference/integration/rest-clients.html) | EN · gratuito | O4/C: cliente externo e falhas |
| [WireMock — Jupiter](https://wiremock.org/docs/junit-jupiter/) | EN · gratuito/open source | O4/C: servidor simulado; conferir compatibilidade |
| [WireMock — falhas](https://wiremock.org/docs/simulating-faults/) | EN · gratuito | O4/C: atraso, erro HTTP e interrupção |
| [OpenAPI Specification](https://spec.openapis.org/oas/latest.html) | EN · gratuito | D4: contrato na versão suportada pelas ferramentas |

A lista complementa a seção 11. Abra a referência ligada ao exercício atual; não é necessário consumir todos os materiais.

---

<a id="revisao"></a>
## 19 · Registro da revisão minuciosa

| Achado | Mudança | Benefício |
|---|---|---|
| Testcontainers antes de Docker | Runtime antecipado para semana 23 | Pré-requisito disponível |
| Autorização testada antes de ser ensinada | Cenários movidos para D2 | Testes acompanham funcionalidade |
| Possibilidade de testes não executados | Surefire/Failsafe, configuração e relatórios | Execução comprovada |
| Rollback mascarado pelo teste | Consulta posterior em nova transação | Estado persistido verificado |
| Segurança ampla para 20 h | Um mecanismo principal; OAuth2 como evolução | Escopo executável |
| Regras de pedido implícitas | Identidade, total, quantidades e histórico definidos | Menos ambiguidades |
| Atomicidade confundida com concorrência | Limitação inicial explicitada | Garantias honestas |
| Integrações pouco trabalhadas | Oficina e projeto com fornecedor simulado | Timeouts e contratos externos |
| Manutenção pouco praticada | Mudança em cópia do Petclinic | Investigação e regressão |
| Colaboração abstrata | Issue, PR, conflito e feedback | Evidências de comunicação |
| Cronograma rígido | Margem opcional e recuperação | Ritmo adaptável |
| Extras poderiam inflar o plano | Substituição ou horas adicionais explícitas | Foco na primeira vaga |

Cronograma, pré-requisitos, critérios, projetos e referências foram revistos. As 360/600 horas permanecem referência de primeira passagem; extras e repetições exigem substituição ou extensão explícita. Fontes novas foram consultadas nos sites dos mantenedores/autores. Compatibilidade de dependências precisa ser confirmada na implementação; este documento não é um projeto de software executado e testado.

A pesquisa complementar não transforma anúncios históricos dos PDFs em oportunidades atuais.

---

<a id="ingles"></a>
## 20 · Inglês técnico — trilha paralela

> **Por que isto virou uma seção:** praticamente toda a documentação deste plano está em inglês, e as melhores vagas remotas pedem inglês intermediário. Com inglês básico, cada página da doc custa o dobro de energia. Investir 3 h/semana aqui **acelera todas as outras etapas** — é como afiar o machado antes de cortar a árvore.

### Metas por trimestre

| Período | Meta verificável | Atividades |
|---|---|---|
| Meses 1–3 | Ler uma página da doc do Spring com tradutor só para palavras soltas | [freeCodeCamp — A2 English for Developers](https://www.freecodecamp.org/news/learn-english-for-developers-a2/) (gratuito, com certificação); glossário no Obsidian |
| Meses 4–6 | Assistir um vídeo do Dan Vega com legenda **em inglês** (não em português) e resumir em 5 frases | [freeCodeCamp — B1 English for Developers](https://www.freecodecamp.org/news/freecodecamps-b1-english-for-developers-certification-is-now-live/); um vídeo técnico por semana |
| Meses 7–9 | Escrever o README do projeto 2 em inglês e uma *issue* técnica clara | Escrita semanal curta; revisar com IA pedindo **explicação dos erros**, não só correção |
| Meses 10–12 | Explicar o projeto em voz alta, em inglês, por 2 minutos | Gravar e reouvir; simulação de *self-introduction* de entrevista |

### Rotina semanal de 3 h

| Bloco | Tempo | Atividade |
|---|---:|---|
| Curso estruturado | 1 h | freeCodeCamp English for Developers |
| Leitura técnica | 1 h | A página da doc ligada ao exercício da semana, com o método da seção 11 (5 termos → 3 frases) |
| *Listening* | 40 min | Um vídeo dos canais em inglês da seção 11 ou um episódio do Inside Java Podcast |
| Revisão | 20 min | Flashcards do glossário (seção 23) |

> [!tip] Truque de ambiente
> Troque o idioma da IDE, do sistema do celular e do GitHub para inglês. Mensagens de erro em inglês são **pesquisáveis** — e você passa a aprender vocabulário técnico sem esforço extra.

---

<a id="fundamentos-extras"></a>
## 21 · Fundamentos que faltavam

### 🧱 Design de código: SOLID, padrões e senso crítico

**Onde encaixar:** fim de A2 e durante C2–C3, aplicado ao projeto 2.

- **SOLID** e **padrões de projeto** (Strategy, Factory, Template Method, Observer, Decorator) caem com frequência em entrevistas brasileiras. Estude cada um **a partir de um problema do seu projeto** — por exemplo, Strategy para regras de desconto ou de frete.
- **Senso crítico:** *Código Limpo* e *Arquitetura Limpa* são muito citados, mas várias recomendações (funções minúsculas, camadas obrigatórias) são debatidas hoje. Em entrevista, a resposta madura é "conheço a regra, sei quando ela ajuda e quando atrapalha".
- **Exercício:** implemente a regra de desconto da seção 12 primeiro com `if/else`, depois com Strategy. Escreva três frases sobre quando a segunda versão compensa e quando é exagero.

### ☕ Java moderno que vale dominar (Java 21+)

| Recurso | Uso típico no backend | Pergunta de entrevista ligada |
|---|---|---|
| `record` | DTOs e *value objects* | "Record é imutável?" (raso: só as referências) |
| `sealed` + pattern matching em `switch` | Modelar estados e resultados (`Sucesso`/`Falha`) com exaustividade verificada pelo compilador | "Qual a vantagem sobre enum?" |
| Sequenced Collections (Java 21) | `getFirst()`, `getLast()`, `reversed()` | "O que muda em `List` e `LinkedHashMap`?" |
| Text blocks | SQL e JSON legíveis em testes | — |
| Virtual threads (Java 21) | Concorrência com I/O bloqueante; trilha F3 | "Virtual threads deixam CPU mais rápida?" (não) |
| `Optional` | Retorno que comunica ausência | "Por que não usar `Optional` como atributo?" |

### 🔐 LGPD para desenvolvedor backend

A [LGPD (Lei 13.709/2018)](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm) se aplica a qualquer sistema que trate dados pessoais de pessoas no Brasil — incluindo o SaaS da faculdade e os sites dos seus clientes freelance. Não é necessário estudar direito; é necessário reconhecer as implicações técnicas:

- **Minimização:** guardar só o dado necessário (o pedido precisa mesmo do CPF?).
- **Logs:** e-mail, CPF, telefone e endereço não devem aparecer em log sem necessidade — mesmo princípio de "não logar senha/token".
- **Direitos do titular:** como você atenderia a um pedido de exclusão sem quebrar o histórico de pedidos? (Pista: anonimização × exclusão; conversa com a regra "Histórico" da seção 10.)
- **Referência oficial:** [ANPD — Autoridade Nacional de Proteção de Dados](https://www.gov.br/anpd/pt-br).

**Aceite:** um parágrafo `Dados pessoais` no `docs/arquitetura.md` do projeto 2 listando quais dados existem, onde ficam e o que não vai para log.

### 🤖 IA no fluxo de trabalho — como empresas avaliam isso hoje

A seção 04 trata IA como ferramenta de estudo. No trabalho, a expectativa já é outra: saber **usar** assistentes de código e, principalmente, **revisar** o que eles produzem.

- Pratique revisar código gerado por IA com a mesma régua de um PR humano: testes passam? A regra está certa? Há N+1, SQL concatenado, segredo no código?
- **Opcional na trilha avançada:** [Spring AI](https://docs.spring.io/spring-ai/reference/) para integrar um LLM à API (por exemplo, sugerir categoria de produto). Trate como integração externa da oficina O4 — timeout, falha e resposta inválida — e não como mágica.
- Em processos seletivos, pergunte e siga a regra da empresa sobre uso de IA.

### 🏛️ System design para entrevista júnior

Júnior raramente recebe "desenhe o Twitter", mas perguntas como "como você escalaria esta API?" são comuns. Prepare respostas que partam do **seu projeto**:

1. Onde está o gargalo provável? (banco, não a JVM, na maioria dos casos)
2. Índice, paginação e cache resolvem o quê?
3. O que muda com duas instâncias da aplicação? (sessão, concorrência de estoque — T11)
4. Quando uma fila ajudaria? (notificação — F4)

**Materiais:** [System Design Primer](https://github.com/donnemartin/system-design-primer) (seções introdutórias) e o canal [ByteByteGo](https://www.youtube.com/@ByteByteGo).

---

<a id="multi-tenant"></a>
## 22 · Laboratório multi-tenant

> **Por que entrou:** você é Tech Lead de um SaaS multi-tenant na faculdade. Isso deixa de ser "especialização futura" e vira um problema real que você pode estudar a fundo — e uma ótima história de entrevista ("como garantimos que um cliente nunca vê dados de outro?").

**Analogia:** multi-tenancy é um prédio de apartamentos. Todos os moradores (tenants) compartilham a estrutura (aplicação, banco), mas cada um precisa de uma chave que só abre a própria porta. As três estratégias abaixo diferem em **onde fica a parede** entre os apartamentos.

### As três estratégias de isolamento

| Estratégia | "Parede" | Vantagens | Custos |
|---|---|---|---|
| **Coluna discriminadora** (`tenant_id` em cada tabela) | Filtro em toda consulta | Simples, barato, um esquema só | Um filtro esquecido vaza dados; precisa de defesa em camadas |
| **Esquema por tenant** (PostgreSQL schemas) | Esquemas separados no mesmo banco | Isolamento melhor; backup por tenant mais fácil | Migrations rodam N vezes; mais conexões/configuração |
| **Banco por tenant** | Bancos separados | Isolamento máximo | Custo operacional alto; caro para muitos tenants pequenos |

### Roteiro do laboratório (10–16 h)

1. **Resolver o tenant:** de onde ele vem? (claim do token, subdomínio, cabeçalho). **Nunca** de um campo livre do corpo — mesma regra de "Identidade" da seção 10.
2. **Implementar coluna discriminadora** com o suporte nativo do Hibernate 6+ (`@TenantId` + `CurrentTenantIdentifierResolver`). Consulte o [Hibernate ORM User Guide](https://docs.hibernate.org/orm/current/userguide/html_single/Hibernate_User_Guide.html), capítulo *Multitenancy*.
3. **Defesa em profundidade:** ativar [Row-Level Security do PostgreSQL](https://www.postgresql.org/docs/current/ddl-rowsecurity.html) como segunda barreira, para que um filtro esquecido na aplicação não vaze dados.
4. **Testes obrigatórios** (estendem T06 da seção 10):
   - [ ] Tenant A lista recursos e nunca vê os de B.
   - [ ] Tenant A tenta buscar pelo ID um recurso de B → resposta conforme a política 403/404 documentada.
   - [ ] Consulta nativa/SQL manual também respeita o isolamento (é aqui que a RLS se paga).
   - [ ] Requisição sem tenant resolvido é rejeitada, e não executada "sem filtro".
   - [ ] Jobs assíncronos e eventos (F4) carregam o tenant explicitamente — `ThreadLocal` não atravessa threads sozinho.
5. **ADR:** registrar em `docs/decisoes/` qual estratégia o SaaS da faculdade usa, por quê e qual seria o gatilho para mudar.

**Cuidado:** não leve código do projeto da faculdade para o portfólio pessoal sem confirmar com a equipe e a instituição. Reproduza o **conceito** no projeto 2 (por exemplo, "lojas" como tenants da Order Management API).

---

<a id="obsidian"></a>
## 23 · Obsidian e técnicas de estudo

### 🗂️ Estrutura sugerida para o vault

Este documento é grande para uma nota só. Quando começar a usá-lo no dia a dia, considere dividi-lo:

```text
Estudos/
├── 00 MOC Backend Java.md          ← "mapa" com links para tudo (este plano, resumido)
├── Plano de Estudos - Revisao 3.md ← documento de referência
├── Fases/
│   ├── A2 Java moderno.md
│   ├── B2 SQL.md
│   └── ...
├── Conceitos/                      ← uma nota por conceito, escrita por você
│   ├── Transacional e proxies.md
│   ├── N+1.md
│   └── ...
├── Laboratorios/                   ← relatórios dos laboratórios e oficinas
├── Glossario EN.md
├── Revisoes semanais/
└── Fontes/                         ← PDFs originais
```

**Regra de ouro:** notas em `Conceitos/` são escritas **com suas palavras**, com um exemplo do seu código. Copiar trechos de documentação para o vault dá sensação de progresso sem gerar aprendizado.

### 🔌 Plugins úteis (comunidade)

| Plugin | Uso no plano |
|---|---|
| **Spaced Repetition** | Flashcards dentro das próprias notas (`pergunta::resposta`), revisados em intervalos crescentes |
| **Tasks** | Checklists das etapas com datas; consulta "o que falta nesta semana" |
| **Dataview** | Transformar a revisão semanal (seção 13) em um painel de horas e evidências |
| **Templater** | Criar a nota de revisão semanal com um atalho |

> Verifique cada plugin na aba *Community plugins* do Obsidian antes de instalar; avalie se ainda é mantido.

### 🧠 Técnicas de memorização com evidência

| Técnica | Como aplicar no plano |
|---|---|
| **Prática de recuperação** (*active recall*) | Os 10 primeiros minutos da sessão de 90 min (seção 04) já fazem isso: lembrar **sem olhar** antes de reler |
| **Repetição espaçada** | Flashcards revisados em 1, 7 e 30 dias; o plugin Spaced Repetition automatiza o intervalo |
| **Intercalação** (*interleaving*) | No banco de desafios curtos da seção 17, misture Java, SQL e HTTP na mesma semana em vez de 10 exercícios iguais |
| **Elaboração / técnica de Feynman** | Explicar o conceito como se fosse para um colega do primeiro período — você já ensinou C para amigos, use isso |
| **Exemplos concretos** | Todo conceito ligado a uma linha de código do seu projeto |

**O que evitar:** reler e sublinhar como método principal, maratonas de vídeo sem prática e "estudar" só copiando código do instrutor. A sensação de fluência ao reler não é sinal de memória.

**Bons flashcards são perguntas de "por quê", não de definição:**

```text
Por que uma chamada interna a um método @Transactional não abre transação?::Porque o proxy do Spring só intercepta chamadas que passam por ele; this.metodo() chama o objeto real.
Por que COUNT(coluna) pode ser menor que COUNT(*)?::COUNT(coluna) ignora NULL.
```

---

<a id="revisao-3-registro"></a>
## 24 · Registro da revisão 3

| Achado                                                 | Mudança                                                                         | Benefício                                       |
| ------------------------------------------------------ | ------------------------------------------------------------------------------- | ----------------------------------------------- |
| Plano para iniciante a 10 h/semana                     | Seção 00 com diagnóstico obrigatório e rota a 20 h/semana                       | Não gastar semanas no que já domina             |
| Estágio com matrícula trancada                         | Estratégia em duas frentes (júnior/trainee/freelance agora; estágio no retorno) | Candidaturas compatíveis com a situação real    |
| Materiais longe das etapas                             | Blocos 📌 em A1, A2, B1, B2, C1, C2, C3, D1–D4, carreira e trilha avançada      | Cada fase autocontida                           |
| Biblioteca com ~25 itens                               | Mais de 80 recursos organizados por tipo, idioma, custo e fase                  | Cardápio amplo sem virar fila                   |
| Inglês genérico                                        | Seção 20 com metas trimestrais                                                  | Lacuna que afeta todas as fases                 |
| Multi-tenancy adiado                                   | Seção 22 e módulo F7                                                            | Conecta estudo ao projeto real de liderança     |
| Lacunas: Java moderno, design, LGPD, IA, system design | Seção 21                                                                        | Assuntos frequentes em entrevista e no trabalho |
| Recorte geográfico de outro estado                     | Foz do Iguaçu + remoto, backend-br/vagas, Itaipu Parquetec                      | Busca de vagas realista                         |
| Navegação ruim no Obsidian                             | Links `[[#...]]` e seção 23                                                     | Vault utilizável no dia a dia                   |
| Bastidores de geração do documento                     | Seção 15 enxugada                                                               | Menos ruído                                     |

**Limites desta revisão:** os links foram conferidos em novembro de 2026, mas canais, cursos e plataformas mudam de endereço e de condições; preços não foram verificados. Nenhum material pago é necessário para concluir o plano. As observações sobre estágio e LGPD são orientações gerais, não aconselhamento jurídico.

---

**Seu indicador de progresso:** “Consigo fazer, testar, explicar e mudar?”

[↑ Voltar ao sumário](#sumario)
