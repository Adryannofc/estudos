Notas consolidadas de estudo, organizadas seguindo os níveis da [Trilha Java](Trilha%20Java.md).

## Nível 0 — Instrumentos

### Entendendo JDK, JVM e JRE

**JDK** (*Java Development Kit* — Kit de Desenvolvimento Java): contém o conjunto de ferramentas para desenvolvimento/criação de um programa em Java. Exemplos: `javac`, `jar`, `javap`, `jshell`.

**JRE** (*Java Runtime Environment*): JVM + bibliotecas padrão — o mínimo pra rodar um programa Java já compilado, sem as ferramentas de dev.

**JVM** (*Java Virtual Machine*): a camada de intermediação entre a máquina local e o programa, responsável pela alta portabilidade do Java ("compile once, run anywhere"). É a única das três que não é um arquivo parado no disco — só existe como processo, enquanto um programa está rodando.

As três juntas formam a **Plataforma Java**, em camadas aninhadas: `JDK ⊃ JRE ⊃ JVM`.

> **Curiosidade prática — Minecraft**: o Minecraft Java apresenta engasgos e é mais pesado que o Minecraft Bedrock justamente por causa dessa intermediação da JVM (verificação de bytecode, interpretação inicial antes do JIT "esquentar", pausas de coleta de lixo). O Minecraft chegou a ter 3 códigos-fonte distintos (Java, Pocket, Console), o que tornou inviável manter sincronia de features entre os três. A solução foi unificar Pocket + Console (ambos em C++, sem VM) numa única base, batizada de **Bedrock** — unificação que veio com o "Better Together Update" (2017) e deu ao Bedrock o crossplay entre plataformas. A Java Edition segue à parte, restrita a onde uma JVM roda (Windows/Linux/macOS).

O arquivo ```Main.java```(Código fonte escrito pelo desenvolvedor) é compilado por uma ferramenta do JDK, o javac, assim temos o ````Main.class````, que por sua vez é um formato compativel para a JVM executar o programa e assim tempos a a saida.

### Etimologia do nome "Java"

James Gosling — conhecido como o "pai" da linguagem Java — batizou a linguagem originalmente de **Oak** (carvalho), inspirado numa árvore vista da janela do escritório. O nome teve que mudar: "Oak" já era marca registrada de outra empresa (Oak Technologies).

O novo nome, **Java**, é uma referência ao café: vem da **ilha de Java**, na Indonésia, historicamente conhecida pela produção de café — não uma homenagem literal ao hábito pessoal da equipe de tomar café durante o desenvolvimento (essa é a versão popular simplificada; a mais aceita é a referência à ilha/ao café em si). Fonte: [History of Java — Tpoint Tech](https://www.tpointtech.com/history-of-java).


*James Gosling — pai do Java* https://pt.wikipedia.org/wiki/James_Gosling
