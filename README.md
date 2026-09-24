# Entrega 1 — Modelo Conceitual (DER)

### Modelagem de um sistema de gestão de informações para uma organização de pequeno porte

---

## Metadados

- **Nomes dos alunos e RGM:**
  - Victor Hugo dos Santos Maciel — RGM 48037630
  - Guilherme Damasceno dos Santos — RGM 48491683
  - Leonardo Loiola Fernandes — RGM 49639773

- **Curso:** Gestão da Tecnologia da Informação (GTI)
- **Instituição:** Universidade Cidade de São Paulo (UNICID)
- **Projeto:** Sistema de Comandas — Casa do Pastel

---

# 1. Caracterização da Organização

## Nome e natureza da organização

A organização escolhida para o desenvolvimento do projeto é a **Casa do Pastel**, uma lanchonete/pastelaria que realiza atendimento ao público e comercializa produtos alimentícios.

O projeto tem como objetivo desenvolver um modelo conceitual de banco de dados para representar as principais informações utilizadas no funcionamento da organização, considerando produtos, categorias, clientes, funcionários, mesas, comandas, itens consumidos e pagamentos.

O levantamento de requisitos foi realizado com base nas informações obtidas junto a um representante da área de Tecnologia da organização, preservando sua identidade.

## Contexto e porte

A Casa do Pastel possui uma operação voltada ao atendimento de clientes em uma lanchonete/pastelaria.

Entre as atividades relacionadas ao funcionamento da organização estão o cadastro e organização de produtos, atendimento dos clientes, abertura de comandas, registro dos itens consumidos, acompanhamento do preparo dos produtos e realização dos pagamentos.

O sistema proposto foi desenvolvido considerando uma organização de pequeno porte e seus principais processos relacionados ao atendimento e às vendas.

## Problemas e necessidades identificados

Durante o levantamento de requisitos, foram identificadas necessidades relacionadas à organização das informações do processo de atendimento e utilização de comandas.

As principais necessidades identificadas foram:

- Organizar os produtos por categorias;
- Manter informações sobre os produtos comercializados;
- Registrar clientes quando necessário;
- Identificar os funcionários responsáveis pela abertura das comandas;
- Controlar as mesas utilizadas no atendimento;
- Registrar a abertura e o fechamento das comandas;
- Registrar os produtos solicitados em cada comanda;
- Armazenar o preço do produto no momento da venda;
- Acompanhar o status de preparo dos itens;
- Registrar os pagamentos realizados;
- Permitir que uma mesma comanda possua mais de um pagamento, possibilitando a divisão do pagamento entre diferentes formas de pagamento.

## Justificativa da escolha

A Casa do Pastel foi escolhida por apresentar processos de atendimento e venda que possibilitam a aplicação dos conceitos de modelagem de banco de dados estudados na disciplina.

O funcionamento da organização envolve diferentes informações relacionadas entre si, permitindo identificar entidades, atributos, relacionamentos e cardinalidades.

O processo de comandas também possibilita representar situações como vendas realizadas em mesas, vendas realizadas no balcão, clientes identificados ou não identificados e pagamentos divididos.

## Evidências da organização

Para preservar a privacidade das pessoas envolvidas, a identidade do representante entrevistado não é apresentada neste documento.

- **Nome:** Casa do Pastel
- **Endereço:** Rua Monte Serrat, 81 - Tatuapé, São Paulo - SP, 03312-000
- **Telefone/contato:** [PREENCHER, SE AUTORIZADO]
- **Google Maps/site/rede social:** [INSERIR LINK]
- **Evidência da visita/pesquisa de campo:** [INSERIR FOTO OU OUTRA EVIDÊNCIA, SE AUTORIZADA]
- **Entrevista/levantamento de requisitos:** disponível no diretório `01-ENTREVISTA`.

> **Privacidade:** não serão utilizados neste projeto dados pessoais reais de clientes, funcionários ou outras pessoas relacionadas à organização.

---

# 2. Processos de Negócio

## Principais processos mapeados

A partir do levantamento realizado, foram identificados os seguintes processos principais:

### 2.1 Cadastro e organização de categorias

As categorias são utilizadas para agrupar e organizar os produtos comercializados pela organização.

### 2.2 Cadastro de produtos

Os produtos são cadastrados com informações como nome, descrição, preço, situação de atividade e categoria à qual pertencem.

### 2.3 Abertura de comanda

Uma comanda é aberta por um funcionário responsável.

A comanda pode estar relacionada a uma mesa e a um cliente, porém essas informações podem não ser obrigatórias em determinadas situações, como uma venda realizada diretamente no balcão.

### 2.4 Registro dos itens da comanda

Durante o atendimento, os produtos solicitados são registrados na comanda.

Cada item possui informações como quantidade, preço unitário no momento da venda, observação e status de preparo.

### 2.5 Preparação e entrega dos itens

Os itens registrados possuem acompanhamento de seu status de preparo, podendo apresentar os seguintes estados:

- Pendente;
- Pronto;
- Entregue.

### 2.6 Fechamento da comanda

Após o atendimento, a comanda pode ser encerrada, sendo registrada a data e hora de fechamento, seu status e seu valor total.

### 2.7 Registro do pagamento

Os pagamentos são associados às comandas e podem ser realizados por diferentes formas:

- Dinheiro;
- Cartão de crédito;
- Cartão de débito;
- Pix.

Uma comanda pode possuir mais de um pagamento, permitindo a divisão do valor entre diferentes formas de pagamento.

## Fluxogramas

Os fluxogramas complementares representam os principais processos e relacionamentos identificados no sistema.

Os arquivos estão organizados no diretório:

```text
05-FLUXOGRAMAS/
```

Fluxogramas previstos:

- `Fluxograma_Geral.png`
- `Fluxograma_Categoria.png`
- `Fluxograma_Produto.png`
- `Fluxograma_Cliente.png`
- `Fluxograma_Funcionario.png`
- `Fluxograma_Mesa.png`
- `Fluxograma_Comanda.png`
- `Fluxograma_Item_Comanda.png`
- `Fluxograma_Pagamento.png`

---

# 3. Requisitos do Sistema

## 3.1 Requisitos Funcionais

### RF01 — Cadastrar categorias

O sistema deve permitir cadastrar categorias utilizadas para organizar os produtos.

### RF02 — Cadastrar produtos

O sistema deve permitir cadastrar produtos com nome, descrição, preço unitário, situação de atividade e categoria.

### RF03 — Consultar produtos

O sistema deve permitir consultar os produtos cadastrados e suas respectivas categorias.

### RF04 — Cadastrar clientes

O sistema deve permitir cadastrar clientes contendo informações como nome, telefone e CPF.

### RF05 — Cadastrar funcionários

O sistema deve permitir registrar funcionários e suas respectivas informações.

### RF06 — Cadastrar mesas

O sistema deve permitir registrar mesas, sua capacidade e situação atual.

### RF07 — Abrir comandas

O sistema deve permitir que um funcionário responsável abra uma nova comanda.

### RF08 — Associar mesa à comanda

O sistema deve permitir relacionar uma comanda a uma mesa quando o atendimento ocorrer em uma mesa.

### RF09 — Associar cliente à comanda

O sistema deve permitir associar um cliente à comanda quando houver identificação do cliente.

### RF10 — Registrar itens da comanda

O sistema deve permitir adicionar produtos a uma comanda, informando quantidade, preço praticado no momento da venda e observações.

### RF11 — Controlar o status de preparo

O sistema deve permitir registrar o status de preparo dos itens da comanda.

### RF12 — Registrar o fechamento da comanda

O sistema deve permitir registrar a data e hora de fechamento, o status e o valor total da comanda.

### RF13 — Registrar pagamentos

O sistema deve permitir registrar pagamentos relacionados às comandas.

### RF14 — Permitir múltiplos pagamentos

O sistema deve permitir registrar mais de um pagamento para uma mesma comanda, possibilitando a divisão do pagamento.

---

## 3.2 Requisitos Não Funcionais

### RNF01 — Integridade dos dados

O banco de dados deve utilizar chaves primárias e estrangeiras para manter a integridade dos relacionamentos.

### RNF02 — Organização

As informações devem ser estruturadas em entidades relacionadas, evitando a concentração de informações diferentes em uma única tabela.

### RNF03 — Consistência

Os dados registrados devem seguir os tipos e formatos definidos no modelo de dados.

### RNF04 — Segurança

Informações pessoais, como CPF e telefone, devem ser tratadas de maneira adequada, evitando exposição desnecessária.

### RNF05 — Usabilidade

A estrutura do sistema deve permitir que as informações relacionadas ao atendimento e às comandas sejam registradas de maneira organizada.

### RNF06 — Escalabilidade

O modelo deve permitir futuras extensões do sistema, como inclusão de novas formas de pagamento, novos produtos, categorias ou outros processos relacionados ao atendimento.

---

# 4. Regras de Negócio

## Regras operacionais

### RN01 — Categoria e produto

Cada produto deve estar associado a uma categoria.

### RN02 — Produtos

Um produto possui nome, descrição, preço unitário e indicação de estar ativo ou não.

### RN03 — Cliente

Uma comanda pode possuir um cliente associado, porém o cliente pode não ser informado.

### RN04 — Mesa

Uma comanda pode estar associada a uma mesa, mas essa associação pode não existir em situações de atendimento no balcão.

### RN05 — Funcionário

Toda comanda deve possuir um funcionário responsável pela abertura.

### RN06 — Itens da comanda

Uma comanda pode possuir vários itens.

### RN07 — Produto no item da comanda

Cada item da comanda deve estar relacionado a um produto.

### RN08 — Preço no momento da venda

O preço unitário praticado no momento da venda deve ser armazenado no item da comanda, permitindo preservar o valor utilizado naquela venda mesmo que o preço atual do produto seja alterado posteriormente.

### RN09 — Status de preparo

Cada item da comanda deve possuir um status de preparo, podendo estar como:

- Pendente;
- Pronto;
- Entregue.

### RN10 — Pagamento

Uma comanda pode possuir um ou mais pagamentos.

### RN11 — Formas de pagamento

O sistema deve permitir as seguintes formas de pagamento:

- Dinheiro;
- Cartão de crédito;
- Cartão de débito;
- Pix.

### RN12 — Status da comanda

Uma comanda pode possuir os seguintes status:

- Aberta;
- Paga;
- Cancelada.

## Restrições organizacionais

O modelo considera as seguintes situações específicas:

- Nem toda venda precisa estar vinculada a uma mesa;
- Nem toda comanda precisa identificar um cliente;
- A abertura da comanda deve identificar o funcionário responsável;
- Uma comanda pode possuir diversos itens;
- Uma comanda pode possuir múltiplos pagamentos;
- O preço do produto deve ser preservado no momento em que o item é registrado.

Essas regras são importantes para que o banco de dados represente o funcionamento do sistema de comandas.

---

# 5. Dicionário de Dados Conceitual (Preliminar)

O dicionário de dados foi elaborado a partir das entidades, atributos, chaves e relacionamentos identificados durante o levantamento e a modelagem do sistema.

## CATEGORIA

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_categoria` | Identificador único da categoria | Chave primária |
| `nome` | Nome da categoria | Identifica a categoria |

## PRODUTO

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_produto` | Identificador único do produto | Chave primária |
| `nome` | Nome do produto | Identifica o produto |
| `descricao` | Descrição do produto | Informação complementar |
| `preco_unitario` | Preço atual do produto | Representa o preço praticado |
| `ativo` | Indica se o produto está disponível | Permite controlar produtos ativos/inativos |
| `id_categoria` | Identificador da categoria do produto | Chave estrangeira para CATEGORIA |

## CLIENTE

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_cliente` | Identificador único do cliente | Chave primária |
| `nome` | Nome do cliente | Identificação do cliente |
| `telefone` | Telefone do cliente | Informação de contato |
| `cpf` | CPF do cliente | Informação cadastral |

## FUNCIONARIO

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_funcionario` | Identificador único do funcionário | Chave primária |
| `nome` | Nome do funcionário | Identificação do funcionário |
| `cargo` | Cargo exercido | Informação funcional |
| `cpf` | CPF do funcionário | Informação cadastral |

## MESA

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_mesa` | Identificador único da mesa | Chave primária |
| `numero_mesa` | Número utilizado para identificar a mesa | Identificação da mesa |
| `capacidade` | Quantidade de pessoas suportada | Representa a capacidade da mesa |
| `status` | Situação atual da mesa | Livre, Ocupada ou Reservada |

## COMANDA

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_comanda` | Identificador único da comanda | Chave primária |
| `numero_comanda` | Número utilizado para identificar a comanda | Identificação da comanda |
| `data_hora_abertura` | Data e hora da abertura | Registra o início do atendimento |
| `data_hora_fechamento` | Data e hora do fechamento | Registrada quando a comanda for encerrada |
| `status_comanda` | Situação da comanda | Aberta, Paga ou Cancelada |
| `valor_total` | Valor total da comanda | Representa o total do atendimento |
| `id_mesa` | Identificador da mesa | Pode ser nulo em atendimento no balcão |
| `id_cliente` | Identificador do cliente | Pode ser nulo quando o cliente não for identificado |
| `id_funcionario_abertura` | Funcionário responsável pela abertura | Chave estrangeira e informação obrigatória |

## ITEM_COMANDA

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_item_comanda` | Identificador único do item | Chave primária |
| `quantidade` | Quantidade do produto solicitada | Representa a quantidade solicitada |
| `preco_unitario_momento` | Preço do produto no momento da venda | Preserva o valor utilizado na venda |
| `observacao` | Observação relacionada ao item | Pode registrar solicitações específicas |
| `status_preparo` | Situação do preparo do item | Pendente, Pronto ou Entregue |
| `id_comanda` | Identificador da comanda | Chave estrangeira |
| `id_produto` | Identificador do produto | Chave estrangeira |

## PAGAMENTO

| Atributo | Descrição | Regra de negócio associada |
|---|---|---|
| `id_pagamento` | Identificador único do pagamento | Chave primária |
| `forma_pagamento` | Forma utilizada para o pagamento | Dinheiro, Cartão de Crédito, Cartão de Débito ou Pix |
| `valor_pago` | Valor registrado no pagamento | Representa o valor pago |
| `data_hora_pagamento` | Data e hora do pagamento | Registra quando o pagamento ocorreu |
| `id_comanda` | Identificador da comanda | Chave estrangeira |

> **Atenção à privacidade:** exemplos de dados pessoais devem ser fictícios. Não devem ser utilizados dados reais de clientes, funcionários ou outras pessoas relacionadas à organização.

---

# 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

## Entidades reconhecidas

Foram identificadas oito entidades principais:

1. **CATEGORIA** — representa as categorias utilizadas para organizar os produtos.
2. **PRODUTO** — representa os produtos comercializados.
3. **CLIENTE** — representa os clientes identificados no atendimento.
4. **FUNCIONARIO** — representa os funcionários envolvidos na operação.
5. **MESA** — representa as mesas disponíveis para atendimento.
6. **COMANDA** — representa o registro principal do atendimento/venda.
7. **ITEM_COMANDA** — representa cada produto incluído em uma comanda.
8. **PAGAMENTO** — representa os pagamentos realizados para uma comanda.

## Atributos e classificações

Cada entidade possui atributos próprios para representar suas informações.

As chaves primárias identificam exclusivamente cada registro, enquanto as chaves estrangeiras representam os relacionamentos entre as entidades.

### Principais chaves primárias

- `id_categoria`
- `id_produto`
- `id_cliente`
- `id_funcionario`
- `id_mesa`
- `id_comanda`
- `id_item_comanda`
- `id_pagamento`

### Principais chaves estrangeiras

- `id_categoria` em PRODUTO;
- `id_mesa` em COMANDA;
- `id_cliente` em COMANDA;
- `id_funcionario_abertura` em COMANDA;
- `id_comanda` em ITEM_COMANDA;
- `id_produto` em ITEM_COMANDA;
- `id_comanda` em PAGAMENTO.

## Relacionamentos pertinentes

| Relacionamento | Cardinalidade |
|---|---|
| CATEGORIA → PRODUTO | 1:N |
| MESA → COMANDA | 0/1:N |
| CLIENTE → COMANDA | 0/1:N |
| FUNCIONARIO → COMANDA | 1:N |
| COMANDA → ITEM_COMANDA | 1:N |
| PRODUTO → ITEM_COMANDA | 1:N |
| COMANDA → PAGAMENTO | 1:N |

## Restrições e políticas organizacionais aplicadas ao modelo

O modelo considera principalmente:

- Cliente opcional na comanda;
- Mesa opcional na comanda;
- Funcionário responsável pela abertura da comanda;
- Possibilidade de vários itens em uma comanda;
- Possibilidade de vários pagamentos para uma comanda;
- Controle do preço do produto no momento da venda;
- Controle do status de preparo dos itens;
- Controle do status da comanda.

---

# 7. Diagrama Entidade-Relacionamento (DER)

O **Diagrama Entidade-Relacionamento (DER)** representa graficamente as oito entidades do sistema, seus atributos, relacionamentos e respectivas cardinalidades.

O DER será disponibilizado no repositório GitHub em formato de imagem.

## Entidades representadas

- CATEGORIA
- PRODUTO
- CLIENTE
- FUNCIONARIO
- MESA
- COMANDA
- ITEM_COMANDA
- PAGAMENTO

## Cardinalidades representadas

- CATEGORIA **1:N** PRODUTO;
- MESA **0/1:N** COMANDA;
- CLIENTE **0/1:N** COMANDA;
- FUNCIONARIO **1:N** COMANDA;
- COMANDA **1:N** ITEM_COMANDA;
- PRODUTO **1:N** ITEM_COMANDA;
- COMANDA **1:N** PAGAMENTO.

O modelo foi estruturado de forma a permitir futuras ampliações do sistema, possibilitando a inclusão de novos produtos, categorias, clientes, formas de pagamento e outras funcionalidades relacionadas ao atendimento.

O arquivo do DER está localizado no diretório:

```text
02-DER/
```

---

# 8. Justificativa Técnica

A modelagem foi construída considerando os principais processos identificados no levantamento de requisitos da Casa do Pastel.

A entidade **CATEGORIA** foi criada para organizar os produtos em grupos. Dessa forma, um produto pode estar associado a uma categoria sem que as informações da categoria precisem ser repetidas em todos os registros de produtos.

A entidade **PRODUTO** representa os itens comercializados pela organização e possui informações relacionadas ao nome, descrição, preço e situação de atividade.

A entidade **COMANDA** foi definida como uma das entidades centrais do modelo porque representa o atendimento realizado ao cliente. Ela pode estar relacionada a uma mesa e a um cliente, mas essas associações não são obrigatórias em todas as situações.

A entidade **FUNCIONARIO** foi relacionada à COMANDA porque é necessário identificar o funcionário responsável pela abertura do atendimento.

A entidade **ITEM_COMANDA** foi criada para representar os produtos efetivamente incluídos em cada comanda. Essa separação permite que uma mesma comanda possua diversos produtos e que um mesmo produto possa aparecer em diferentes comandas.

O atributo `preco_unitario_momento` foi incluído em ITEM_COMANDA para preservar o preço praticado no momento da venda. Dessa forma, uma alteração futura no preço do produto não modifica o histórico de uma venda já realizada.

A entidade **PAGAMENTO** foi separada da COMANDA porque uma única comanda pode possuir mais de um pagamento. Essa estrutura permite representar situações em que o valor total é dividido entre diferentes formas de pagamento.

As cardinalidades foram definidas de acordo com as regras identificadas no levantamento, principalmente nos casos em que mesa ou cliente podem não ser informados.

Dessa forma, o modelo busca representar os processos observados na organização, mantendo as informações organizadas em entidades relacionadas e permitindo futuras evoluções do sistema.

---

# 9. Uso de Inteligência Artificial

Durante o desenvolvimento do projeto foi utilizada a ferramenta **ChatGPT**, da OpenAI, como ferramenta de apoio em diferentes etapas.

A IA foi utilizada como apoio à organização das informações, elaboração dos documentos, revisão textual e estruturação dos materiais do projeto.

As informações relacionadas ao funcionamento da organização foram baseadas no levantamento realizado pelo grupo e nos documentos utilizados no projeto.

| Item | Registro |
|---|---|
| **Ferramenta e etapa** | ChatGPT — organização do README, requisitos, regras de negócio, dicionário de dados, SQL e revisão da documentação. |
| **Motivação** | Utilizar a IA como apoio para organizar as informações levantadas e estruturar os documentos de forma clara e padronizada. |
| **Prompt(s) utilizados** | Foram utilizados prompts solicitando a organização das entidades, atributos, relacionamentos, requisitos, regras de negócio, dicionário de dados e documentação do projeto de banco de dados da Casa do Pastel. |
| **Resposta recebida** | A IA auxiliou na estruturação dos documentos, na descrição das entidades e relacionamentos e na organização dos requisitos e regras de negócio. |
| **Fontes consultadas e verificadas** | As informações sobre a organização e seus processos foram confrontadas com o levantamento de requisitos, entrevista e materiais produzidos pelo grupo. |
| **Trechos rejeitados ou corrigidos** | Informações que não correspondiam ao levantamento realizado foram ajustadas ou não utilizadas. Dados pessoais reais também não foram inseridos nos exemplos. |
| **Justificativa da escolha final** | As decisões finais de modelagem foram realizadas considerando os requisitos levantados para a organização e a análise do grupo. |
| **Reflexão crítica** | A IA foi utilizada como ferramenta de apoio e não como substituta do levantamento de requisitos. As respostas precisaram ser analisadas e adaptadas ao contexto específico da organização, pois respostas genéricas podem não representar corretamente processos reais. |

---

# Estrutura do Repositório

A organização dos arquivos do projeto no GitHub será realizada da seguinte forma:

```text
casa-do-pastel-banco-de-dados/
│
├── README.md
│
├── 01-ENTREVISTA/
│   └── Entrevista_Casa_do_Pastel.pdf
│
├── 02-DER/
│   └── DER_Casa_do_Pastel.png
│
├── 03-DICIONARIO-DE-DADOS/
│   ├── Dicionario_de_Dados.xlsx
│   └── Dicionario_de_Dados.pdf
│
├── 04-SQL/
│   └── banco_pastelaria.sql
│
└── 05-FLUXOGRAMAS/
    ├── Fluxograma_Geral.png
    ├── Fluxograma_Categoria.png
    ├── Fluxograma_Produto.png
    ├── Fluxograma_Cliente.png
    ├── Fluxograma_Funcionario.png
    ├── Fluxograma_Mesa.png
    ├── Fluxograma_Comanda.png
    ├── Fluxograma_Item_Comanda.png
    └── Fluxograma_Pagamento.png
```

---

## Considerações Finais

O projeto apresenta a modelagem conceitual de um sistema de gestão de informações para a Casa do Pastel, com foco no processo de comandas.

O modelo contempla as principais entidades identificadas no levantamento, seus atributos, relacionamentos, cardinalidades, requisitos e regras de negócio.

A estrutura desenvolvida servirá como base para as próximas etapas do projeto, incluindo a implementação do banco de dados e utilização do modelo lógico e físico.
